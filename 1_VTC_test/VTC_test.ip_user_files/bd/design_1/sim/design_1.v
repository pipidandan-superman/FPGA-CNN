//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Apr  6 08:41:12 2026
//Host        : HC-202510241838 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (TMDS_clk_n_0,
    TMDS_clk_p_0,
    TMDS_data_n_0,
    TMDS_data_p_0,
    clk_in1_0,
    hdmi_en_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_N_0, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output TMDS_clk_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_P_0, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output TMDS_clk_p_0;
  output [2:0]TMDS_data_n_0;
  output [2:0]TMDS_data_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  output hdmi_en_0;

  wire HDMI_top_0_TMDS_clk_n;
  wire HDMI_top_0_TMDS_clk_p;
  wire [2:0]HDMI_top_0_TMDS_data_n;
  wire [2:0]HDMI_top_0_TMDS_data_p;
  wire HDMI_top_0_hdmi_en;
  wire clk_in1_0_1;
  wire clk_wiz_0_locked;
  wire clk_wiz_0_pclk;
  wire clk_wiz_0_pclk_x5;
  wire [7:0]data_gen_0_data_b_o;
  wire [7:0]data_gen_0_data_g_o;
  wire [7:0]data_gen_0_data_r_o;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vsync_out;
  wire [23:0]vio_0_probe_out0;

  assign TMDS_clk_n_0 = HDMI_top_0_TMDS_clk_n;
  assign TMDS_clk_p_0 = HDMI_top_0_TMDS_clk_p;
  assign TMDS_data_n_0[2:0] = HDMI_top_0_TMDS_data_n;
  assign TMDS_data_p_0[2:0] = HDMI_top_0_TMDS_data_p;
  assign clk_in1_0_1 = clk_in1_0;
  assign hdmi_en_0 = HDMI_top_0_hdmi_en;
  design_1_HDMI_top_0_0 HDMI_top_0
       (.TMDS_clk_n(HDMI_top_0_TMDS_clk_n),
        .TMDS_clk_p(HDMI_top_0_TMDS_clk_p),
        .TMDS_data_n(HDMI_top_0_TMDS_data_n),
        .TMDS_data_p(HDMI_top_0_TMDS_data_p),
        .blue_data(data_gen_0_data_b_o),
        .de(v_tc_0_active_video_out),
        .green_data(data_gen_0_data_g_o),
        .h_sync(v_tc_0_hsync_out),
        .hdmi_en(HDMI_top_0_hdmi_en),
        .pix_clk(clk_wiz_0_pclk),
        .pix_clk_x5(clk_wiz_0_pclk_x5),
        .red_data(data_gen_0_data_r_o),
        .rst_n(clk_wiz_0_locked),
        .v_sync(v_tc_0_vsync_out));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .locked(clk_wiz_0_locked),
        .pclk(clk_wiz_0_pclk),
        .pclk_x5(clk_wiz_0_pclk_x5));
  design_1_data_gen_0_0 data_gen_0
       (.data_b_o(data_gen_0_data_b_o),
        .data_g_o(data_gen_0_data_g_o),
        .data_i(vio_0_probe_out0),
        .data_r_o(data_gen_0_data_r_o),
        .de(v_tc_0_active_video_out));
  design_1_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_active_video_out),
        .clk(clk_wiz_0_pclk),
        .clken(clk_wiz_0_locked),
        .gen_clken(clk_wiz_0_locked),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(clk_wiz_0_locked),
        .sof_state(1'b0),
        .vsync_out(v_tc_0_vsync_out));
  design_1_vio_0_0 vio_0
       (.clk(clk_wiz_0_pclk),
        .probe_out0(vio_0_probe_out0));
endmodule
