// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  4 13:54:50 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pix_frame_display_0_2_stub.v
// Design      : design_1_pix_frame_display_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pix_frame_display,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(vio_clk, sys_rst_n, vio_active, vio_hsync, 
  vio_vsync, vio_data, rom_data, rom_addr, rom_valid, hdmi_data, hdmi_de, hdmi_hsync, hdmi_vsync)
/* synthesis syn_black_box black_box_pad_pin="vio_clk,sys_rst_n,vio_active,vio_hsync,vio_vsync,vio_data[23:0],rom_data,rom_addr[13:0],rom_valid,hdmi_data[23:0],hdmi_de,hdmi_hsync,hdmi_vsync" */;
  input vio_clk;
  input sys_rst_n;
  input vio_active;
  input vio_hsync;
  input vio_vsync;
  input [23:0]vio_data;
  input rom_data;
  output [13:0]rom_addr;
  output rom_valid;
  output [23:0]hdmi_data;
  output hdmi_de;
  output hdmi_hsync;
  output hdmi_vsync;
endmodule
