//****************************************Copyright (c)***********************************//
// Descriptions: ov5640数据采集模块 - 极简硬件适配版
// 1. 省略 cam_rst_n 和 cam_pwdn 输出端口
// 2. 核心逻辑：8-bit DVP 转 24-bit RGB888
// 3. 包含稳定帧计数，防止启动花屏
//****************************************************************************************//

module ov5640_capture_data(
	input 			i_cam_clk,		  //24MHZ摄像头工作时钟
    input           rst_n,            // 全局复位信号，低电平有效
                                       
    // 摄像头硬件接口（仅输入数据与时钟）                       
    input           cam_pclk,         // 摄像头像素时钟
    input           cam_vsync,        // 摄像头场同步信号
    input           cam_href,         // 摄像头行同步信号
    input   [7:0]   cam_data,         // 摄像头8位数据并行总线
	output 			cam_xclk,
                                       
    // 内部视频流接口（用于对接后级逻辑）                        
    output          vid_clk,          // 输出同步时钟（等于pclk）
    output          vid_ce,           // 像素使能信号（每两个时钟周期高一次）
    output          vid_vsync,        // 同步后的场信号
    output          vid_active_video, // 行有效信号（DE）
    output  [23:0]  vid_data          // 转换后的RGB888像素数据
    );
assign cam_xclk = i_cam_clk;
// 稳定性参数：跳过上电初期的不完全帧
parameter WAIT_FRAME = 10;            

// 内部寄存器
reg            rst_n_sync;
reg            rst_n_d0;
reg            cam_vsync_d0, cam_vsync_d1;
reg            cam_href_d0,  cam_href_d1;
reg  [5:0]     frame_cnt;      
reg            wait_done;      
reg  [7:0]     cam_data_d0;
reg            byte_flag;      // 字节选择标志：0-采集高字节，1-采集低字节并拼接
reg            byte_flag_d0;
reg  [15:0]    rgb565_data;

// 信号处理
wire           pos_vsync;
wire [23:0]    rgb888_data;

// 场同步上升沿检测
assign pos_vsync = ~cam_vsync_d1 & cam_vsync_d0;
assign vid_clk   = cam_pclk;

// RGB565 到 RGB888 的位扩展（高位对齐，低位补0）
assign rgb888_data = {rgb565_data[15:11], 3'b0, rgb565_data[10:5], 2'b0, rgb565_data[4:0], 3'b0};

// 数据输出赋值
assign vid_data         = wait_done ? rgb888_data : 24'd0;
assign vid_vsync        = wait_done ? cam_vsync_d1 : 1'd0;
assign vid_active_video = wait_done ? cam_href_d1 : 1'b0;

// 使能信号控制：在行有效期间，每凑齐两个字节产生一个周期的有效像素使能
assign vid_ce = wait_done ? ((byte_flag_d0 & vid_active_video) || (!vid_active_video)) : 1'b0;

// 1. 异步复位，同步释放处理
always @(posedge cam_pclk or negedge rst_n) begin
    if(!rst_n) begin
        rst_n_d0   <= 1'b0;
        rst_n_sync <= 1'b0;
    end
    else begin
        rst_n_d0   <= 1'b1;
        rst_n_sync <= rst_n_d0;
    end
end

// 2. 同步信号打拍
always @(posedge cam_pclk) begin
    cam_vsync_d0 <= cam_vsync;
    cam_vsync_d1 <= cam_vsync_d0;
    cam_href_d0  <= cam_href;
    cam_href_d1  <= cam_href_d0;
end

// 3. 稳定帧计数逻辑
always @(posedge cam_pclk or negedge rst_n_sync) begin
    if(!rst_n_sync) begin
        frame_cnt <= 6'd0;
        wait_done <= 1'b0;
    end
    else if(pos_vsync) begin
        if(frame_cnt < WAIT_FRAME)
            frame_cnt <= frame_cnt + 6'd1;
        else
            wait_done <= 1'b1;
    end
end 

// 4. 8-bit DVP 数据拼接逻辑（重点）
// OV5640 输出顺序通常为：[5位R + 3位G高] -> [3位G低 + 5位B]
always @(posedge cam_pclk or negedge rst_n_sync) begin
    if(!rst_n_sync) begin
        cam_data_d0 <= 8'd0;
        rgb565_data <= 16'd0;
        byte_flag   <= 1'b0;
    end
    else if(cam_href) begin
        byte_flag   <= ~byte_flag; 
        cam_data_d0 <= cam_data;
        if(byte_flag) // 此时收到的是第二个字节
            rgb565_data <= {cam_data_d0, cam_data}; 
    end
    else begin
        byte_flag   <= 1'b0;
        cam_data_d0 <= 8'd0;
    end
end    

// 5. 产生像素使能对齐脉冲
always @(posedge cam_pclk) begin
    byte_flag_d0 <= byte_flag;
end        
    
endmodule