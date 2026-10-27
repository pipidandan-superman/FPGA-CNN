`timescale 1ns / 1ps

module tb_cnn_conv_5x5_layer();

    // --------------------------------------------------
    // 1. 参数定义
    // --------------------------------------------------
    parameter IMG_W  = 28;
    parameter IMG_H  = 28;
    parameter CH_OUT = 30;

    // --------------------------------------------------
    // 2. 接口信号定义
    // --------------------------------------------------
    reg          clk;
    reg          rst_n;
    reg          frame_start;
    wire         frame_done;
    
    wire         ram_en;
    wire [9:0]   ram_addr;
    wire         ram_data;
    
    wire [4:0]   rom_addr;
    wire [199:0] rom_data;
    
    wire         out_valid;
    wire [4:0]   out_ch;
    wire signed [15:0] out_data;

    // --------------------------------------------------
    // 3. 例化待测设计 (UUT)
    // --------------------------------------------------
    cnn_conv_5x5_layer #(
        .IMG_W(IMG_W),
        .IMG_H(IMG_H),
        .CH_OUT(CH_OUT)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .frame_start(frame_start),
        .frame_done(frame_done),
        .ram_en(ram_en),
        .ram_addr(ram_addr),
        .ram_data(ram_data),
        .rom_addr(rom_addr),
        .rom_data(rom_data),
        .out_valid(out_valid),
        .out_ch(out_ch),
        .out_data(out_data)
    );

    // --------------------------------------------------
    // 4. 模拟片上 RAM (输入图像 28x28 = 784 bits)
    // 注意：当前 RTL 假定 RAM 数据是 0 周期延迟给出的 (组合逻辑)
    // --------------------------------------------------
    reg ram_array [0:1023]; // 开辟稍微大一点的空间防越界
    assign ram_data = ram_array[ram_addr]; 

    // --------------------------------------------------
    // 5. 模拟片上 ROM (权重 30个通道 * 25个8bit)
    // --------------------------------------------------
    reg [199:0] rom_array [0:31];
    assign rom_data = rom_array[rom_addr];

    // --------------------------------------------------
    // 6. 产生时钟与初始化数据
    // --------------------------------------------------
    integer i, j;
    
    initial begin
        // 步骤 A: 填充图像 RAM (全 1 像素)
        for (i = 0; i < 1024; i = i + 1) begin
            ram_array[i] = 1'b1; 
        end

        // 步骤 B: 填充权重 ROM
        // 通道 i 的所有 25 个权重全部赋值为 (i+1)
        for (i = 0; i < 30; i = i + 1) begin
            rom_array[i] = 200'd0;
            for (j = 0; j < 25; j = j + 1) begin
                rom_array[i][(j*8) +: 8] = i + 1; // 语法：从 j*8 开始，位宽 8
            end
        end

        // 步骤 C: 初始化激励信号
        clk = 0;
        rst_n = 0;
        frame_start = 0;

        // 步骤 D: 释放复位
        #100;
        rst_n = 1;
        #20;

        // 步骤 E: 模拟“乒乓缓存”交接脉冲，启动计算
        @(posedge clk);
        frame_start = 1;
        @(posedge clk);
        frame_start = 0;

        $display("-----------------------------------------");
        $display("?? 启动 5x5 CNN 纯硬件加速器仿真...");
        $display("-----------------------------------------");

        // 步骤 F: 挂机等待一帧计算结束
        wait (frame_done == 1'b1);
        
        #100;
        $display("-----------------------------------------");
        $display("? 整帧计算完成 (Frame Done 被触发)！");
        $display("-----------------------------------------");
        $stop; // 暂停仿真
    end

    // 生成 100MHz 像素时钟 (周期 10ns)
    always #5 clk = ~clk;

    // --------------------------------------------------
    // 7. 自动打印监控台 (Self-Checking Monitor)
    // --------------------------------------------------
    integer valid_cnt = 0;
    
    always @(posedge clk) begin
        if (out_valid) begin
            valid_cnt = valid_cnt + 1;
            
            // 为了防止控制台被 17280 条数据刷屏，我们只打印前两组(60个) 和 最后一组数据
            if (valid_cnt <= 60 || valid_cnt >= (24*24*30 - 30)) begin
                $display("[%0t ns] Output #%0d | CH = %0d | Data = %0d", 
                         $time, valid_cnt, out_ch, out_data);
            end
            
            // 可以在坐标系切换时打个空行，方便观测
            if (out_ch == 29) begin
                $display("  -> Spatial Window Processed");
            end
        end
    end

endmodule