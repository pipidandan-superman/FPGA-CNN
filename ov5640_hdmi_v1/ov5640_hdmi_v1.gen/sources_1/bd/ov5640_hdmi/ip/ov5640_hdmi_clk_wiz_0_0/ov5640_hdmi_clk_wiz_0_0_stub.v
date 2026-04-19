// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 31 16:52:17 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_clk_wiz_0_0/ov5640_hdmi_clk_wiz_0_0_stub.v
// Design      : ov5640_hdmi_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ov5640_hdmi_clk_wiz_0_0(xclk, pclk, pclkx5, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="xclk,pclk,pclkx5,resetn,locked,clk_in1" */;
  output xclk;
  output pclk;
  output pclkx5;
  input resetn;
  output locked;
  input clk_in1;
endmodule
