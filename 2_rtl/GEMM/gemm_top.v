`timescale 1ns/1ps
// Shared FC1/FC2 controller. DDR transfers are deliberately outside this
// module: Vivado AXI DMA MM2S supplies an AXI4-Stream parameter sequence of
// FC1 bias, FC1 weights, FC2 bias, FC2 weights. A single GEMM engine is reused.
module gemm_top #(
    parameter ACT_W = 16,
    parameter ACC_W = 40,
    parameter PE_N = 8
)(
    input  wire                         clk,
    input  wire                         rst_n,
    input  wire                         flush,
    input  wire                         start,
    output reg                          busy,
    output reg                          done,
    output reg                          error,

    input  wire [31:0]                  fc1_weight_base,
    input  wire [31:0]                  fc1_bias_base,
    input  wire [31:0]                  fc2_weight_base,
    input  wire [31:0]                  fc2_bias_base,
    input  wire signed [31:0]           fc1_requant_multiplier,
    input  wire [5:0]                   fc1_requant_shift,

    input  wire                         pool_wr_en,
    input  wire [12:0]                  pool_wr_addr,
    input  wire [ACT_W-1:0]             pool_wr_data,
    input  wire                         pool_wr_done,
    output wire                         pool_wr_ready,

    input  wire [63:0]                  s_axis_params_tdata,
    input  wire                         s_axis_params_tvalid,
    output wire                         s_axis_params_tready,
    input  wire                         s_axis_params_tlast,
    output wire [3:0]                   param_section,

    output reg  [3:0]                   digit,
    output reg                          digit_valid,

    output wire                         debug_post_valid,
    output wire                         debug_post_layer,
    output wire [7:0]                   debug_post_addr,
    output wire signed [ACC_W-1:0]      debug_post_data
);

    localparam S_IDLE          = 4'd0;
    localparam S_WAIT_POOL     = 4'd1;
    localparam S_BIAS_STREAM   = 4'd2;
    localparam S_BIAS_CFG      = 4'd3;
    localparam S_BIAS_RUN      = 4'd4;
    localparam S_WEIGHT_STREAM = 4'd5;
    localparam S_WEIGHT_CFG    = 4'd6;
    localparam S_WEIGHT_RUN    = 4'd7;
    localparam S_POST_DRAIN    = 4'd8;
    localparam S_COLLECT_REQ   = 4'd9;
    localparam S_COLLECT_WAIT  = 4'd10;
    localparam S_ARGMAX_START  = 4'd11;
    localparam S_ARGMAX_WAIT   = 4'd12;

    reg [3:0] state;
    reg layer;
    reg mode_bias;
    reg stream_start;
    reg core_start;
    reg [7:0] bias_count;
    reg [12:0] post_count;
    reg [3:0] collect_index;
    reg [10*ACC_W-1:0] logits_flat;
    reg [15:0] ingress_count;
    reg stream_protocol_error;

    reg pool_rd_done;
    reg fc1_rd_done;
    reg fc1_wr_done;
    reg fc2_rd_done;
    reg fc2_wr_done;
    reg arg_start;

    wire [12:0] layer_k = layer ? 13'd100 : 13'd4320;
    wire [7:0] layer_n = layer ? 8'd10 : 8'd100;
    wire [15:0] layer_weight_words = layer ? 16'd200 : 16'd56160;
    wire [31:0] layer_weight_base = layer ? fc2_weight_base : fc1_weight_base;

    wire [15:0] ingress_total = mode_bias ? {8'd0, layer_n} : layer_weight_words;
    wire stream_accept_enable = ((state == S_BIAS_RUN) ||
                                 (state == S_WEIGHT_RUN)) &&
                                (ingress_count < ingress_total);

    wire pp_ready;
    wire pp_r_valid;
    wire pp_r_ready;
    wire [63:0] pp_r_data;
    wire [ACT_W-1:0] pool_rd_data;
    wire pool_rd_valid;
    wire [ACT_W-1:0] fc1_rd_data;
    wire fc1_rd_valid;
    wire fc1_wr_ready;
    wire [1:0] pool_bank_full;
    wire [1:0] fc1_bank_full;
    wire [1:0] param_bank_full;
    wire stream_fire = s_axis_params_tvalid && s_axis_params_tready;
    wire stream_section_last = (ingress_count == ingress_total - 1'b1);
    wire stream_protocol_error_now = stream_fire &&
                                     (s_axis_params_tlast != stream_section_last);

    assign s_axis_params_tready = stream_accept_enable && pp_ready;

    // One-hot request for the PS DMA driver. A request drops only after the
    // exact section length has crossed the AXI-Stream boundary.
    wire bias_section_active = (state == S_BIAS_STREAM) ||
                               (state == S_BIAS_CFG) || (state == S_BIAS_RUN);
    wire weight_section_active = (state == S_WEIGHT_STREAM) ||
                                 (state == S_WEIGHT_CFG) || (state == S_WEIGHT_RUN);
    assign param_section = (bias_section_active &&
                            (ingress_count < ingress_total)) ?
                           (layer ? 4'b0100 : 4'b0001) :
                           (weight_section_active &&
                            (ingress_count < ingress_total)) ?
                           (layer ? 4'b1000 : 4'b0010) : 4'b0000;

    // The official DMA marks each section boundary. Fixed 160-word interior
    // tiles are closed inside gemm_param_pp; GEMM may continue across banks.
    wire pp_last = s_axis_params_tlast;

    gemm_param_pp #(.DATA_W(64), .TILE_WORDS(160), .PTR_W(8)) param_pp (
        .clk(clk), .rst_n(rst_n), .stream_start(stream_start),
        .dma_we(stream_fire), .dma_ready(pp_ready),
        .dma_data(s_axis_params_tdata), .dma_last(pp_last),
        .r_valid(pp_r_valid), .r_ready(pp_r_ready), .r_data(pp_r_data),
        .debug_bank_full(param_bank_full)
    );

    wire core_wgt_ready;
    assign pp_r_ready = (state == S_BIAS_RUN) ? 1'b1 :
                        (state == S_WEIGHT_RUN) ? core_wgt_ready : 1'b0;
    wire bias_we = (state == S_BIAS_RUN) && pp_r_valid && pp_r_ready;

    wire core_act_en;
    wire [12:0] core_act_addr;
    wire [ACT_W-1:0] core_act_data = layer ? fc1_rd_data : pool_rd_data;
    wire core_busy;
    wire core_done;
    wire [31:0] core_wgt_addr;
    wire core_out_we;
    wire [7:0] core_out_addr;
    wire signed [ACC_W-1:0] core_out_data;

    gemm_engine #(.ACT_W(ACT_W), .ACC_W(ACC_W), .PE_N(PE_N)) engine (
        .clk(clk), .rst_n(rst_n), .start(core_start),
        .cfg_k(layer_k), .cfg_n(layer_n), .cfg_weight_base(layer_weight_base),
        .busy(core_busy), .done(core_done),
        .act_en(core_act_en), .act_addr(core_act_addr), .act_data(core_act_data),
        .wgt_ready(core_wgt_ready),
        .wgt_valid((state == S_WEIGHT_RUN) && pp_r_valid),
        .wgt_data(pp_r_data), .wgt_addr(core_wgt_addr),
        .out_we(core_out_we), .out_addr(core_out_addr), .out_data(core_out_data)
    );

    wire post_valid;
    wire [7:0] post_addr;
    wire signed [ACC_W-1:0] post_data;

    gemm_post_process #(.ACT_W(ACT_W), .ACC_W(ACC_W)) post_process (
        .clk(clk), .rst_n(rst_n),
        .cfg_relu(!layer), .cfg_multiplier(fc1_requant_multiplier),
        .cfg_shift(fc1_requant_shift),
        .bias_we(bias_we), .bias_waddr(bias_count),
        .bias_wdata(pp_r_data[ACC_W-1:0]),
        .in_valid(core_out_we), .in_addr(core_out_addr), .in_data(core_out_data),
        .out_valid(post_valid), .out_addr(post_addr), .out_data(post_data)
    );

    assign debug_post_valid = post_valid;
    assign debug_post_layer = layer;
    assign debug_post_addr = post_addr;
    assign debug_post_data = post_data;

    gemm_frame_pp #(.DATA_W(ACT_W), .DEPTH(4320), .ADDR_W(13)) pool_pp (
        .clk(clk), .rst_n(rst_n), .flush(flush),
        .wr_en(pool_wr_en), .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_done(pool_wr_done), .wr_ready(pool_wr_ready),
        .rd_en(core_act_en && !layer), .rd_addr(core_act_addr),
        .rd_data(pool_rd_data), .rd_valid(pool_rd_valid), .rd_done(pool_rd_done),
        .debug_bank_full(pool_bank_full)
    );

    gemm_frame_pp #(.DATA_W(ACT_W), .DEPTH(128), .ADDR_W(8)) fc1_pp (
        .clk(clk), .rst_n(rst_n), .flush(flush),
        .wr_en(post_valid && !layer), .wr_addr(post_addr),
        .wr_data(post_data[ACT_W-1:0]), .wr_done(fc1_wr_done), .wr_ready(fc1_wr_ready),
        .rd_en(core_act_en && layer), .rd_addr(core_act_addr[7:0]),
        .rd_data(fc1_rd_data), .rd_valid(fc1_rd_valid), .rd_done(fc1_rd_done),
        .debug_bank_full(fc1_bank_full)
    );

    wire [ACC_W-1:0] fc2_rd_data;
    wire fc2_rd_valid;
    wire fc2_wr_ready;
    wire [1:0] fc2_bank_full;
    gemm_frame_pp #(.DATA_W(ACC_W), .DEPTH(16), .ADDR_W(4)) fc2_pp (
        .clk(clk), .rst_n(rst_n), .flush(flush),
        .wr_en(post_valid && layer), .wr_addr(post_addr[3:0]),
        .wr_data(post_data), .wr_done(fc2_wr_done), .wr_ready(fc2_wr_ready),
        .rd_en(state == S_COLLECT_REQ && fc2_rd_valid), .rd_addr(collect_index),
        .rd_data(fc2_rd_data), .rd_valid(fc2_rd_valid), .rd_done(fc2_rd_done),
        .debug_bank_full(fc2_bank_full)
    );

    wire [3:0] arg_digit;
    wire arg_done;
    wire arg_busy;
    fc2_argmax #(.ACC_W(ACC_W)) argmax (
        .clk(clk), .rst_n(rst_n), .start(arg_start), .logits_flat(logits_flat),
        .digit(arg_digit), .done(arg_done), .busy(arg_busy)
    );

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
            layer <= 1'b0;
            mode_bias <= 1'b1;
            stream_start <= 1'b0;
            core_start <= 1'b0;
            bias_count <= 0;
            post_count <= 0;
            collect_index <= 0;
            logits_flat <= 0;
            ingress_count <= 0;
            stream_protocol_error <= 1'b0;
            pool_rd_done <= 1'b0;
            fc1_rd_done <= 1'b0;
            fc1_wr_done <= 1'b0;
            fc2_rd_done <= 1'b0;
            fc2_wr_done <= 1'b0;
            arg_start <= 1'b0;
            busy <= 1'b0;
            done <= 1'b0;
            error <= 1'b0;
            digit <= 0;
            digit_valid <= 1'b0;
        end else begin
            stream_start <= 1'b0;
            core_start <= 1'b0;
            pool_rd_done <= 1'b0;
            fc1_rd_done <= 1'b0;
            fc1_wr_done <= 1'b0;
            fc2_rd_done <= 1'b0;
            fc2_wr_done <= 1'b0;
            arg_start <= 1'b0;
            done <= 1'b0;
            digit_valid <= 1'b0;
            stream_protocol_error <= 1'b0;

            if (post_valid)
                post_count <= post_count + 1'b1;

            if (stream_fire) begin
                ingress_count <= ingress_count + 1'b1;
                stream_protocol_error <= stream_protocol_error_now;
            end

            if (flush) begin
                state <= S_IDLE;
                busy <= 1'b0;
                error <= 1'b0;
            end else if (stream_protocol_error) begin
                error <= 1'b1;
                busy <= 1'b0;
                state <= S_IDLE;
            end else begin
                case (state)
                    S_IDLE: begin
                        if (start && !busy) begin
                            busy <= 1'b1;
                            error <= 1'b0;
                            layer <= 1'b0;
                            state <= pool_rd_valid ? S_BIAS_STREAM : S_WAIT_POOL;
                        end
                    end

                    S_WAIT_POOL: begin
                        if (pool_rd_valid)
                            state <= S_BIAS_STREAM;
                    end

                    S_BIAS_STREAM: begin
                        mode_bias <= 1'b1;
                        bias_count <= 0;
                        ingress_count <= 0;
                        stream_start <= 1'b1;
                        state <= S_BIAS_CFG;
                    end

                    S_BIAS_CFG: begin
                        state <= S_BIAS_RUN;
                    end

                    S_BIAS_RUN: begin
                        if (bias_we)
                            bias_count <= bias_count + 1'b1;
                        if (bias_count == layer_n)
                            state <= S_WEIGHT_STREAM;
                    end

                    S_WEIGHT_STREAM: begin
                        mode_bias <= 1'b0;
                        ingress_count <= 0;
                        stream_start <= 1'b1;
                        state <= S_WEIGHT_CFG;
                    end

                    S_WEIGHT_CFG: begin
                        post_count <= 0;
                        core_start <= 1'b1;
                        state <= S_WEIGHT_RUN;
                    end

                    S_WEIGHT_RUN: begin
                        if (core_done) begin
                            if (layer)
                                fc1_rd_done <= 1'b1;
                            else
                                pool_rd_done <= 1'b1;
                            state <= S_POST_DRAIN;
                        end
                    end

                    S_POST_DRAIN: begin
                        if (post_count == layer_n) begin
                            if (layer) begin
                                fc2_wr_done <= 1'b1;
                                collect_index <= 0;
                                state <= S_COLLECT_REQ;
                            end else begin
                                fc1_wr_done <= 1'b1;
                                layer <= 1'b1;
                                state <= S_BIAS_STREAM;
                            end
                        end
                    end

                    S_COLLECT_REQ: begin
                        if (fc2_rd_valid)
                            state <= S_COLLECT_WAIT;
                    end

                    S_COLLECT_WAIT: begin
                        logits_flat[collect_index*ACC_W +: ACC_W] <= fc2_rd_data;
                        if (collect_index == 9) begin
                            fc2_rd_done <= 1'b1;
                            state <= S_ARGMAX_START;
                        end else begin
                            collect_index <= collect_index + 1'b1;
                            state <= S_COLLECT_REQ;
                        end
                    end

                    S_ARGMAX_START: begin
                        arg_start <= 1'b1;
                        state <= S_ARGMAX_WAIT;
                    end

                    S_ARGMAX_WAIT: begin
                        if (arg_done) begin
                            digit <= arg_digit;
                            digit_valid <= 1'b1;
                            done <= 1'b1;
                            busy <= 1'b0;
                            state <= S_IDLE;
                        end
                    end

                    default: begin
                        state <= S_IDLE;
                        busy <= 1'b0;
                        error <= 1'b1;
                    end
                endcase
            end
        end
    end

endmodule
