// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 19 13:52:38 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_data_gen_0_0/design_1_data_gen_0_0_stub.v
// Design      : design_1_data_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_gen,Vivado 2020.2" *)
module design_1_data_gen_0_0(data_i, de, data_r_o, data_g_o, data_b_o)
/* synthesis syn_black_box black_box_pad_pin="data_i[23:0],de,data_r_o[7:0],data_g_o[7:0],data_b_o[7:0]" */;
  input [23:0]data_i;
  input de;
  output [7:0]data_r_o;
  output [7:0]data_g_o;
  output [7:0]data_b_o;
endmodule
