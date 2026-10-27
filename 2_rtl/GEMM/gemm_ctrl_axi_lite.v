`timescale 1ns/1ps
// Small AXI4-Lite control/status block for the autonomous GEMM pipeline.
// Normal frames start from pool_wr_done; the PS only services DMA requests.
module gemm_ctrl_axi_lite (
    input  wire                 s_axi_aclk,
    input  wire                 s_axi_aresetn,

    input  wire [5:0]           s_axi_awaddr,
    input  wire [2:0]           s_axi_awprot,
    input  wire                 s_axi_awvalid,
    output wire                 s_axi_awready,
    input  wire [31:0]          s_axi_wdata,
    input  wire [3:0]           s_axi_wstrb,
    input  wire                 s_axi_wvalid,
    output wire                 s_axi_wready,
    output wire [1:0]           s_axi_bresp,
    output reg                  s_axi_bvalid,
    input  wire                 s_axi_bready,

    input  wire [5:0]           s_axi_araddr,
    input  wire [2:0]           s_axi_arprot,
    input  wire                 s_axi_arvalid,
    output wire                 s_axi_arready,
    output reg  [31:0]          s_axi_rdata,
    output wire [1:0]           s_axi_rresp,
    output reg                  s_axi_rvalid,
    input  wire                 s_axi_rready,

    input  wire                 auto_start,
    output wire                 gemm_start,
    output wire                 gemm_flush,
    input  wire                 gemm_busy,
    input  wire                 gemm_done,
    input  wire                 gemm_error,
    input  wire [3:0]           gemm_digit,
    input  wire                 gemm_digit_valid,
    input  wire [3:0]           param_section,

    output reg  [31:0]          fc1_weight_base,
    output reg  [31:0]          fc1_bias_base,
    output reg  [31:0]          fc2_weight_base,
    output reg  [31:0]          fc2_bias_base,
    output reg  signed [31:0]   fc1_requant_multiplier,
    output reg  [5:0]           fc1_requant_shift
);

    reg start_pulse;
    reg flush_pulse;
    reg done_sticky;
    reg digit_valid_sticky;
    reg [1:0] auto_pending;

    wire write_fire = s_axi_awvalid && s_axi_wvalid &&
                      s_axi_awready && s_axi_wready;
    wire read_fire = s_axi_arvalid && s_axi_arready;
    wire auto_launch = (auto_pending != 0) && !gemm_busy;

    assign s_axi_awready = !s_axi_bvalid && s_axi_awvalid && s_axi_wvalid;
    assign s_axi_wready = !s_axi_bvalid && s_axi_awvalid && s_axi_wvalid;
    assign s_axi_bresp = 2'b00;
    assign s_axi_arready = !s_axi_rvalid;
    assign s_axi_rresp = 2'b00;
    assign gemm_start = start_pulse || auto_launch;
    assign gemm_flush = flush_pulse;

    always @(posedge s_axi_aclk or negedge s_axi_aresetn) begin
        if (!s_axi_aresetn) begin
            s_axi_bvalid <= 1'b0;
            s_axi_rvalid <= 1'b0;
            s_axi_rdata <= 0;
            start_pulse <= 1'b0;
            flush_pulse <= 1'b0;
            done_sticky <= 1'b0;
            digit_valid_sticky <= 1'b0;
            auto_pending <= 2'd0;
            fc1_weight_base <= 0;
            fc1_bias_base <= 0;
            fc2_weight_base <= 0;
            fc2_bias_base <= 0;
            fc1_requant_multiplier <= 32'sd74845108;
            fc1_requant_shift <= 6'd31;
        end else begin
            start_pulse <= 1'b0;
            flush_pulse <= 1'b0;

            if (flush_pulse) begin
                auto_pending <= 2'd0;
            end else begin
                case ({auto_start, auto_launch})
                    2'b10: if (auto_pending != 2'd3)
                               auto_pending <= auto_pending + 1'b1;
                    2'b01: auto_pending <= auto_pending - 1'b1;
                    default: begin end
                endcase
            end

            if (s_axi_bvalid && s_axi_bready)
                s_axi_bvalid <= 1'b0;
            if (s_axi_rvalid && s_axi_rready)
                s_axi_rvalid <= 1'b0;

            if (write_fire) begin
                s_axi_bvalid <= 1'b1;
                case (s_axi_awaddr)
                    6'h00: begin
                        start_pulse <= s_axi_wdata[0];
                        flush_pulse <= s_axi_wdata[1];
                    end
                    6'h08: fc1_weight_base <= s_axi_wdata;
                    6'h0c: fc1_bias_base <= s_axi_wdata;
                    6'h10: fc2_weight_base <= s_axi_wdata;
                    6'h14: fc2_bias_base <= s_axi_wdata;
                    6'h18: fc1_requant_multiplier <= s_axi_wdata;
                    6'h1c: fc1_requant_shift <= s_axi_wdata[5:0];
                    default: begin end
                endcase
            end

            if (read_fire) begin
                s_axi_rvalid <= 1'b1;
                case (s_axi_araddr)
                    6'h00: s_axi_rdata <= 0;
                    6'h04: s_axi_rdata <= {20'd0, param_section, gemm_digit,
                                           digit_valid_sticky, gemm_error,
                                           done_sticky, gemm_busy};
                    6'h08: s_axi_rdata <= fc1_weight_base;
                    6'h0c: s_axi_rdata <= fc1_bias_base;
                    6'h10: s_axi_rdata <= fc2_weight_base;
                    6'h14: s_axi_rdata <= fc2_bias_base;
                    6'h18: s_axi_rdata <= fc1_requant_multiplier;
                    6'h1c: s_axi_rdata <= {26'd0, fc1_requant_shift};
                    default: s_axi_rdata <= 0;
                endcase
            end

            if (gemm_done)
                done_sticky <= 1'b1;
            if (gemm_digit_valid)
                digit_valid_sticky <= 1'b1;
            if (auto_launch || start_pulse || flush_pulse) begin
                done_sticky <= 1'b0;
                digit_valid_sticky <= 1'b0;
            end
        end
    end

endmodule
