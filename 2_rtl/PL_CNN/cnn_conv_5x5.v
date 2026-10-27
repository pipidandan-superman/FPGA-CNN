module cnn_conv_5x5_layer #(
    parameter IMG_W  = 28,
    parameter IMG_H  = 28,
    parameter CH_OUT = 30
)
(
    input  wire         clk,
    input  wire         rst_n,
    
    // 乒乓操作交接信号 (启动当前帧计算)
    input  wire         frame_start, 
    output reg          frame_done,
    
    // Step 1: 读取上一级 RAM (乒乓 Buffer 中的一页)
    output reg          ram_en,
    output reg  [9:0]   ram_addr,  // 0 ~ 783
    input  wire         ram_data,  // 1-bit 二值化像素
    
    // 读取权重 ROM
    output wire [4:0]   rom_addr,  // 0 ~ 29 (对应 30 个通道)
    input  wire [199:0] rom_data,  // 25个8-bit权重拼接: 25 * 8 = 200 bits
    
    // --- 新增：读取偏置 ROM ---
    input  wire signed [15:0] bias_data, // 每个通道一个 16-bit 偏置参数
    
    // Step 4: 输出计算结果 (已包含 Bias 和 ReLU)
    output reg          out_valid,
    output reg  [4:0]   out_ch,    // 当前输出的是第几个通道 (0~29)
    output reg  [15:0]  out_data   // 经过 Bias 和 ReLU 后的结果
);

//===================================================================
// 1. 状态机定义与条件信号
//===================================================================
localparam S_IDLE    = 3'b001;
localparam S_STREAM  = 3'b010; 
localparam S_COMPUTE = 3'b100; 

reg [2:0] current_state, next_state;
reg shift_en;   
reg compute_en; 

reg [4:0] pixel_x;
reg [4:0] pixel_y;
reg [4:0] ch_cnt;

wire window_ready  = (pixel_x >= 4) && (pixel_y >= 4); 
wire is_ch_done    = (ch_cnt == CH_OUT - 1);           
wire is_last_pixel = (pixel_x == IMG_W - 1) && (pixel_y == IMG_H - 1); 

//===================================================================
// 2. 三段式状态机核心
//===================================================================
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) current_state <= S_IDLE;
    else        current_state <= next_state;
end

always @(*) begin
    next_state = current_state; 
    case (current_state)
        S_IDLE:    if (frame_start)   next_state = S_STREAM;
        S_STREAM:  if (window_ready)  next_state = S_COMPUTE; 
        S_COMPUTE: if (is_ch_done)    next_state = is_last_pixel ? S_IDLE : S_STREAM;
        default:   next_state = S_IDLE;
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        shift_en   <= 1'b0;
        compute_en <= 1'b0;
        frame_done <= 1'b0;
    end else begin
        frame_done <= 1'b0; 
        case (next_state)
            S_IDLE: begin
                shift_en   <= 1'b0;
                compute_en <= 1'b0;
                if (current_state == S_COMPUTE && is_ch_done && is_last_pixel)
                    frame_done <= 1'b1;
            end
            S_STREAM: begin
                shift_en   <= 1'b1; 
                compute_en <= 1'b0;
            end
            S_COMPUTE: begin
                shift_en   <= 1'b0; 
                compute_en <= 1'b1; 
            end
            default: begin
                shift_en   <= 1'b0;
                compute_en <= 1'b0;
            end
        endcase
    end
end

//===================================================================
// 3. 数据路径：计数器与地址控制
//===================================================================
assign rom_addr = ch_cnt; 

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ch_cnt   <= 0;
        pixel_x  <= 0;
        pixel_y  <= 0;
        ram_addr <= 0;
        ram_en   <= 0;
    end 
	else begin
        if (current_state == S_COMPUTE) begin
            if (is_ch_done) ch_cnt <= 0;
            else            ch_cnt <= ch_cnt + 1;
        end 
		else ch_cnt <= 0;

        if (current_state == S_IDLE) begin
            pixel_x  <= 0;
            pixel_y  <= 0;
            ram_addr <= 0;
            ram_en   <= 0;
        end 
		else if (shift_en) begin
            ram_en   <= 1'b1;
            ram_addr <= ram_addr + 1;
            if (pixel_x == IMG_W - 1) begin
                pixel_x <= 0;
                pixel_y <= pixel_y + 1;
            end 
			else pixel_x <= pixel_x + 1;
        end 
		else ram_en <= 0;
    end
end

//===================================================================
// 4. 数据路径：5x5 滑动窗口生成
//===================================================================
reg [IMG_W-1:0] line_buf_1, line_buf_2, line_buf_3, line_buf_4;

wire [4:0] win_row_0 = {line_buf_1[4:1], ram_data};
wire [4:0] win_row_1 = line_buf_1[IMG_W-1 : IMG_W-5];
wire [4:0] win_row_2 = line_buf_2[IMG_W-1 : IMG_W-5];
wire [4:0] win_row_3 = line_buf_3[IMG_W-1 : IMG_W-5];
wire [4:0] win_row_4 = line_buf_4[IMG_W-1 : IMG_W-5];

wire [24:0] window_2d = {win_row_4, win_row_3, win_row_2, win_row_1, win_row_0};

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        line_buf_1 <= 0; line_buf_2 <= 0;
        line_buf_3 <= 0; line_buf_4 <= 0;
    end else if (shift_en) begin 
        line_buf_1 <= {line_buf_1[IMG_W-2:0], ram_data};
        line_buf_2 <= {line_buf_2[IMG_W-2:0], line_buf_1[IMG_W-1]};
        line_buf_3 <= {line_buf_3[IMG_W-2:0], line_buf_2[IMG_W-1]};
        line_buf_4 <= {line_buf_4[IMG_W-2:0], line_buf_3[IMG_W-1]};
    end
end

//===================================================================
// 5. 数据路径：MAC 阵列与结果输出 (含 Bias 和 ReLU)
//===================================================================
wire signed [7:0] weight [0:24];
wire signed [7:0] mult_out [0:24];

genvar i;
generate
    for(i = 0; i < 25; i = i + 1) begin : MAC_ARRAY
        assign weight[i] = rom_data[(i*8)+7 : i*8];
        assign mult_out[i] = window_2d[i] ? weight[i] : 8'd0; 
    end
endgenerate

reg signed [15:0] sum_tree;
integer j;
always @(*) begin
    sum_tree = 0;
    for(j = 0; j < 25; j = j + 1) begin
        sum_tree = sum_tree + mult_out[j];
    end
end

// 偏置累加暂存 (增加 1 位宽防止溢出)
reg signed [16:0] sum_with_bias;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out_valid <= 0;
        out_data  <= 0;
        out_ch    <= 0;
    end 
	else if (compute_en) begin
        out_valid <= 1'b1;
        out_ch    <= ch_cnt;
        
        // --- 1. 偏置运算 ---
        sum_with_bias = $signed(sum_tree) + $signed(bias_data);
        
        // --- 2. ReLU 激活 ---
        // 判断符号位 [16]，若为 1 则为负数，强制输出 0
        if (sum_with_bias[16]) begin
            out_data <= 16'd0;
        end else begin
            out_data <= sum_with_bias[15:0];
        end
    end 
	else begin
        out_valid <= 1'b0;
    end
end

endmodule