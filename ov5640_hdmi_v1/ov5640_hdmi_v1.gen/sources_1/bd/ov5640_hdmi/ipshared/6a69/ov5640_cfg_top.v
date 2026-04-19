module ov5640_cfg_top
#(
    parameter CAM_HSIZE = 640,
    parameter CAM_VSIZE = 480,
    parameter SCCB_DIV  = 500
)
(
	input 	sys_clk			,
	input 	sys_rst_n		,
	
	output 	sccb_scl		,
	inout 	sccb_sda		
	//output 	sccb_cfg_done	
);
//复位延迟
reg[7:0] rst_cnt;
always@(posedge sys_clk or negedge sys_rst_n)  
    if(!sys_rst_n) //复位初始化寄存器
        rst_cnt<= 8'd0; 
    else if(rst_cnt[7] == 1'b0)
       rst_cnt <= rst_cnt + 1'b1; 
    else 
       rst_cnt <= rst_cnt; 

wire        sccb_cfg_done;
reg  [8:0]	 reg_index;//reg_index 寄存器标号
wire [23:0]  REG_DATA ;//SCCB传输数据
wire [8 :0]  REG_SIZE ;//总共写数据次数

reg [15:0]      reg_addr   ;
reg              write_en   ;
reg  [7:0]      write_byte ;
reg  [7:0]      write_data ;
wire            write_done;

always@(posedge sys_clk or negedge sys_rst_n) 
    if(!sys_rst_n)begin
        reg_addr   <= 0;
		write_en   <= 0;
	    write_byte <= 0;
	    write_data <= 0;
	    reg_index  <= 0;
    end
    else if(rst_cnt[7] == 1'b0)begin
		reg_addr   <= 0;
		write_en   <= 0;
	    write_byte <= 0;
	    write_data <= 0;
	    reg_index  <= 0;
	end
	else begin
		if(sccb_cfg_done == 0)begin
			reg_addr   <= REG_DATA[23:8];
			write_en   <= 1		   		;
			write_byte <= REG_SIZE		;
			write_data <= REG_DATA[7:0] ;
			if(write_done)
			 reg_index <= reg_index+1;
			else
			 reg_index <= reg_index;
		end
		else begin
			reg_addr   <= 0;
			write_en   <= 0;
			write_byte <= 0;
		    write_data <= 0;
		    reg_index <= 0;
		end
	end

//SCCB协议例化
sccb_protocol
#(
    .DEV_write (8'h78),
    .DEV_read  (8'h79),
    .CLK_DIV   (SCCB_DIV)	//100Khz
)
u_sccb_protocol
(
    .sys_clk    		(sys_clk   ),
    .sys_rst_n  		(sys_rst_n ),
			
	//W-R CTRL		
	.reg_addr   		(reg_addr  ),//input [15:0] reg_addr   	OV5640寄存器地址		  	
    .write_en   		(write_en  ),//input        write_en   	写使能                   	
	.write_byte			(write_byte),//input  [7:0] write_byte	写的数据总数		
    .write_data 		(write_data),//input  [7:0] write_data 	写数据                         	
	.write_done 		(write_done),//output       write_done 	一次写完			                  	
	.read_en    		(),//input        read_en    	                         	
    .read_data  		(),//output [7:0] read_data  	                         	
    .read_done  		(),//output       read_done  	                         	
			
	//SCCB interface		
    .sccb_clk   		(sccb_scl		),
    .sccb_sda			(sccb_sda		),
	.sccb_cfg_done      (sccb_cfg_done	)
);

//OV5640寄存器配置
ui5640reg
#(
	.CAM_HSIZE(CAM_HSIZE),
	.CAM_VSIZE(CAM_VSIZE)
)
u_ui5640reg
(
.REG_INDEX(reg_index),//input      [8 :0]  REG_INDEX
.REG_DATA (REG_DATA),//output reg [23:0]  REG_DATA 	{16’h寄存器地址，8‘h寄存器数据}
.REG_SIZE (REG_SIZE) //output     [8 :0]  REG_SIZE 
);
endmodule