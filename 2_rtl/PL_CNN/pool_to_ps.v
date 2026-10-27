module pool_to_ps_ram_ctrl #(
    parameter IMG_W_OUT = 12,
    parameter IMG_H_OUT = 12,
    parameter CH_NUM    = 30
)(
    input  wire        clk,
    input  wire        rst_n,
    
    // 来自池化层的接口
    input  wire        pool_valid,
    input  wire [15:0] pool_data,
    input  wire [4:0]  pool_ch,
    
    // 连接到 BRAM IP (Port A)
    output wire        bram_en,
    output wire [3:0]  bram_we,   
    output wire [31:0] bram_addr, // 变为组合逻辑输出
    output wire [31:0] bram_wdata,
    
    // 输出给 PS 的中断信号
    output reg         ps_intr
);

    //-------------------------------------------------------
    // 1. 空间坐标维护 (定位当前是第几个像素点)
    //-------------------------------------------------------
    reg [7:0] pixel_ptr; // 0 ~ 143 (12*12-1)

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pixel_ptr <= 0;
        end else if (pool_valid && (pool_ch == CH_NUM - 1)) begin
            // 只有当最后一个通道 (29) 写入时，空间指针才跳转到下一个像素
            if (pixel_ptr == (IMG_W_OUT * IMG_H_OUT - 1))
                pixel_ptr <= 0;
            else
                pixel_ptr <= pixel_ptr + 1'b1;
        end
    end

    //-------------------------------------------------------
    // 2. 物理地址映射 (使用 pool_ch 进行偏移定位)
    //-------------------------------------------------------
    // 逻辑地址 = (像素索引 * 总通道数 + 当前通道号)
    // 字节地址 = 逻辑地址 * 4
    wire [15:0] logic_addr = (pixel_ptr * CH_NUM) + pool_ch;
    assign bram_addr = logic_addr << 2; // 等效于乘以 4

    assign bram_en    = pool_valid;
    assign bram_we    = pool_valid ? 4'b1111 : 4'b0000;
    assign bram_wdata = {16'd0, pool_data};

    //-------------------------------------------------------
    // 3. 严格的中断触发逻辑
    //-------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ps_intr <= 1'b0;
        end else begin
            // 中断触发条件：最后一个像素(143) 的 最后一个通道(29) 写入成功
            if (pool_valid && (pool_ch == CH_NUM - 1) && (pixel_ptr == (IMG_W_OUT * IMG_H_OUT - 1)))
                ps_intr <= 1'b1;
            else
                ps_intr <= 1'b0;
        end
    end

endmodule