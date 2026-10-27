`timescale 1ns/1ps
// Camera-to-FCLK frame crossing. Two complete HWC Pool frames share one
// official independent-clock BRAM. If both banks are occupied, the camera side
// drops a whole frame; it never drops individual samples within a frame.
module pool_frame_cdc (
    input  wire                 cam_clk,
    input  wire                 cam_rst_n,
    input  wire                 pool_valid,
    input  wire [15:0]          pool_data,
    input  wire [4:0]           pool_ch,

    input  wire                 gemm_clk,
    input  wire                 gemm_rst_n,
    output reg                  pool_wr_en,
    output reg  [12:0]          pool_wr_addr,
    output wire [15:0]          pool_wr_data,
    output reg                  pool_wr_done,
    input  wire                 pool_wr_ready,

    output wire                 dst_busy,
    output reg                  frame_dropped
);

    reg src_wr_bank;
    reg src_in_frame;
    reg src_accept_frame;
    reg [7:0] src_pixel_ptr;
    reg src_full0;
    reg src_full1;
    reg src_done_toggle0;
    reg src_done_toggle1;
    reg src_free_seen0;
    reg src_free_seen1;
    reg [1:0] src_free_sync0;
    reg [1:0] src_free_sync1;

    reg cons_rd_bank;
    reg cons_free_toggle0;
    reg cons_free_toggle1;
    reg cons_done_seen0;
    reg cons_done_seen1;
    reg [1:0] cons_done_sync0;
    reg [1:0] cons_done_sync1;
    reg rd_active;
    reg [12:0] issue_count;
    reg [12:0] received_count;

    wire src_wr_full = src_wr_bank ? src_full1 : src_full0;
    wire src_frame_admit = src_in_frame ? src_accept_frame : !src_wr_full;
    wire src_write_fire = pool_valid && src_frame_admit;
    wire src_frame_last = pool_valid && (src_pixel_ptr == 8'd143) &&
                          (pool_ch == 5'd29);

    wire [12:0] src_pixel_base = {5'd0, src_pixel_ptr} * 13'd30;
    wire [12:0] src_word_addr = src_pixel_base + {8'd0, pool_ch};
    wire [13:0] src_physical_addr = src_wr_bank ?
        (14'd4320 + {1'b0, src_word_addr}) : {1'b0, src_word_addr};

    wire dst_output_advance = !pool_wr_en || pool_wr_ready;
    wire dst_read_issue = rd_active && dst_output_advance &&
                          (issue_count < 13'd4320);
    wire [13:0] dst_physical_addr = cons_rd_bank ?
        (14'd4320 + {1'b0, issue_count}) : {1'b0, issue_count};
    wire dst_write_fire = pool_wr_en && pool_wr_ready;
    wire dst_selected_done = cons_rd_bank ?
        (cons_done_sync1[1] != cons_done_seen1) :
        (cons_done_sync0[1] != cons_done_seen0);

    assign dst_busy = rd_active;

    gemm_pool_cdc_bram storage (
        .clka(cam_clk), .ena(src_write_fire), .wea(src_write_fire),
        .addra(src_physical_addr), .dina(pool_data),
        .clkb(gemm_clk), .enb(dst_read_issue),
        .addrb(dst_physical_addr), .doutb(pool_wr_data)
    );

    // Source-to-destination completion toggles and return-path free toggles
    // cross independently. Data is read only after the complete frame toggle.
    always @(posedge cam_clk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            src_free_sync0 <= 0;
            src_free_sync1 <= 0;
        end else begin
            src_free_sync0 <= {src_free_sync0[0], cons_free_toggle0};
            src_free_sync1 <= {src_free_sync1[0], cons_free_toggle1};
        end
    end

    always @(posedge gemm_clk or negedge gemm_rst_n) begin
        if (!gemm_rst_n) begin
            cons_done_sync0 <= 0;
            cons_done_sync1 <= 0;
        end else begin
            cons_done_sync0 <= {cons_done_sync0[0], src_done_toggle0};
            cons_done_sync1 <= {cons_done_sync1[0], src_done_toggle1};
        end
    end

    always @(posedge cam_clk or negedge cam_rst_n) begin
        if (!cam_rst_n) begin
            src_wr_bank <= 1'b0;
            src_in_frame <= 1'b0;
            src_accept_frame <= 1'b0;
            src_pixel_ptr <= 0;
            src_full0 <= 1'b0;
            src_full1 <= 1'b0;
            src_done_toggle0 <= 1'b0;
            src_done_toggle1 <= 1'b0;
            src_free_seen0 <= 1'b0;
            src_free_seen1 <= 1'b0;
            frame_dropped <= 1'b0;
        end else begin
            frame_dropped <= 1'b0;

            if (src_free_sync0[1] != src_free_seen0) begin
                src_free_seen0 <= src_free_sync0[1];
                src_full0 <= 1'b0;
            end
            if (src_free_sync1[1] != src_free_seen1) begin
                src_free_seen1 <= src_free_sync1[1];
                src_full1 <= 1'b0;
            end

            if (pool_valid) begin
                if (!src_in_frame) begin
                    src_in_frame <= 1'b1;
                    src_accept_frame <= !src_wr_full;
                end

                if (pool_ch == 5'd29) begin
                    src_pixel_ptr <= src_pixel_ptr + 1'b1;
                end

                if (src_frame_last) begin
                    src_in_frame <= 1'b0;
                    src_pixel_ptr <= 0;
                    if (src_frame_admit) begin
                        if (src_wr_bank) begin
                            src_full1 <= 1'b1;
                            src_done_toggle1 <= ~src_done_toggle1;
                        end else begin
                            src_full0 <= 1'b1;
                            src_done_toggle0 <= ~src_done_toggle0;
                        end
                        src_wr_bank <= ~src_wr_bank;
                    end else begin
                        frame_dropped <= 1'b1;
                    end
                end
            end
        end
    end

    always @(posedge gemm_clk or negedge gemm_rst_n) begin
        if (!gemm_rst_n) begin
            cons_rd_bank <= 1'b0;
            cons_free_toggle0 <= 1'b0;
            cons_free_toggle1 <= 1'b0;
            cons_done_seen0 <= 1'b0;
            cons_done_seen1 <= 1'b0;
            rd_active <= 1'b0;
            issue_count <= 0;
            received_count <= 0;
            pool_wr_en <= 1'b0;
            pool_wr_addr <= 0;
            pool_wr_done <= 1'b0;
        end else begin
            pool_wr_done <= 1'b0;

            if (!rd_active && dst_selected_done) begin
                rd_active <= 1'b1;
                issue_count <= 0;
                received_count <= 0;
                pool_wr_en <= 1'b0;
                if (cons_rd_bank)
                    cons_done_seen1 <= cons_done_sync1[1];
                else
                    cons_done_seen0 <= cons_done_sync0[1];
            end else if (rd_active) begin
                if (dst_read_issue) begin
                    pool_wr_en <= 1'b1;
                    pool_wr_addr <= issue_count;
                    issue_count <= issue_count + 1'b1;
                end else if (dst_write_fire) begin
                    pool_wr_en <= 1'b0;
                end

                if (dst_write_fire) begin
                    received_count <= received_count + 1'b1;
                    if (received_count == 13'd4319) begin
                        rd_active <= 1'b0;
                        pool_wr_en <= 1'b0;
                        pool_wr_done <= 1'b1;
                        if (cons_rd_bank)
                            cons_free_toggle1 <= ~cons_free_toggle1;
                        else
                            cons_free_toggle0 <= ~cons_free_toggle0;
                        cons_rd_bank <= ~cons_rd_bank;
                    end
                end
            end
        end
    end

endmodule
