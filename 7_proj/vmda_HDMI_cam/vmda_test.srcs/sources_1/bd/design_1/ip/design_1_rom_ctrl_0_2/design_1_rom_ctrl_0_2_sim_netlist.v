// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:51:17 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rom_ctrl_0_2_sim_netlist.v
// Design      : design_1_rom_ctrl_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rom_ctrl_0_2,rom_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rom_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pclk,
    pclk_rst,
    dout,
    empty,
    rd_en,
    rom_data0,
    rom_data1,
    rom_data2,
    rom_data3,
    rom_data4,
    rom_data5,
    rom_data6,
    rom_data7,
    rom_data8,
    rom_data9,
    rom_data_out);
  input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 pclk_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input pclk_rst;
  input [31:0]dout;
  input empty;
  output rd_en;
  input rom_data0;
  input rom_data1;
  input rom_data2;
  input rom_data3;
  input rom_data4;
  input rom_data5;
  input rom_data6;
  input rom_data7;
  input rom_data8;
  input rom_data9;
  output rom_data_out;

  wire [31:0]dout;
  wire empty;
  wire pclk;
  wire pclk_rst;
  wire rd_en;
  wire rom_data0;
  wire rom_data1;
  wire rom_data2;
  wire rom_data3;
  wire rom_data4;
  wire rom_data5;
  wire rom_data6;
  wire rom_data7;
  wire rom_data8;
  wire rom_data9;
  wire rom_data_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl inst
       (.dout(dout[3:0]),
        .empty(empty),
        .pclk(pclk),
        .pclk_rst(pclk_rst),
        .rom_data0(rom_data0),
        .rom_data1(rom_data1),
        .rom_data2(rom_data2),
        .rom_data3(rom_data3),
        .rom_data4(rom_data4),
        .rom_data5(rom_data5),
        .rom_data6(rom_data6),
        .rom_data7(rom_data7),
        .rom_data8(rom_data8),
        .rom_data9(rom_data9),
        .rom_data_out(rom_data_out));
  LUT2 #(
    .INIT(4'h2)) 
    rd_en_INST_0
       (.I0(pclk_rst),
        .I1(empty),
        .O(rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl
   (rom_data_out,
    pclk_rst,
    empty,
    rom_data8,
    rom_data9,
    dout,
    pclk,
    rom_data3,
    rom_data2,
    rom_data1,
    rom_data0,
    rom_data7,
    rom_data6,
    rom_data5,
    rom_data4);
  output rom_data_out;
  input pclk_rst;
  input empty;
  input rom_data8;
  input rom_data9;
  input [3:0]dout;
  input pclk;
  input rom_data3;
  input rom_data2;
  input rom_data1;
  input rom_data0;
  input rom_data7;
  input rom_data6;
  input rom_data5;
  input rom_data4;

  wire [3:0]dout;
  wire empty;
  wire [3:0]fifo_rd_data_reg;
  wire \fifo_rd_data_reg[3]_i_2_n_0 ;
  wire p_0_in;
  wire pclk;
  wire pclk_rst;
  wire rom_data0;
  wire rom_data1;
  wire rom_data2;
  wire rom_data3;
  wire rom_data4;
  wire rom_data5;
  wire rom_data6;
  wire rom_data7;
  wire rom_data8;
  wire rom_data9;
  wire rom_data_out;
  wire rom_data_out_INST_0_i_1_n_0;
  wire rom_data_out_INST_0_i_2_n_0;
  wire rom_data_out_INST_0_i_3_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \fifo_rd_data_reg[3]_i_1 
       (.I0(pclk_rst),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_rd_data_reg[3]_i_2 
       (.I0(empty),
        .O(\fifo_rd_data_reg[3]_i_2_n_0 ));
  FDRE \fifo_rd_data_reg_reg[0] 
       (.C(pclk),
        .CE(\fifo_rd_data_reg[3]_i_2_n_0 ),
        .D(dout[0]),
        .Q(fifo_rd_data_reg[0]),
        .R(p_0_in));
  FDRE \fifo_rd_data_reg_reg[1] 
       (.C(pclk),
        .CE(\fifo_rd_data_reg[3]_i_2_n_0 ),
        .D(dout[1]),
        .Q(fifo_rd_data_reg[1]),
        .R(p_0_in));
  FDRE \fifo_rd_data_reg_reg[2] 
       (.C(pclk),
        .CE(\fifo_rd_data_reg[3]_i_2_n_0 ),
        .D(dout[2]),
        .Q(fifo_rd_data_reg[2]),
        .R(p_0_in));
  FDRE \fifo_rd_data_reg_reg[3] 
       (.C(pclk),
        .CE(\fifo_rd_data_reg[3]_i_2_n_0 ),
        .D(dout[3]),
        .Q(fifo_rd_data_reg[3]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rom_data_out_INST_0
       (.I0(rom_data_out_INST_0_i_1_n_0),
        .I1(fifo_rd_data_reg[3]),
        .I2(rom_data_out_INST_0_i_2_n_0),
        .I3(fifo_rd_data_reg[2]),
        .I4(rom_data_out_INST_0_i_3_n_0),
        .O(rom_data_out));
  LUT5 #(
    .INIT(32'h000000E2)) 
    rom_data_out_INST_0_i_1
       (.I0(rom_data8),
        .I1(fifo_rd_data_reg[0]),
        .I2(rom_data9),
        .I3(fifo_rd_data_reg[2]),
        .I4(fifo_rd_data_reg[1]),
        .O(rom_data_out_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rom_data_out_INST_0_i_2
       (.I0(rom_data7),
        .I1(rom_data6),
        .I2(fifo_rd_data_reg[1]),
        .I3(rom_data5),
        .I4(fifo_rd_data_reg[0]),
        .I5(rom_data4),
        .O(rom_data_out_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rom_data_out_INST_0_i_3
       (.I0(rom_data3),
        .I1(rom_data2),
        .I2(fifo_rd_data_reg[1]),
        .I3(rom_data1),
        .I4(fifo_rd_data_reg[0]),
        .I5(rom_data0),
        .O(rom_data_out_INST_0_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
