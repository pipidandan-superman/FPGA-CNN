// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ram_ctrl_lite_0_0_stub.v
// Design      : design_1_ram_ctrl_lite_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ram_ctrl_lite,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pclk, rst_n, pool_valid, pool_data, cam_we, 
  cam_addr, cam_data, cam_done)
/* synthesis syn_black_box black_box_pad_pin="pclk,rst_n,pool_valid,pool_data,cam_we,cam_addr[9:0],cam_data,cam_done" */;
  input pclk;
  input rst_n;
  input pool_valid;
  input pool_data;
  output cam_we;
  output [9:0]cam_addr;
  output cam_data;
  output cam_done;
endmodule
