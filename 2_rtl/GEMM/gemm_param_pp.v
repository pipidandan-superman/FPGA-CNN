`timescale 1ns/1ps
// Two-bank parameter tile buffer. Both banks share one official Vivado
// Block Memory Generator IP, with bank selects occupying disjoint addresses.
// Port B uses synchronous-read prefetch so data remains stable under backpressure.
module gemm_param_pp #(
    parameter DATA_W = 64,
    parameter TILE_WORDS = 160,
    parameter PTR_W = 8
)(
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 stream_start,

    input  wire                 dma_we,
    output wire                 dma_ready,
    input  wire [DATA_W-1:0]    dma_data,
    input  wire                 dma_last,

    output wire                 r_valid,
    input  wire                 r_ready,
    output wire [DATA_W-1:0]    r_data,

    output wire [1:0]           debug_bank_full
);

    localparam ADDR_W = PTR_W + 1;

    reg wr_bank;
    reg rd_bank;
    reg [PTR_W-1:0] wr_ptr;
    reg [PTR_W-1:0] rd_ptr;
    reg [PTR_W-1:0] last_ptr0;
    reg [PTR_W-1:0] last_ptr1;
    reg full0;
    reg full1;
    reg out_valid;
    reg out_last;
    reg fetch_done;

    wire wr_full = wr_bank ? full1 : full0;
    wire rd_full = rd_bank ? full1 : full0;
    wire [PTR_W-1:0] rd_last_ptr = rd_bank ? last_ptr1 : last_ptr0;
    wire read_accept = out_valid && r_ready;
    wire bram_read = rd_full && !fetch_done && (!out_valid || r_ready);

    wire [ADDR_W-1:0] write_addr = wr_bank ?
        (TILE_WORDS + {{1{1'b0}}, wr_ptr}) : {{1{1'b0}}, wr_ptr};
    wire [ADDR_W-1:0] read_addr = rd_bank ?
        (TILE_WORDS + {{1{1'b0}}, rd_ptr}) : {{1{1'b0}}, rd_ptr};
    assign dma_ready = !wr_full;
    assign r_valid = out_valid;
    assign debug_bank_full = {full1, full0};

    gemm_param_bram param_bram (
        .clka(clk), .ena(1'b1), .wea(dma_we && dma_ready),
        .addra(write_addr), .dina(dma_data),
        .clkb(clk), .enb(bram_read),
        .addrb(read_addr), .doutb(r_data)
    );

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_bank <= 1'b0;
            rd_bank <= 1'b0;
            wr_ptr <= 0;
            rd_ptr <= 0;
            last_ptr0 <= 0;
            last_ptr1 <= 0;
            full0 <= 1'b0;
            full1 <= 1'b0;
            out_valid <= 1'b0;
            out_last <= 1'b0;
            fetch_done <= 1'b0;
        end else if (stream_start) begin
            wr_bank <= 1'b0;
            rd_bank <= 1'b0;
            wr_ptr <= 0;
            rd_ptr <= 0;
            last_ptr0 <= 0;
            last_ptr1 <= 0;
            full0 <= 1'b0;
            full1 <= 1'b0;
            out_valid <= 1'b0;
            out_last <= 1'b0;
            fetch_done <= 1'b0;
        end else begin
            if (dma_we && dma_ready) begin
                if (dma_last || (wr_ptr == TILE_WORDS - 1)) begin
                    if (wr_bank) begin
                        full1 <= 1'b1;
                        last_ptr1 <= wr_ptr;
                    end else begin
                        full0 <= 1'b1;
                        last_ptr0 <= wr_ptr;
                    end
                    wr_bank <= ~wr_bank;
                    wr_ptr <= 0;
                end else begin
                    wr_ptr <= wr_ptr + 1'b1;
                end
            end

            if (bram_read) begin
                out_valid <= 1'b1;
                out_last <= (rd_ptr == rd_last_ptr);
                if (rd_ptr == rd_last_ptr) begin
                    fetch_done <= 1'b1;
                end else begin
                    rd_ptr <= rd_ptr + 1'b1;
                end
            end else if (read_accept) begin
                out_valid <= 1'b0;
            end

            if (read_accept && out_last) begin
                if (rd_bank)
                    full1 <= 1'b0;
                else
                    full0 <= 1'b0;
                rd_bank <= ~rd_bank;
                rd_ptr <= 0;
                fetch_done <= 1'b0;
                out_valid <= 1'b0;
                out_last <= 1'b0;
            end
        end
    end

endmodule
