// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:08:52 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rom_ctrl_0_1_stub.v
// Design      : design_1_rom_ctrl_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rom_ctrl,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axi_lite_clk, axi_lite_rst, pclk, pclk_rst, 
  slv_reg0, slv_reg0_wr_en, rom_data0, rom_data1, rom_data2, rom_data3, rom_data4, rom_data5, 
  rom_data6, rom_data7, rom_data8, rom_data9, rom_data_out)
/* synthesis syn_black_box black_box_pad_pin="axi_lite_clk,axi_lite_rst,pclk,pclk_rst,slv_reg0[31:0],slv_reg0_wr_en,rom_data0,rom_data1,rom_data2,rom_data3,rom_data4,rom_data5,rom_data6,rom_data7,rom_data8,rom_data9,rom_data_out" */;
  input axi_lite_clk;
  input axi_lite_rst;
  input pclk;
  input pclk_rst;
  input [31:0]slv_reg0;
  input slv_reg0_wr_en;
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
endmodule
