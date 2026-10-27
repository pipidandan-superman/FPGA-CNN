//rom_ctrl 仅控制rom 地址还是由其余模块提供，只是数据由他选择后输出
module rom_ctrl
(
    //clk & rst
    input               axi_lite_clk    ,
    input               axi_lite_rst    ,
    input               pclk            ,
    input               pclk_rst        ,
    
    //axi_lite
    input       [31:0]  slv_reg0        ,
    input               slv_reg0_wr_en  ,

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
wire full,empty;
wire [31:0] dout;
reg [31:0] fifo_rd_data_reg;
wire wr_en;
reg rd_en;
assign rom_sel = fifo_rd_data_reg[3:0];
//assign wr_en = (axi_lite_rready & axi_lite_rvalid)?1:0;
always@(posedge pclk)
    if(!pclk_rst)
        rd_en <= 0;
    else if(!empty)
        rd_en <= 1;
    else
        rd_en <= 0;
always@(posedge pclk)
    if(!pclk_rst)
        fifo_rd_data_reg <= 0;
    else if(rd_en)
        fifo_rd_data_reg <= dout;
    else
        fifo_rd_data_reg <= fifo_rd_data_reg;
fifo_generator_0 fifo0 (
  .wr_clk(axi_lite_clk),  // input wire wr_clk
  .wr_rst(~axi_lite_rst),  // input wire wr_rst
  .rd_clk(pclk),  // input wire rd_clk
  .rd_rst(~pclk_rst),  // input wire rd_rst
  .din(slv_reg0 ),        // input wire [31 : 0] din
  .wr_en(slv_reg0_wr_en),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(dout),      // output wire [31 : 0] dout
  .full(full),      // output wire full
  .empty(empty)    // output wire empty
);
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