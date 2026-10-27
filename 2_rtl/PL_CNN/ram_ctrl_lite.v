// 改造后的极简 ram_ctrl
module ram_ctrl_lite #(
    parameter TOTAL_PIXELS = 784 // 28 * 28
)(
    input  wire        pclk,
    input  wire        rst_n,
    input  wire        pool_valid,
    input  wire        pool_data,
    
    // 直连 pp_ram_ctrl
    output wire        cam_we,
    output reg  [9:0]  cam_addr, // 改为 10-bit
    output wire        cam_data,
    output reg         cam_done  // 替换掉原来的 ps_intr
);

assign cam_we   = pool_valid;
assign cam_data = pool_data; // 1-bit 直通

always @(posedge pclk or negedge rst_n) begin
    if(!rst_n) begin
        cam_addr <= 10'd0;
        cam_done <= 1'b0;
    end
    else begin
        cam_done <= 1'b0;
        if(pool_valid) begin
            if(cam_addr == TOTAL_PIXELS - 1) begin
                cam_addr <= 10'd0; // 回卷
                cam_done <= 1'b1;  // 写完一帧，触发脉冲
            end else begin
                cam_addr <= cam_addr + 1'b1; // 步长改为 1
            end
        end
    end
end
endmodule