// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnn_maxpool_2x2_0_0_stub.v
// Design      : design_1_cnn_maxpool_2x2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnn_maxpool_2x2,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, in_valid, in_data, in_ch, out_valid, 
  out_data, out_ch)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,in_valid,in_data[15:0],in_ch[4:0],out_valid,out_data[15:0],out_ch[4:0]" */;
  input clk;
  input rst_n;
  input in_valid;
  input [15:0]in_data;
  input [4:0]in_ch;
  output out_valid;
  output [15:0]out_data;
  output [4:0]out_ch;
endmodule
