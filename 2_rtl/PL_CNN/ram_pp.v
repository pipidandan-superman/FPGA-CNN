//乒乓操作
// 乒乓标志位控制逻辑
reg pingpang_flag;
wire cam_frame_done; // 摄像头写完一帧的高电平脉冲
wire cnn_frame_done; // CNN算完一帧的高电平脉冲

// 简单的握手状态机
reg cam_ready;
reg cnn_ready;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pingpang_flag <= 0;
        cam_ready <= 0;
        cnn_ready <= 0;
    end else begin
        // 抓取完成信号
        if(cam_frame_done) cam_ready <= 1;
        if(cnn_frame_done) cnn_ready <= 1;
        
        // 当双方都准备好时，翻转标志位，并清零 ready 状态
        if(cam_ready && cnn_ready) begin
            pingpang_flag <= ~pingpang_flag;
            cam_ready <= 0;
            cnn_ready <= 0;
        end
    end
end