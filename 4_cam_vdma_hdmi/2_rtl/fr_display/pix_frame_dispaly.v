//显示识别区域边框 
//识别典型数据大小为 28*28
//过小 扩大识别区域后下采样 设置为 112*112（28*4）
//本身显示分辨率为 640*480
module pix_frame_display
#(
	parameter H_SIZE  = 640 ,
	parameter V_SIZE  = 480 ,
	parameter FR_SIZE = 112  //28*4
)
(
	input  			vio_clk		,
	input  			sys_rst_n	,
	input  			vio_active	,
	input  			vio_hsync	,
	input  			vio_vsync	,
	input  [23:0] 	vio_data	,
	output [23:0] 	hdmi_data
);
//信号定义
reg [9:0] h_cnt;
reg [9:0] v_cnt;
reg rst_n0,rst_sync;
//异步复位 同步释放
always@(posedge vio_clk or negedge sys_rst_n)
	if(!sys_rst_n)begin
		rst_n0 <= 0;
		rst_sync <= 0;
	end
	else begin
		rst_n0 <= 1;
		rst_sync <= rst_n0;
	end
		

//行计数器 0-639
always@(posedge vio_clk or negedge rst_sync)
	if(!rst_sync)
		h_cnt <= 0;
	else if(vio_hsync)
		h_cnt <= 0;
	else if(vio_active)begin
		if(h_cnt >= H_SIZE-1)
			h_cnt <= 0;
		else
			h_cnt <= h_cnt+1;
	end
	else 
		h_cnt <= 0;
//场计数器 0-479
always@(posedge vio_clk or negedge rst_sync)
	if(!rst_sync)
		v_cnt <= 0;
	else if(vio_vsync)
		v_cnt <= 0;
	else if(h_cnt == H_SIZE-1 && vio_active == 1)begin
		if(v_cnt >= V_SIZE-1)
			v_cnt <= 0;
		else
			v_cnt <= v_cnt+1;
	end

//时序逻辑表达会导致整体少显示一列像素
//边框识别 黑线表达
//边框内部 白色表达-暂未表达
/*
wire fr_in；
assign fr_in； = (vio_active && h_cnt <= FR_SIZE-1 && v_cnt <= FR_SIZE-1)?1:0; 
*/
//边框外部 正常表达-摄像头数据
always@(posedge vio_clk or negedge rst_sync)
	if(!rst_sync)
		hdmi_data <= 0;
	else if(h_cnt == FR_SIZE-1 && v_cnt <= FR_SIZE-1)
		hdmi_data <= 0;
	else if(h_cnt <= FR_SIZE-1 && v_cnt == FR_SIZE-1)
		hdmi_data <= 0;
	else if(vio_active)
		hdmi_data <= vio_data;
	else
		hdmi_data <= 0;

endmodule