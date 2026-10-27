`timescale 1ns/1ps
// Shared FC post-processing. Bias storage is an official Vivado Block Memory
// Generator IP. The arithmetic is pipelined for the 100 MHz system clock; the
// signed 41x32 requant product is decomposed into exact 16-bit partial products.
module gemm_post_process #(
    parameter ACT_W = 16,
    parameter ACC_W = 40,
    parameter N_W = 8,
    parameter MULT_W = 32,
    parameter BIAS_DEPTH = 128
)(
    input  wire                         clk,
    input  wire                         rst_n,

    input  wire                         cfg_relu,
    input  wire signed [MULT_W-1:0]     cfg_multiplier,
    input  wire [5:0]                   cfg_shift,

    input  wire                         bias_we,
    input  wire [N_W-1:0]               bias_waddr,
    input  wire signed [ACC_W-1:0]      bias_wdata,

    input  wire                         in_valid,
    input  wire [N_W-1:0]               in_addr,
    input  wire signed [ACC_W-1:0]      in_data,

    output reg                          out_valid,
    output reg  [N_W-1:0]               out_addr,
    output reg  signed [ACC_W-1:0]      out_data
);

    localparam SUM_W = ACC_W + 1;
    localparam PROD_W = SUM_W + MULT_W;
    localparam A_HI_W = ACC_W - 15;

    reg in_valid_d;
    reg [N_W-1:0] in_addr_d;
    reg signed [ACC_W-1:0] in_data_d;
    wire signed [ACC_W-1:0] bias_value;
    gemm_bias_bram bias_bram (
        .clka(clk), .ena(1'b1), .wea(bias_we),
        .addra(bias_waddr[N_W-2:0]), .dina(bias_wdata),
        .clkb(clk), .enb(in_valid),
        .addrb(in_addr[N_W-2:0]), .doutb(bias_value)
    );

    // S1: bias addition.
    reg valid_s1;
    reg [N_W-1:0] addr_s1;
    reg signed [SUM_W-1:0] biased_s1;
    reg relu_s1;
    reg signed [MULT_W-1:0] multiplier_s1;
    reg [5:0] shift_s1;

    wire signed [A_HI_W-1:0] a_hi = biased_s1[ACC_W:16];
    wire [15:0] a_lo = biased_s1[15:0];
    wire signed [15:0] b_hi = multiplier_s1[31:16];
    wire [15:0] b_lo = multiplier_s1[15:0];
    wire signed [16:0] a_lo_positive = {1'b0, a_lo};
    wire signed [16:0] b_lo_positive = {1'b0, b_lo};

    wire [31:0] partial_ll = a_lo * b_lo;
    wire signed [A_HI_W+16:0] partial_hl = a_hi * b_lo_positive;
    wire signed [32:0] partial_lh = a_lo_positive * b_hi;
    wire signed [A_HI_W+15:0] partial_hh = a_hi * b_hi;

    // S2: four independent partial products, each no wider than 25x17 bits.
    reg valid_s2;
    reg [N_W-1:0] addr_s2;
    reg signed [SUM_W-1:0] biased_s2;
    reg relu_s2;
    reg [5:0] shift_s2;
    reg [31:0] ll_s2;
    reg signed [A_HI_W+16:0] hl_s2;
    reg signed [32:0] lh_s2;
    reg signed [A_HI_W+15:0] hh_s2;

    wire signed [PROD_W-1:0] term0 = {{(PROD_W-32){1'b0}}, ll_s2};
    wire signed [PROD_W-1:0] term1 =
        {{(PROD_W-(A_HI_W+17)-16){hl_s2[A_HI_W+16]}}, hl_s2, 16'd0};
    wire signed [PROD_W-1:0] term2 =
        {{(PROD_W-33-16){lh_s2[32]}}, lh_s2, 16'd0};
    wire signed [PROD_W-1:0] term3 =
        {{(PROD_W-(A_HI_W+16)-32){hh_s2[A_HI_W+15]}}, hh_s2, 32'd0};

    // S3: balanced partial-sum pair; S4: complete 73-bit product.
    reg valid_s3;
    reg [N_W-1:0] addr_s3;
    reg signed [SUM_W-1:0] biased_s3;
    reg relu_s3;
    reg [5:0] shift_s3;
    reg signed [PROD_W-1:0] sum01_s3;
    reg signed [PROD_W-1:0] sum23_s3;

    reg valid_s4;
    reg [N_W-1:0] addr_s4;
    reg signed [SUM_W-1:0] biased_s4;
    reg relu_s4;
    reg [5:0] shift_s4;
    reg signed [PROD_W-1:0] product_s4;

    // S5: magnitude and sign; S6: nearest, ties-away-from-zero rounding.
    reg valid_s5;
    reg [N_W-1:0] addr_s5;
    reg signed [SUM_W-1:0] biased_s5;
    reg relu_s5;
    reg [5:0] shift_s5;
    reg negative_s5;
    reg [PROD_W-1:0] magnitude_s5;

    wire [PROD_W-1:0] rounding_offset =
        {{(PROD_W-1){1'b0}}, 1'b1} << (shift_s5 - 1'b1);

    reg valid_s6;
    reg [N_W-1:0] addr_s6;
    reg signed [SUM_W-1:0] biased_s6;
    reg relu_s6;
    reg negative_s6;
    reg [PROD_W-1:0] rounded_s6;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            in_valid_d <= 1'b0;
            valid_s1 <= 1'b0;
            valid_s2 <= 1'b0;
            valid_s3 <= 1'b0;
            valid_s4 <= 1'b0;
            valid_s5 <= 1'b0;
            valid_s6 <= 1'b0;
            out_valid <= 1'b0;
            out_addr <= 0;
            out_data <= 0;
        end else begin
            in_valid_d <= in_valid;
            valid_s1 <= in_valid_d;
            valid_s2 <= valid_s1;
            valid_s3 <= valid_s2;
            valid_s4 <= valid_s3;
            valid_s5 <= valid_s4;
            valid_s6 <= valid_s5;
            out_valid <= valid_s6;

            if (in_valid) begin
                in_addr_d <= in_addr;
                in_data_d <= in_data;
            end
            if (in_valid_d) begin
                addr_s1 <= in_addr_d;
                biased_s1 <= {in_data_d[ACC_W-1], in_data_d} +
                             {bias_value[ACC_W-1], bias_value};
                relu_s1 <= cfg_relu;
                multiplier_s1 <= cfg_multiplier;
                shift_s1 <= cfg_shift;
            end
            if (valid_s1) begin
                addr_s2 <= addr_s1;
                biased_s2 <= biased_s1;
                relu_s2 <= relu_s1;
                shift_s2 <= shift_s1;
                ll_s2 <= partial_ll;
                hl_s2 <= partial_hl;
                lh_s2 <= partial_lh;
                hh_s2 <= partial_hh;
            end
            if (valid_s2) begin
                addr_s3 <= addr_s2;
                biased_s3 <= biased_s2;
                relu_s3 <= relu_s2;
                shift_s3 <= shift_s2;
                sum01_s3 <= term0 + term1;
                sum23_s3 <= term2 + term3;
            end
            if (valid_s3) begin
                addr_s4 <= addr_s3;
                biased_s4 <= biased_s3;
                relu_s4 <= relu_s3;
                shift_s4 <= shift_s3;
                product_s4 <= sum01_s3 + sum23_s3;
            end
            if (valid_s4) begin
                addr_s5 <= addr_s4;
                biased_s5 <= biased_s4;
                relu_s5 <= relu_s4;
                shift_s5 <= shift_s4;
                negative_s5 <= product_s4[PROD_W-1];
                magnitude_s5 <= product_s4[PROD_W-1] ?
                                (~product_s4 + 1'b1) : product_s4;
            end
            if (valid_s5) begin
                addr_s6 <= addr_s5;
                biased_s6 <= biased_s5;
                relu_s6 <= relu_s5;
                negative_s6 <= negative_s5;
                rounded_s6 <= (magnitude_s5 + rounding_offset) >> shift_s5;
            end
            if (valid_s6) begin
                out_addr <= addr_s6;
                if (relu_s6) begin
                    if (negative_s6)
                        out_data <= 0;
                    else if (rounded_s6 > 32767)
                        out_data <= 32767;
                    else
                        out_data <= {{(ACC_W-ACT_W){1'b0}}, rounded_s6[ACT_W-1:0]};
                end else begin
                    out_data <= biased_s6[ACC_W-1:0];
                end
            end
        end
    end

endmodule
