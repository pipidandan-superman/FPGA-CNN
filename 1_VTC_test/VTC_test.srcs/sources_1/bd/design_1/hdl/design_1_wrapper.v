//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Apr  6 08:41:12 2026
//Host        : HC-202510241838 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (TMDS_clk_n_0,
    TMDS_clk_p_0,
    TMDS_data_n_0,
    TMDS_data_p_0,
    clk_in1_0,
    hdmi_en_0);
  output TMDS_clk_n_0;
  output TMDS_clk_p_0;
  output [2:0]TMDS_data_n_0;
  output [2:0]TMDS_data_p_0;
  input clk_in1_0;
  output hdmi_en_0;

  wire TMDS_clk_n_0;
  wire TMDS_clk_p_0;
  wire [2:0]TMDS_data_n_0;
  wire [2:0]TMDS_data_p_0;
  wire clk_in1_0;
  wire hdmi_en_0;

  design_1 design_1_i
       (.TMDS_clk_n_0(TMDS_clk_n_0),
        .TMDS_clk_p_0(TMDS_clk_p_0),
        .TMDS_data_n_0(TMDS_data_n_0),
        .TMDS_data_p_0(TMDS_data_p_0),
        .clk_in1_0(clk_in1_0),
        .hdmi_en_0(hdmi_en_0));
endmodule
