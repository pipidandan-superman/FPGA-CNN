module pp_ram_ctrl #(
    parameter NORMALIZE = 1
)(
    input  wire        clk,
    input  wire        rst_n,

    input  wire        cam_we,
    input  wire [9:0]  cam_addr,
    input  wire        cam_data,
    input  wire        cam_done,

    input  wire        cnn_re,
    input  wire [9:0]  cnn_addr,
    output wire        cnn_data,
    input  wire        cnn_done,
    output reg         cnn_start,

    output wire        ramA_we,
    output wire [9:0]  ramA_waddr,
    output wire        ramA_wdata,
    output wire        ramA_re,
    output wire [9:0]  ramA_raddr,
    input  wire        ramA_rdata,

    output wire        ramB_we,
    output wire [9:0]  ramB_waddr,
    output wire        ramB_wdata,
    output wire        ramB_re,
    output wire [9:0]  ramB_raddr,
    input  wire        ramB_rdata
);

    localparam TARGET_SIZE = 24;

    reg pingpang_flag;
    reg cam_ready;
    reg cnn_ready;
    wire handoff = cam_ready && cnn_ready;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cam_ready <= 1'b0;
            cnn_ready <= 1'b1;
        end else begin
            if (cam_done) cam_ready <= 1'b1;
            if (cnn_done) cnn_ready <= 1'b1;
            if (handoff) begin
                cam_ready <= 1'b0;
                cnn_ready <= 1'b0;
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            pingpang_flag <= 1'b0;
        else if (handoff)
            pingpang_flag <= ~pingpang_flag;
    end

    assign ramA_we    = (pingpang_flag == 1'b0) ? cam_we   : 1'b0;
    assign ramA_waddr = (pingpang_flag == 1'b0) ? cam_addr : 10'd0;
    assign ramA_wdata = (pingpang_flag == 1'b0) ? cam_data : 1'b0;
    assign ramB_we    = (pingpang_flag == 1'b1) ? cam_we   : 1'b0;
    assign ramB_waddr = (pingpang_flag == 1'b1) ? cam_addr : 10'd0;
    assign ramB_wdata = (pingpang_flag == 1'b1) ? cam_data : 1'b0;

    /* Track each incoming frame's stroke bounding box. */
    reg [4:0] cam_x;
    reg [4:0] cam_y;
    reg [9:0] work_count;
    reg [4:0] work_min_x;
    reg [4:0] work_max_x;
    reg [4:0] work_min_y;
    reg [4:0] work_max_y;
    reg [9:0] frame_count;
    reg [4:0] frame_min_x;
    reg [4:0] frame_max_x;
    reg [4:0] frame_min_y;
    reg [4:0] frame_max_y;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cam_x <= 0;
            cam_y <= 0;
            work_count <= 0;
            work_min_x <= 0;
            work_max_x <= 0;
            work_min_y <= 0;
            work_max_y <= 0;
            frame_count <= 0;
            frame_min_x <= 0;
            frame_max_x <= 0;
            frame_min_y <= 0;
            frame_max_y <= 0;
        end else begin
            if (cam_we) begin
                if (cam_data) begin
                    if (work_count == 0) begin
                        work_min_x <= cam_x;
                        work_max_x <= cam_x;
                        work_min_y <= cam_y;
                        work_max_y <= cam_y;
                    end else begin
                        if (cam_x < work_min_x) work_min_x <= cam_x;
                        if (cam_x > work_max_x) work_max_x <= cam_x;
                        if (cam_y < work_min_y) work_min_y <= cam_y;
                        if (cam_y > work_max_y) work_max_y <= cam_y;
                    end
                    work_count <= work_count + 1'b1;
                end

                if (cam_x == 27) begin
                    cam_x <= 0;
                    cam_y <= cam_y + 1'b1;
                end else begin
                    cam_x <= cam_x + 1'b1;
                end
            end

            /* ram_ctrl_lite raises cam_done one cycle after the last write. */
            if (cam_done) begin
                frame_count <= work_count + ((cam_we && cam_data) ? 1'b1 : 1'b0);
                if (cam_we && cam_data && work_count == 0) begin
                    frame_min_x <= cam_x;
                    frame_max_x <= cam_x;
                    frame_min_y <= cam_y;
                    frame_max_y <= cam_y;
                end else begin
                    frame_min_x <= (cam_we && cam_data && cam_x < work_min_x) ? cam_x : work_min_x;
                    frame_max_x <= (cam_we && cam_data && cam_x > work_max_x) ? cam_x : work_max_x;
                    frame_min_y <= (cam_we && cam_data && cam_y < work_min_y) ? cam_y : work_min_y;
                    frame_max_y <= (cam_we && cam_data && cam_y > work_max_y) ? cam_y : work_max_y;
                end
                work_count <= 0;
                cam_x <= 0;
                cam_y <= 0;
            end
        end
    end

    generate
        if (NORMALIZE == 0) begin : LEGACY_PATH
            always @(posedge clk or negedge rst_n) begin
                if (!rst_n)
                    cnn_start <= 1'b0;
                else begin
                    cnn_start <= 1'b0;
                    if (handoff)
                        cnn_start <= 1'b1;
                end
            end

            assign ramA_re    = (pingpang_flag == 1'b1) ? cnn_re   : 1'b0;
            assign ramA_raddr = (pingpang_flag == 1'b1) ? cnn_addr : 10'd0;
            assign ramB_re    = (pingpang_flag == 1'b0) ? cnn_re   : 1'b0;
            assign ramB_raddr = (pingpang_flag == 1'b0) ? cnn_addr : 10'd0;
            assign cnn_data   = (pingpang_flag == 1'b1) ? ramA_rdata : ramB_rdata;
        end else begin : NORMALIZE_PATH
            localparam S_IDLE    = 4'd0;
            localparam S_DIM     = 4'd1;
            localparam S_OFFSET  = 4'd2;
            localparam S_MAP     = 4'd3;
            localparam S_PRE     = 4'd4;
            localparam S_SHIFT_X = 4'd5;
            localparam S_SHIFT_Y = 4'd6;
            localparam S_START   = 4'd7;
            localparam S_CONV    = 4'd8;

            reg [3:0] norm_state;
            reg norm_blank;
            reg [5:0] crop_w;
            reg [5:0] crop_h;
            reg [4:0] out_w;
            reg [4:0] out_h;
            reg signed [6:0] dst_x0;
            reg signed [6:0] dst_y0;
            reg [4:0] map_index;
            reg [119:0] x_map_flat;
            reg [119:0] y_map_flat;
            reg [9:0] pre_issue;
            reg [9:0] pre_norm_count;
            reg [15:0] pre_sum_x;
            reg [15:0] pre_sum_y;
            reg read_valid_d1;
            reg [4:0] read_x_d1;
            reg [4:0] read_y_d1;

            wire [5:0] frame_crop_w = frame_max_x - frame_min_x + 1'b1;
            wire [5:0] frame_crop_h = frame_max_y - frame_min_y + 1'b1;
            wire [10:0] map_index_ext = {6'd0, map_index};
            wire [10:0] crop_w_ext = {5'd0, crop_w};
            wire [10:0] crop_h_ext = {5'd0, crop_h};
            wire [10:0] map_product_x = map_index_ext * crop_w_ext;
            wire [10:0] map_product_y = map_index_ext * crop_h_ext;

            function signed [7:0] center_shift;
                input [15:0] pixel_sum;
                input [9:0] pixel_count;
                integer numerator;
                integer denominator;
                begin
                    if (pixel_count == 0) begin
                        center_shift = 0;
                    end else begin
                        numerator = 27 * pixel_count - 2 * pixel_sum;
                        denominator = 2 * pixel_count;
                        if (numerator >= 0)
                            center_shift = (numerator + denominator / 2) / denominator;
                        else
                            center_shift = -((-numerator + denominator / 2) / denominator);
                    end
                end
            endfunction

            always @(posedge clk or negedge rst_n) begin
                if (!rst_n) begin
                    norm_state <= S_IDLE;
                    norm_blank <= 1'b1;
                    crop_w <= 1;
                    crop_h <= 1;
                    out_w <= TARGET_SIZE;
                    out_h <= TARGET_SIZE;
                    dst_x0 <= (28 - TARGET_SIZE) / 2;
                    dst_y0 <= (28 - TARGET_SIZE) / 2;
                    map_index <= 0;
                    x_map_flat <= 0;
                    y_map_flat <= 0;
                    pre_issue <= 0;
                    pre_norm_count <= 0;
                    pre_sum_x <= 0;
                    pre_sum_y <= 0;
                    cnn_start <= 1'b0;
                end else begin
                    cnn_start <= 1'b0;
                    case (norm_state)
                        S_IDLE: begin
                            if (handoff)
                                norm_state <= S_DIM;
                        end
                        S_DIM: begin
                            crop_w <= frame_crop_w;
                            crop_h <= frame_crop_h;
                            norm_blank <= (frame_count == 0);
                            if (frame_count == 0) begin
                                norm_state <= S_START;
                            end else begin
                                if (frame_crop_w >= frame_crop_h) begin
                                    out_w <= TARGET_SIZE;
                                    out_h <= ((frame_crop_h * TARGET_SIZE) + (frame_crop_w >> 1)) / frame_crop_w;
                                end else begin
                                    out_w <= ((frame_crop_w * TARGET_SIZE) + (frame_crop_h >> 1)) / frame_crop_h;
                                    out_h <= TARGET_SIZE;
                                end
                                norm_state <= S_OFFSET;
                            end
                        end
                        S_OFFSET: begin
                            dst_x0 <= (28 - out_w) >> 1;
                            dst_y0 <= (28 - out_h) >> 1;
                            map_index <= 0;
                            norm_state <= S_MAP;
                        end
                        S_MAP: begin
                            if (map_index < out_w)
                                x_map_flat[map_index * 5 +: 5] <= frame_min_x + map_product_x / out_w;
                            else
                                x_map_flat[map_index * 5 +: 5] <= 0;
                            if (map_index < out_h)
                                y_map_flat[map_index * 5 +: 5] <= frame_min_y + map_product_y / out_h;
                            else
                                y_map_flat[map_index * 5 +: 5] <= 0;

                            if (map_index == TARGET_SIZE - 1) begin
                                pre_issue <= 0;
                                pre_norm_count <= 0;
                                pre_sum_x <= 0;
                                pre_sum_y <= 0;
                                norm_state <= S_PRE;
                            end else begin
                                map_index <= map_index + 1'b1;
                            end
                        end
                        S_PRE: begin
                            if (pre_issue < 784)
                                pre_issue <= pre_issue + 1'b1;
                            if (read_valid_d1 && cnn_data) begin
                                pre_norm_count <= pre_norm_count + 1'b1;
                                pre_sum_x <= pre_sum_x + read_x_d1;
                                pre_sum_y <= pre_sum_y + read_y_d1;
                            end
                            if (pre_issue == 784 && !read_valid_d1)
                                norm_state <= S_SHIFT_X;
                        end
                        S_SHIFT_X: begin
                            dst_x0 <= dst_x0 + center_shift(pre_sum_x, pre_norm_count);
                            norm_state <= S_SHIFT_Y;
                        end
                        S_SHIFT_Y: begin
                            dst_y0 <= dst_y0 + center_shift(pre_sum_y, pre_norm_count);
                            norm_state <= S_START;
                        end
                        S_START: begin
                            cnn_start <= 1'b1;
                            norm_state <= S_CONV;
                        end
                        S_CONV: begin
                            if (cnn_done)
                                norm_state <= S_IDLE;
                        end
                        default: norm_state <= S_IDLE;
                    endcase
                end
            end

            wire pre_read_req = (norm_state == S_PRE) && (pre_issue < 784);
            wire conv_read_req = (norm_state == S_CONV) && cnn_re;
            wire read_req = pre_read_req || conv_read_req;
            wire [9:0] read_addr = pre_read_req ? pre_issue : cnn_addr;
            wire [4:0] read_x = read_addr % 28;
            wire [4:0] read_y = read_addr / 28;
            wire signed [6:0] read_x_ext = {2'b00, read_x};
            wire signed [6:0] read_y_ext = {2'b00, read_y};
            wire signed [7:0] delta_x = read_x_ext - dst_x0;
            wire signed [7:0] delta_y = read_y_ext - dst_y0;
            wire read_inside = !norm_blank &&
                               (delta_x >= 0) && (delta_x < out_w) &&
                               (delta_y >= 0) && (delta_y < out_h);
            wire [4:0] map_x_index = delta_x[4:0];
            wire [4:0] map_y_index = delta_y[4:0];
            wire [4:0] source_x = x_map_flat[map_x_index * 5 +: 5];
            wire [4:0] source_y = y_map_flat[map_y_index * 5 +: 5];
            wire [9:0] source_addr = source_y * 28 + source_x;

            always @(posedge clk or negedge rst_n) begin
                if (!rst_n) begin
                    read_valid_d1 <= 1'b0;
                    read_x_d1 <= 0;
                    read_y_d1 <= 0;
                end else begin
                    read_valid_d1 <= read_req && read_inside;
                    read_x_d1 <= read_x;
                    read_y_d1 <= read_y;
                end
            end

            wire selected_ram_re = read_req && read_inside;
            assign ramA_re    = (pingpang_flag == 1'b1) ? selected_ram_re : 1'b0;
            assign ramA_raddr = (pingpang_flag == 1'b1) ? source_addr : 10'd0;
            assign ramB_re    = (pingpang_flag == 1'b0) ? selected_ram_re : 1'b0;
            assign ramB_raddr = (pingpang_flag == 1'b0) ? source_addr : 10'd0;
            assign cnn_data   = read_valid_d1 ?
                                ((pingpang_flag == 1'b1) ? ramA_rdata : ramB_rdata) : 1'b0;
        end
    endgenerate

endmodule
