// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ram_ctrl_lite_0_0_sim_netlist.v
// Design      : design_1_ram_ctrl_lite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ram_ctrl_lite_0_0,ram_ctrl_lite,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ram_ctrl_lite,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pclk,
    rst_n,
    pool_valid,
    pool_data,
    cam_we,
    cam_addr,
    cam_data,
    cam_done);
  input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input pool_valid;
  input pool_data;
  output cam_we;
  output [9:0]cam_addr;
  output cam_data;
  output cam_done;

  wire [9:0]cam_addr;
  wire cam_done;
  wire pclk;
  wire pool_data;
  wire pool_valid;
  wire rst_n;

  assign cam_data = pool_data;
  assign cam_we = pool_valid;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite inst
       (.cam_addr(cam_addr),
        .cam_done(cam_done),
        .pclk(pclk),
        .pool_valid(pool_valid),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite
   (cam_addr,
    cam_done,
    pool_valid,
    pclk,
    rst_n);
  output [9:0]cam_addr;
  output cam_done;
  input pool_valid;
  input pclk;
  input rst_n;

  wire [9:0]cam_addr;
  wire \cam_addr[8]_i_2_n_0 ;
  wire \cam_addr[8]_i_3_n_0 ;
  wire \cam_addr[8]_i_4_n_0 ;
  wire \cam_addr[9]_i_2_n_0 ;
  wire \cam_addr[9]_i_3_n_0 ;
  wire [9:0]cam_addr_0;
  wire cam_done;
  wire cam_done_i_1_n_0;
  wire pclk;
  wire pool_valid;
  wire rst_n;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cam_addr[0]_i_1 
       (.I0(cam_addr[0]),
        .O(cam_addr_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cam_addr[1]_i_1 
       (.I0(cam_addr[1]),
        .I1(cam_addr[0]),
        .O(cam_addr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cam_addr[2]_i_1 
       (.I0(cam_addr[2]),
        .I1(cam_addr[0]),
        .I2(cam_addr[1]),
        .O(cam_addr_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cam_addr[3]_i_1 
       (.I0(cam_addr[3]),
        .I1(cam_addr[1]),
        .I2(cam_addr[0]),
        .I3(cam_addr[2]),
        .O(cam_addr_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF00D)) 
    \cam_addr[4]_i_1 
       (.I0(cam_addr[8]),
        .I1(\cam_addr[8]_i_2_n_0 ),
        .I2(cam_addr[4]),
        .I3(\cam_addr[8]_i_4_n_0 ),
        .O(cam_addr_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0F00DD0)) 
    \cam_addr[5]_i_1 
       (.I0(cam_addr[8]),
        .I1(\cam_addr[8]_i_2_n_0 ),
        .I2(cam_addr[5]),
        .I3(cam_addr[4]),
        .I4(\cam_addr[8]_i_4_n_0 ),
        .O(cam_addr_0[5]));
  LUT6 #(
    .INIT(64'hF0F0F0F00DD0D0D0)) 
    \cam_addr[6]_i_1 
       (.I0(cam_addr[8]),
        .I1(\cam_addr[8]_i_2_n_0 ),
        .I2(cam_addr[6]),
        .I3(cam_addr[5]),
        .I4(cam_addr[4]),
        .I5(\cam_addr[8]_i_4_n_0 ),
        .O(cam_addr_0[6]));
  LUT6 #(
    .INIT(64'hF0F0F0F00DD0D0D0)) 
    \cam_addr[7]_i_1 
       (.I0(cam_addr[8]),
        .I1(\cam_addr[8]_i_2_n_0 ),
        .I2(cam_addr[7]),
        .I3(cam_addr[6]),
        .I4(\cam_addr[8]_i_3_n_0 ),
        .I5(\cam_addr[8]_i_4_n_0 ),
        .O(cam_addr_0[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC38888888)) 
    \cam_addr[8]_i_1 
       (.I0(\cam_addr[8]_i_2_n_0 ),
        .I1(cam_addr[8]),
        .I2(\cam_addr[8]_i_3_n_0 ),
        .I3(cam_addr[6]),
        .I4(cam_addr[7]),
        .I5(\cam_addr[8]_i_4_n_0 ),
        .O(cam_addr_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \cam_addr[8]_i_2 
       (.I0(cam_addr[4]),
        .I1(cam_addr[7]),
        .I2(cam_addr[9]),
        .I3(cam_addr[6]),
        .I4(cam_addr[5]),
        .O(\cam_addr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cam_addr[8]_i_3 
       (.I0(cam_addr[4]),
        .I1(cam_addr[5]),
        .O(\cam_addr[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cam_addr[8]_i_4 
       (.I0(cam_addr[2]),
        .I1(cam_addr[0]),
        .I2(cam_addr[1]),
        .I3(cam_addr[3]),
        .O(\cam_addr[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAA8)) 
    \cam_addr[9]_i_1 
       (.I0(cam_addr[9]),
        .I1(cam_addr[4]),
        .I2(cam_addr[5]),
        .I3(cam_addr[6]),
        .I4(cam_addr[7]),
        .I5(\cam_addr[9]_i_3_n_0 ),
        .O(cam_addr_0[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \cam_addr[9]_i_2 
       (.I0(rst_n),
        .O(\cam_addr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cam_addr[9]_i_3 
       (.I0(cam_addr[3]),
        .I1(cam_addr[1]),
        .I2(cam_addr[0]),
        .I3(cam_addr[2]),
        .I4(cam_addr[8]),
        .O(\cam_addr[9]_i_3_n_0 ));
  FDCE \cam_addr_reg[0] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[0]),
        .Q(cam_addr[0]));
  FDCE \cam_addr_reg[1] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[1]),
        .Q(cam_addr[1]));
  FDCE \cam_addr_reg[2] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[2]),
        .Q(cam_addr[2]));
  FDCE \cam_addr_reg[3] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[3]),
        .Q(cam_addr[3]));
  FDCE \cam_addr_reg[4] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[4]),
        .Q(cam_addr[4]));
  FDCE \cam_addr_reg[5] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[5]),
        .Q(cam_addr[5]));
  FDCE \cam_addr_reg[6] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[6]),
        .Q(cam_addr[6]));
  FDCE \cam_addr_reg[7] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[7]),
        .Q(cam_addr[7]));
  FDCE \cam_addr_reg[8] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[8]),
        .Q(cam_addr[8]));
  FDCE \cam_addr_reg[9] 
       (.C(pclk),
        .CE(pool_valid),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_addr_0[9]),
        .Q(cam_addr[9]));
  LUT4 #(
    .INIT(16'h0020)) 
    cam_done_i_1
       (.I0(pool_valid),
        .I1(\cam_addr[8]_i_4_n_0 ),
        .I2(cam_addr[8]),
        .I3(\cam_addr[8]_i_2_n_0 ),
        .O(cam_done_i_1_n_0));
  FDCE cam_done_reg
       (.C(pclk),
        .CE(1'b1),
        .CLR(\cam_addr[9]_i_2_n_0 ),
        .D(cam_done_i_1_n_0),
        .Q(cam_done));
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
