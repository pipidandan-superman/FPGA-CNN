// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pool_to_ps_ram_ctrl_0_0_stub.v
// Design      : design_1_pool_to_ps_ram_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pool_to_ps_ram_ctrl,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, pool_valid, pool_data, pool_ch, 
  bram_en, bram_we, bram_addr, bram_wdata, ps_intr)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,pool_valid,pool_data[15:0],pool_ch[4:0],bram_en,bram_we[3:0],bram_addr[31:0],bram_wdata[31:0],ps_intr" */;
  input clk;
  input rst_n;
  input pool_valid;
  input [15:0]pool_data;
  input [4:0]pool_ch;
  output bram_en;
  output [3:0]bram_we;
  output [31:0]bram_addr;
  output [31:0]bram_wdata;
  output ps_intr;
endmodule
