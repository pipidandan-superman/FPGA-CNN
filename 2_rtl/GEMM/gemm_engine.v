`timescale 1ns/1ps
// Output-stationary GEMM core for M=1 fully-connected layers.
// One activation is broadcast to PE_N signed MAC lanes per accepted weight word.
// The activation read port is synchronous with one-cycle read latency.
module gemm_engine #(
    parameter ACT_W   = 16,
    parameter WGT_W   = 8,
    parameter ACC_W   = 40,
    parameter PE_N    = 8,
    parameter K_W     = 13,
    parameter N_W     = 8,
    parameter ADDR_W  = 32
)(
    input  wire                       clk,
    input  wire                       rst_n,

    input  wire                       start,
    input  wire [K_W-1:0]             cfg_k,
    input  wire [N_W-1:0]             cfg_n,
    input  wire [ADDR_W-1:0]          cfg_weight_base,
    output reg                        busy,
    output reg                        done,

    output wire                       act_en,
    output wire [K_W-1:0]             act_addr,
    input  wire signed [ACT_W-1:0]    act_data,

    output wire                       wgt_ready,
    input  wire                       wgt_valid,
    input  wire [PE_N*WGT_W-1:0]      wgt_data,
    output wire [ADDR_W-1:0]          wgt_addr,

    output wire                       out_we,
    output wire [N_W-1:0]             out_addr,
    output wire signed [ACC_W-1:0]    out_data
);

    localparam S_IDLE   = 2'd0;
    localparam S_STREAM = 2'd1;
    localparam S_DRAIN  = 2'd2;
    localparam S_WRITE  = 2'd3;

    reg [1:0] state;
    reg [K_W-1:0] k_reg;
    reg [N_W-1:0] n_reg;
    reg [ADDR_W-1:0] weight_base_reg;

    reg [K_W-1:0] cur_k;
    reg [N_W-1:0] cur_nt;
    reg [3:0] out_lane;

    reg pipe_valid;
    reg pipe_last;
    reg mul_valid;
    reg mul_last;
    reg mac_valid;
    reg mac_last;
    reg signed [ACT_W-1:0] act_data_d;
    reg [PE_N*WGT_W-1:0] wgt_data_d;
    reg [PE_N*WGT_W-1:0] wgt_data_dd;
    reg signed [ACC_W-1:0] acc [0:PE_N-1];
    reg signed [ACT_W+WGT_W-1:0] product_reg [0:PE_N-1];

    wire accept_weight = wgt_valid && wgt_ready;
    wire last_nt = ((cur_nt + 1'b1) * PE_N >= n_reg);
    wire [N_W-1:0] n_remaining = n_reg - cur_nt * PE_N;
    wire [3:0] valid_lanes = (n_remaining >= PE_N) ? PE_N[3:0] : n_remaining[3:0];

    assign wgt_ready = (state == S_STREAM);
    assign act_en = accept_weight;
    assign act_addr = cur_k;
    assign wgt_addr = weight_base_reg + (cur_nt * k_reg + cur_k) * PE_N;

    assign out_we = (state == S_WRITE);
    assign out_addr = cur_nt * PE_N + out_lane;
    assign out_data = acc[out_lane];

    wire signed [ACT_W+WGT_W-1:0] product [0:PE_N-1];
    genvar g;
    generate
        for (g = 0; g < PE_N; g = g + 1) begin : GEN_PRODUCT
            assign product[g] = $signed(act_data_d) *
                                $signed(wgt_data_dd[g*WGT_W +: WGT_W]);
        end
    endgenerate

    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
            busy <= 1'b0;
            done <= 1'b0;
            k_reg <= 0;
            n_reg <= 0;
            weight_base_reg <= 0;
            cur_k <= 0;
            cur_nt <= 0;
            out_lane <= 0;
            pipe_valid <= 1'b0;
            pipe_last <= 1'b0;
            mul_valid <= 1'b0;
            mul_last <= 1'b0;
            mac_valid <= 1'b0;
            mac_last <= 1'b0;
            act_data_d <= 0;
            wgt_data_d <= 0;
            wgt_data_dd <= 0;
            for (i = 0; i < PE_N; i = i + 1) begin
                acc[i] <= 0;
                product_reg[i] <= 0;
            end
        end else begin
            done <= 1'b0;

            if (start && !busy) begin
                state <= S_STREAM;
                busy <= 1'b1;
                k_reg <= cfg_k;
                n_reg <= cfg_n;
                weight_base_reg <= cfg_weight_base;
                cur_k <= 0;
                cur_nt <= 0;
                out_lane <= 0;
                pipe_valid <= 1'b0;
                pipe_last <= 1'b0;
                mul_valid <= 1'b0;
                mul_last <= 1'b0;
                mac_valid <= 1'b0;
                mac_last <= 1'b0;
                for (i = 0; i < PE_N; i = i + 1)
                    acc[i] <= 0;
            end else begin
                // P0 issues the BRAM read, P1 registers both multiplier
                // operands, P2 registers the exact products, and P3
                // accumulates them into the output-stationary lanes.
                mul_valid <= pipe_valid;
                mul_last <= pipe_last;
                mac_valid <= mul_valid;
                mac_last <= mul_last;
                if (pipe_valid) begin
                    act_data_d <= act_data;
                    wgt_data_dd <= wgt_data_d;
                end
                if (mul_valid) begin
                    for (i = 0; i < PE_N; i = i + 1)
                        product_reg[i] <= product[i];
                end

                case (state)
                    S_STREAM: begin
                        if (mac_valid) begin
                            for (i = 0; i < PE_N; i = i + 1)
                                acc[i] <= acc[i] + product_reg[i];
                        end

                        pipe_valid <= 1'b0;
                        if (accept_weight) begin
                            wgt_data_d <= wgt_data;
                            pipe_valid <= 1'b1;
                            pipe_last <= (cur_k == k_reg - 1'b1);
                            if (cur_k == k_reg - 1'b1) begin
                                cur_k <= 0;
                                state <= S_DRAIN;
                            end else begin
                                cur_k <= cur_k + 1'b1;
                            end
                        end
                    end

                    S_DRAIN: begin
                        pipe_valid <= 1'b0;
                        if (mac_valid) begin
                            for (i = 0; i < PE_N; i = i + 1)
                                acc[i] <= acc[i] + product_reg[i];
                            if (mac_last) begin
                                out_lane <= 0;
                                state <= S_WRITE;
                            end
                        end
                    end

                    S_WRITE: begin
                        if (out_lane == valid_lanes - 1'b1) begin
                            if (last_nt) begin
                                busy <= 1'b0;
                                done <= 1'b1;
                                state <= S_IDLE;
                            end else begin
                                cur_nt <= cur_nt + 1'b1;
                                cur_k <= 0;
                                state <= S_STREAM;
                                for (i = 0; i < PE_N; i = i + 1)
                                    acc[i] <= 0;
                            end
                        end else begin
                            out_lane <= out_lane + 1'b1;
                        end
                    end

                    default: begin
                        state <= S_IDLE;
                        pipe_valid <= 1'b0;
                    end
                endcase
            end
        end
    end

endmodule
