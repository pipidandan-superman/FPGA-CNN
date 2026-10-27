`timescale 1ns/1ps
// Frame-level ping-pong buffer using official Vivado Block Memory Generator
// IP. Bank selects map to disjoint addresses in one true-dual-port BRAM.
// Port B has one-cycle synchronous read latency.
module gemm_frame_pp #(
    parameter DATA_W = 16,
    parameter DEPTH = 4320,
    parameter ADDR_W = 13
)(
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 flush,

    input  wire                 wr_en,
    input  wire [ADDR_W-1:0]    wr_addr,
    input  wire [DATA_W-1:0]    wr_data,
    input  wire                 wr_done,
    output wire                 wr_ready,

    input  wire                 rd_en,
    input  wire [ADDR_W-1:0]    rd_addr,
    output wire [DATA_W-1:0]    rd_data,
    output wire                 rd_valid,
    input  wire                 rd_done,

    output wire [1:0]           debug_bank_full
);

    localparam MEM_ADDR_W = ADDR_W + 1;

    reg wr_bank;
    reg rd_bank;
    reg full0;
    reg full1;

    wire wr_full = wr_bank ? full1 : full0;
    wire rd_full = rd_bank ? full1 : full0;
    wire write_fire = wr_en && wr_ready;
    wire read_fire = rd_en && rd_valid;

    wire [MEM_ADDR_W-1:0] write_addr =
        wr_bank ? (DEPTH + wr_addr) : {{1'b0}, wr_addr};
    wire [MEM_ADDR_W-1:0] read_addr =
        rd_bank ? (DEPTH + rd_addr) : {{1'b0}, rd_addr};
    assign wr_ready = !wr_full;
    assign rd_valid = rd_full;
    assign debug_bank_full = {full1, full0};

    generate
        if (DEPTH == 4320 && DATA_W == 16) begin : GEN_POOL_BRAM
            gemm_pool_bram storage (
                .clka(clk), .ena(1'b1), .wea(write_fire),
                .addra(write_addr), .dina(wr_data),
                .clkb(clk), .enb(read_fire),
                .addrb(read_addr), .doutb(rd_data)
            );
        end else if (DEPTH == 128 && DATA_W == 16) begin : GEN_FC1_BRAM
            gemm_fc1_bram storage (
                .clka(clk), .ena(1'b1), .wea(write_fire),
                .addra(write_addr[7:0]), .dina(wr_data),
                .clkb(clk), .enb(read_fire),
                .addrb(read_addr[7:0]), .doutb(rd_data)
            );
        end else if (DEPTH == 16 && DATA_W == 40) begin : GEN_FC2_BRAM
            gemm_fc2_bram storage (
                .clka(clk), .ena(1'b1), .wea(write_fire),
                .addra(write_addr), .dina(wr_data),
                .clkb(clk), .enb(read_fire),
                .addrb(read_addr), .doutb(rd_data)
            );
        end else begin : GEN_UNSUPPORTED_CONFIG
            initial begin
                $display("ERROR unsupported official BRAM configuration DEPTH=%0d DATA_W=%0d",
                         DEPTH, DATA_W);
                $fatal(1);
            end
        end
    endgenerate

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_bank <= 1'b0;
            rd_bank <= 1'b0;
            full0 <= 1'b0;
            full1 <= 1'b0;
        end else if (flush) begin
            wr_bank <= 1'b0;
            rd_bank <= 1'b0;
            full0 <= 1'b0;
            full1 <= 1'b0;
        end else begin
            if (wr_done && wr_ready) begin
                if (wr_bank)
                    full1 <= 1'b1;
                else
                    full0 <= 1'b1;
                wr_bank <= ~wr_bank;
            end

            if (rd_done && rd_valid) begin
                if (rd_bank)
                    full1 <= 1'b0;
                else
                    full0 <= 1'b0;
                rd_bank <= ~rd_bank;
            end
        end
    end

endmodule
