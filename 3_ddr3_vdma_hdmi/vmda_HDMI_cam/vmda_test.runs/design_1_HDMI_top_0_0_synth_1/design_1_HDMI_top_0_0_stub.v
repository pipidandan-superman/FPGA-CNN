// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Apr  5 14:57:36 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_HDMI_top_0_0_stub.v
// Design      : design_1_HDMI_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "HDMI_top,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pix_clk, pix_clk_x5, rst_n, h_sync, v_sync, 
  red_data, green_data, blue_data, de, TMDS_clk_p, TMDS_clk_n, TMDS_data_p, TMDS_data_n, hdmi_en)
/* synthesis syn_black_box black_box_pad_pin="pix_clk,pix_clk_x5,rst_n,h_sync,v_sync,red_data[7:0],green_data[7:0],blue_data[7:0],de,TMDS_clk_p,TMDS_clk_n,TMDS_data_p[2:0],TMDS_data_n[2:0],hdmi_en" */;
  input pix_clk;
  input pix_clk_x5;
  input rst_n;
  input h_sync;
  input v_sync;
  input [7:0]red_data;
  input [7:0]green_data;
  input [7:0]blue_data;
  input de;
  output TMDS_clk_p;
  output TMDS_clk_n;
  output [2:0]TMDS_data_p;
  output [2:0]TMDS_data_n;
  output hdmi_en;
endmodule
