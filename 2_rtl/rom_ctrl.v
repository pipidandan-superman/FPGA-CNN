//rom_ctrl 模块：从FIFO读取数据并选择ROM输出
module rom_ctrl
(
    //clk & rst
    input               pclk            ,
    input               pclk_rst        ,

    //axi_lite
    input       [31:0]  dout            ,
    input               empty           ,
    output wire         rd_en           ,

	input 		        rom_data0	    ,
	input 		        rom_data1	    ,
	input 		        rom_data2	    ,
	input 		        rom_data3	    ,
	input 		        rom_data4	    ,
	input 		        rom_data5	    ,
	input 		        rom_data6	    ,
	input 		        rom_data7	    ,
	input 		        rom_data8	    ,
	input 		        rom_data9	    ,

	//input      [3:0]    rom_sel		    ,
	output reg 		    rom_data_out
);
wire [3:0] rom_sel;
reg [31:0] fifo_rd_data_reg;

// rom_sel直接来自寄存器输出
assign rom_sel = fifo_rd_data_reg[3:0];

// rd_en改为组合逻辑：当FIFO非空且有有效时钟时使能
assign rd_en = !empty && pclk_rst;

// 数据锁存：当rd_en有效时锁存FIFO输出数据
always@(posedge pclk) begin
    if(!pclk_rst)
        fifo_rd_data_reg <= 0;
    else if(rd_en)
        fifo_rd_data_reg <= dout;
end

// ROM选择：根据rom_sel选择对应数字ROM的数据
always@(*)
	case(rom_sel)
	0:rom_data_out = rom_data0;
	1:rom_data_out = rom_data1;
	2:rom_data_out = rom_data2;
	3:rom_data_out = rom_data3;
	4:rom_data_out = rom_data4;
	5:rom_data_out = rom_data5;
	6:rom_data_out = rom_data6;
	7:rom_data_out = rom_data7;
	8:rom_data_out = rom_data8;
	9:rom_data_out = rom_data9;
	default:rom_data_out = 0;
	endcase
endmodule
