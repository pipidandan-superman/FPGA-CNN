`timescale 1ns/1ps
// Candidate replacement for the deployed Conv engine. The existing input
// frame BRAM and parameter ROMs all have one-cycle synchronous reads.
module cnn_conv_5x5_layer #(
    parameter IMG_W = 28,
    parameter IMG_H = 28,
    parameter CH_OUT = 30
)(
    input  wire         clk,
    input  wire         rst_n,
    input  wire         frame_start,
    output reg          frame_done,
    output wire         ram_en,
    output wire [9:0]   ram_addr,
    input  wire         ram_data,
    output wire [4:0]   rom_addr,
    input  wire [199:0] rom_data,
    input  wire signed [15:0] bias_data,
    output wire [4:0]   bias_addr,
    output reg          out_valid,
    output reg  [4:0]   out_ch,
    output reg  [15:0]  out_data
);
    localparam OUT_W = IMG_W - 4;
    localparam OUT_H = IMG_H - 4;
    localparam S_IDLE = 2'd0;
    localparam S_READ = 2'd1;
    localparam S_COMPUTE = 2'd2;

    reg [1:0] state;
    reg [4:0] out_x;
    reg [4:0] out_y;
    reg [2:0] req_x;
    reg [2:0] req_y;
    reg request_done;
    reg read_valid;
    reg [4:0] capture_count;
    reg [24:0] window_2d;
    reg [4:0] ch_cnt;

    assign ram_en = (state == S_READ) && !request_done;
    assign ram_addr = (out_y + req_y) * IMG_W + out_x + req_x;

    // Channel zero is available throughout S_READ. During S_COMPUTE, request
    // the following channel so ROM data aligns with the registered out_ch.
    wire [4:0] param_addr = (state == S_COMPUTE && ch_cnt != CH_OUT - 1) ?
                            ch_cnt + 1'b1 : ch_cnt;
    assign rom_addr = param_addr;
    assign bias_addr = param_addr;

    wire signed [7:0] weight [0:24];
    wire signed [7:0] mult_out [0:24];
    genvar i;
    generate
        for (i = 0; i < 25; i = i + 1) begin : MAC_ARRAY
            assign weight[i] = rom_data[i*8 +: 8];
            assign mult_out[i] = window_2d[i] ? weight[i] : 8'sd0;
        end
    endgenerate

    reg signed [15:0] sum_tree;
    integer j;
    always @(*) begin
        sum_tree = 0;
        for (j = 0; j < 25; j = j + 1)
            sum_tree = sum_tree + mult_out[j];
    end

    wire signed [16:0] sum_with_bias =
        {sum_tree[15], sum_tree} + {bias_data[15], bias_data};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
            out_x <= 0;
            out_y <= 0;
            req_x <= 0;
            req_y <= 0;
            request_done <= 1'b0;
            read_valid <= 1'b0;
            capture_count <= 0;
            window_2d <= 0;
            ch_cnt <= 0;
            frame_done <= 1'b0;
            out_valid <= 1'b0;
            out_ch <= 0;
            out_data <= 0;
        end else begin
            frame_done <= 1'b0;
            out_valid <= 1'b0;
            read_valid <= ram_en;

            case (state)
                S_IDLE: begin
                    if (frame_start) begin
                        out_x <= 0;
                        out_y <= 0;
                        req_x <= 0;
                        req_y <= 0;
                        request_done <= 1'b0;
                        capture_count <= 0;
                        ch_cnt <= 0;
                        state <= S_READ;
                    end
                end

                S_READ: begin
                    if (ram_en) begin
                        if (req_x == 4) begin
                            req_x <= 0;
                            if (req_y == 4) begin
                                request_done <= 1'b1;
                            end else begin
                                req_y <= req_y + 1'b1;
                            end
                        end else begin
                            req_x <= req_x + 1'b1;
                        end
                    end

                    if (read_valid) begin
                        window_2d[capture_count] <= ram_data;
                        if (capture_count == 24) begin
                            capture_count <= 0;
                            req_x <= 0;
                            req_y <= 0;
                            request_done <= 1'b0;
                            ch_cnt <= 0;
                            state <= S_COMPUTE;
                        end else begin
                            capture_count <= capture_count + 1'b1;
                        end
                    end
                end

                S_COMPUTE: begin
                    out_valid <= 1'b1;
                    out_ch <= ch_cnt;
                    out_data <= sum_with_bias[16] ? 16'd0 : sum_with_bias[15:0];
                    if (ch_cnt == CH_OUT - 1) begin
                        ch_cnt <= 0;
                        if (out_x == OUT_W - 1 && out_y == OUT_H - 1) begin
                            frame_done <= 1'b1;
                            state <= S_IDLE;
                        end else begin
                            if (out_x == OUT_W - 1) begin
                                out_x <= 0;
                                out_y <= out_y + 1'b1;
                            end else begin
                                out_x <= out_x + 1'b1;
                            end
                            state <= S_READ;
                        end
                    end else begin
                        ch_cnt <= ch_cnt + 1'b1;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end
endmodule
