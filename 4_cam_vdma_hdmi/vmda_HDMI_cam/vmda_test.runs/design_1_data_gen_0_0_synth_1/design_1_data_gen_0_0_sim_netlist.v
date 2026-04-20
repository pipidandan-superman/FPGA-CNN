// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 19 13:52:38 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_data_gen_0_0_sim_netlist.v
// Design      : design_1_data_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen
   (data_r_o,
    data_g_o,
    de,
    data_i);
  output [7:0]data_r_o;
  output [7:0]data_g_o;
  input de;
  input [15:0]data_i;

  wire [7:0]data_g_o;
  wire [15:0]data_i;
  wire [7:0]data_r_o;
  wire de;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[0]_INST_0 
       (.I0(de),
        .I1(data_i[0]),
        .O(data_g_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[1]_INST_0 
       (.I0(de),
        .I1(data_i[1]),
        .O(data_g_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[2]_INST_0 
       (.I0(de),
        .I1(data_i[2]),
        .O(data_g_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[3]_INST_0 
       (.I0(de),
        .I1(data_i[3]),
        .O(data_g_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[4]_INST_0 
       (.I0(de),
        .I1(data_i[4]),
        .O(data_g_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[5]_INST_0 
       (.I0(de),
        .I1(data_i[5]),
        .O(data_g_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[6]_INST_0 
       (.I0(de),
        .I1(data_i[6]),
        .O(data_g_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_g_o[7]_INST_0 
       (.I0(de),
        .I1(data_i[7]),
        .O(data_g_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[0]_INST_0 
       (.I0(de),
        .I1(data_i[8]),
        .O(data_r_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[1]_INST_0 
       (.I0(de),
        .I1(data_i[9]),
        .O(data_r_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[2]_INST_0 
       (.I0(de),
        .I1(data_i[10]),
        .O(data_r_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[3]_INST_0 
       (.I0(de),
        .I1(data_i[11]),
        .O(data_r_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[4]_INST_0 
       (.I0(de),
        .I1(data_i[12]),
        .O(data_r_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[5]_INST_0 
       (.I0(de),
        .I1(data_i[13]),
        .O(data_r_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[6]_INST_0 
       (.I0(de),
        .I1(data_i[14]),
        .O(data_r_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_r_o[7]_INST_0 
       (.I0(de),
        .I1(data_i[15]),
        .O(data_r_o[7]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_data_gen_0_0,data_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "data_gen,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_i,
    de,
    data_r_o,
    data_g_o,
    data_b_o);
  input [23:0]data_i;
  input de;
  output [7:0]data_r_o;
  output [7:0]data_g_o;
  output [7:0]data_b_o;

  wire [7:0]data_b_o;
  wire [7:0]data_g_o;
  wire [23:0]data_i;
  wire [7:0]data_r_o;
  wire de;

  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[0]_INST_0 
       (.I0(de),
        .I1(data_i[0]),
        .O(data_b_o[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[1]_INST_0 
       (.I0(de),
        .I1(data_i[1]),
        .O(data_b_o[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[2]_INST_0 
       (.I0(de),
        .I1(data_i[2]),
        .O(data_b_o[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[3]_INST_0 
       (.I0(de),
        .I1(data_i[3]),
        .O(data_b_o[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[4]_INST_0 
       (.I0(de),
        .I1(data_i[4]),
        .O(data_b_o[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[5]_INST_0 
       (.I0(de),
        .I1(data_i[5]),
        .O(data_b_o[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[6]_INST_0 
       (.I0(de),
        .I1(data_i[6]),
        .O(data_b_o[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_b_o[7]_INST_0 
       (.I0(de),
        .I1(data_i[7]),
        .O(data_b_o[7]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen inst
       (.data_g_o(data_g_o),
        .data_i(data_i[23:8]),
        .data_r_o(data_r_o),
        .de(de));
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
