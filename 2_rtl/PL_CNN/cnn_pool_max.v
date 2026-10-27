module cnn_maxpool_2x2 #(
    parameter IMG_W  = 24, // 卷积层输出的宽度
    parameter IMG_H  = 24, // 卷积层输出的高度
    parameter CH_NUM = 30  // 通道数
)(
    input  wire        clk,
    input  wire        rst_n,
    
    // --- 输入接口 (直连卷积层的输出) ---
    input  wire        in_valid,
    input  wire [15:0] in_data,
    input  wire [4:0]  in_ch,
    
    // --- 输出接口 (交付给下一层卷积或全连接) ---
    output reg         out_valid,
    output reg  [15:0] out_data,
    output reg  [4:0]  out_ch
);

//-------------------------------------------------------------------
// 1. 空间坐标生成器 (根据输入流自动还原 x, y 坐标)
//-------------------------------------------------------------------
reg [4:0] x_cnt; // 0 ~ 23
reg [4:0] y_cnt; // 0 ~ 23

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        x_cnt <= 0;
        y_cnt <= 0;
    end else if (in_valid) begin
        // 当一个像素的 30 个通道全部传完，x 坐标前进一格
        if (in_ch == CH_NUM - 1) begin
            if (x_cnt == IMG_W - 1) begin
                x_cnt <= 0;
                y_cnt <= (y_cnt == IMG_H - 1) ? 0 : y_cnt + 1;
            end else begin
                x_cnt <= x_cnt + 1;
            end
        end
    end
end

//-------------------------------------------------------------------
// 2. 内部行缓存 (Row Buffer) - 推断为 Block RAM
// 深度: 24 * 30 = 720. 设为 1024 深度。
//-------------------------------------------------------------------
reg [15:0] row_buf [0:1023];
reg [15:0] row_rdata;

wire [9:0] row_addr = x_cnt * CH_NUM + in_ch;
wire       row_we   = in_valid && (y_cnt[0] == 1'b0); // 偶数行执行写操作

always @(posedge clk) begin
    if (row_we) begin
        row_buf[row_addr] <= in_data;
    end
    // BRAM 的读操作有 1 拍延迟，这里默认每个时钟都在读
    row_rdata <= row_buf[row_addr]; 
end

//-------------------------------------------------------------------
// 3. 流水线打拍对齐 (为了匹配 BRAM 的 1 拍读延迟)
//-------------------------------------------------------------------
reg        in_valid_d1;
reg [15:0] in_data_d1;
reg [4:0]  in_ch_d1;
reg [4:0]  x_cnt_d1;
reg [4:0]  y_cnt_d1;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        in_valid_d1 <= 0;
        in_data_d1  <= 0;
        in_ch_d1    <= 0;
        x_cnt_d1    <= 0;
        y_cnt_d1    <= 0;
    end else begin
        in_valid_d1 <= in_valid;
        in_data_d1  <= in_data;
        in_ch_d1    <= in_ch;
        x_cnt_d1    <= x_cnt;
        y_cnt_d1    <= y_cnt;
    end
end

//-------------------------------------------------------------------
// 4. 核心池化计算逻辑 (Stage 1)
//-------------------------------------------------------------------
// 步骤 A: 计算列最大值 (上下对比)
// 因为经过 ReLU，这里按有符号数比较即可 (如果确定为正数，无符号也可)
wire signed [15:0] cur_data_s = in_data_d1;
wire signed [15:0] row_data_s = row_rdata;
wire [15:0] col_max = (cur_data_s > row_data_s) ? in_data_d1 : row_rdata;

// 步骤 B: 像素缓存 (推断为 Distributed RAM, 深度 32)
reg [15:0] pixel_buf [0:31];
wire       pixel_we = in_valid_d1 && (y_cnt_d1[0] == 1'b1) && (x_cnt_d1[0] == 1'b0);

always @(posedge clk) begin
    if (pixel_we) begin
        pixel_buf[in_ch_d1] <= col_max; // 奇数行、偶数列时，暂存列最大值
    end
end

// 步骤 C: 计算最终 2x2 最大值并输出 (左右对比)
wire [15:0] prev_col_max = pixel_buf[in_ch_d1]; // 组合逻辑读出前一列的最大值
wire signed [15:0] col_max_s      = col_max;
wire signed [15:0] prev_col_max_s = prev_col_max;
wire [15:0] final_max = (col_max_s > prev_col_max_s) ? col_max : prev_col_max;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out_valid <= 0;
        out_data  <= 0;
        out_ch    <= 0;
    end else begin
        // 只有当：输入有效 + 奇数行 + 奇数列 时，才是完整的 2x2 窗口计算完毕
        if (in_valid_d1 && (y_cnt_d1[0] == 1'b1) && (x_cnt_d1[0] == 1'b1)) begin
            out_valid <= 1'b1;
            out_data  <= final_max;
            out_ch    <= in_ch_d1;
        end else begin
            out_valid <= 1'b0;
        end
    end
end

endmodule