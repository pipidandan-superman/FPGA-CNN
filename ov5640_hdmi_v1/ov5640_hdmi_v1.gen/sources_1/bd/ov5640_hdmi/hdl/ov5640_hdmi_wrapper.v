//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Mar 31 17:29:59 2026
//Host        : HC-202510241838 running 64-bit major release  (build 9200)
//Command     : generate_target ov5640_hdmi_wrapper.bd
//Design      : ov5640_hdmi_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ov5640_hdmi_wrapper
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    cam_data_0,
    cam_href_0,
    cam_pclk_0,
    cam_vsync_0,
    sccb_scl_0,
    sccb_sda_0,
    sys_clk_0,
    sys_rst_n_0,
    tmds_clk_n_0,
    tmds_clk_p_0,
    tmds_data_n_0,
    tmds_data_p_0);
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [3:0]DDR_0_dm;
  inout [31:0]DDR_0_dq;
  inout [3:0]DDR_0_dqs_n;
  inout [3:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  input [7:0]cam_data_0;
  input cam_href_0;
  input cam_pclk_0;
  input cam_vsync_0;
  output sccb_scl_0;
  inout sccb_sda_0;
  input sys_clk_0;
  input sys_rst_n_0;
  output tmds_clk_n_0;
  output tmds_clk_p_0;
  output [2:0]tmds_data_n_0;
  output [2:0]tmds_data_p_0;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire [7:0]cam_data_0;
  wire cam_href_0;
  wire cam_pclk_0;
  wire cam_vsync_0;
  wire sccb_scl_0;
  wire sccb_sda_0;
  wire sys_clk_0;
  wire sys_rst_n_0;
  wire tmds_clk_n_0;
  wire tmds_clk_p_0;
  wire [2:0]tmds_data_n_0;
  wire [2:0]tmds_data_p_0;

  ov5640_hdmi ov5640_hdmi_i
       (.DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .cam_data_0(cam_data_0),
        .cam_href_0(cam_href_0),
        .cam_pclk_0(cam_pclk_0),
        .cam_vsync_0(cam_vsync_0),
        .sccb_scl_0(sccb_scl_0),
        .sccb_sda_0(sccb_sda_0),
        .sys_clk_0(sys_clk_0),
        .sys_rst_n_0(sys_rst_n_0),
        .tmds_clk_n_0(tmds_clk_n_0),
        .tmds_clk_p_0(tmds_clk_p_0),
        .tmds_data_n_0(tmds_data_n_0),
        .tmds_data_p_0(tmds_data_p_0));
endmodule
