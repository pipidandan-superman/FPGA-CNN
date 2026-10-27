//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun May  3 09:37:14 2026
//Host        : HC-202510241838 running 64-bit major release  (build 9200)
//Command     : generate_target axi_lite_v1_0_bfm_1_wrapper.bd
//Design      : axi_lite_v1_0_bfm_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_lite_v1_0_bfm_1_wrapper
   (ACLK,
    ARESETN);
  input ACLK;
  input ARESETN;

  wire ACLK;
  wire ARESETN;

  axi_lite_v1_0_bfm_1 axi_lite_v1_0_bfm_1_i
       (.ACLK(ACLK),
        .ARESETN(ARESETN));
endmodule
