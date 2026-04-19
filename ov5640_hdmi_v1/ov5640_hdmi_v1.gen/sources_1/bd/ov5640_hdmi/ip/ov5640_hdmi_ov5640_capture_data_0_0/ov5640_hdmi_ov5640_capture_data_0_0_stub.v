// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 31 16:52:17 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_capture_data_0_0/ov5640_hdmi_ov5640_capture_data_0_0_stub.v
// Design      : ov5640_hdmi_ov5640_capture_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov5640_capture_data,Vivado 2020.2" *)
module ov5640_hdmi_ov5640_capture_data_0_0(i_cam_clk, rst_n, cam_pclk, cam_vsync, cam_href, 
  cam_data, cam_xclk, vid_clk, vid_ce, vid_vsync, vid_active_video, vid_data)
/* synthesis syn_black_box black_box_pad_pin="i_cam_clk,rst_n,cam_pclk,cam_vsync,cam_href,cam_data[7:0],cam_xclk,vid_clk,vid_ce,vid_vsync,vid_active_video,vid_data[23:0]" */;
  input i_cam_clk;
  input rst_n;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_data;
  output cam_xclk;
  output vid_clk;
  output vid_ce;
  output vid_vsync;
  output vid_active_video;
  output [23:0]vid_data;
endmodule
