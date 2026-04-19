// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Apr  5 14:57:36 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_HDMI_top_0_0_sim_netlist.v
// Design      : design_1_HDMI_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top
   (TMDS_data_p,
    TMDS_data_n,
    TMDS_clk_p,
    TMDS_clk_n,
    pix_clk_x5,
    pix_clk,
    red_data,
    de,
    green_data,
    blue_data,
    h_sync,
    v_sync,
    rst_n);
  output [2:0]TMDS_data_p;
  output [2:0]TMDS_data_n;
  output TMDS_clk_p;
  output TMDS_clk_n;
  input pix_clk_x5;
  input pix_clk;
  input [7:0]red_data;
  input de;
  input [7:0]green_data;
  input [7:0]blue_data;
  input h_sync;
  input v_sync;
  input rst_n;

  wire RST0;
  wire [9:0]TMDS_b_data;
  wire TMDS_clk_n;
  wire TMDS_clk_p;
  wire [2:0]TMDS_data_n;
  wire [2:0]TMDS_data_p;
  wire [9:0]TMDS_g_data;
  wire [9:0]TMDS_r_data;
  wire [7:0]blue_data;
  wire de;
  wire de_reg;
  wire [7:0]green_data;
  wire h_sync;
  wire pix_clk;
  wire pix_clk_x5;
  wire [7:0]red_data;
  wire rst_n;
  wire ser_data_b;
  wire ser_data_clk;
  wire ser_data_g;
  wire ser_data_r;
  wire v_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode u_encode_1
       (.AR(RST0),
        .Q(TMDS_r_data),
        .de(de),
        .de_reg(de_reg),
        .pix_clk(pix_clk),
        .red_data(red_data),
        .rst_n(rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0 u_encode_2
       (.AR(RST0),
        .Q(TMDS_g_data),
        .de_reg(de_reg),
        .green_data(green_data),
        .pix_clk(pix_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1 u_encode_3
       (.AR(RST0),
        .Q(TMDS_b_data),
        .blue_data(blue_data),
        .de_reg(de_reg),
        .h_sync(h_sync),
        .pix_clk(pix_clk),
        .v_sync(v_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser u_pra_to_ser_b
       (.AR(RST0),
        .Q(TMDS_b_data),
        .pix_clk(pix_clk),
        .pix_clk_x5(pix_clk_x5),
        .ser_data_b(ser_data_b));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2 u_pra_to_ser_clk
       (.AR(RST0),
        .pix_clk(pix_clk),
        .pix_clk_x5(pix_clk_x5),
        .ser_data_clk(ser_data_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3 u_pra_to_ser_g
       (.AR(RST0),
        .Q(TMDS_g_data),
        .pix_clk(pix_clk),
        .pix_clk_x5(pix_clk_x5),
        .ser_data_g(ser_data_g));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4 u_pra_to_ser_r
       (.AR(RST0),
        .Q(TMDS_r_data),
        .pix_clk(pix_clk),
        .pix_clk_x5(pix_clk_x5),
        .ser_data_r(ser_data_r));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff u_ser_to_diff_b
       (.TMDS_data_n(TMDS_data_n[2]),
        .TMDS_data_p(TMDS_data_p[2]),
        .ser_data_b(ser_data_b));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5 u_ser_to_diff_clk
       (.TMDS_clk_n(TMDS_clk_n),
        .TMDS_clk_p(TMDS_clk_p),
        .ser_data_clk(ser_data_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6 u_ser_to_diff_g
       (.TMDS_data_n(TMDS_data_n[1]),
        .TMDS_data_p(TMDS_data_p[1]),
        .ser_data_g(ser_data_g));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7 u_ser_to_diff_r
       (.TMDS_data_n(TMDS_data_n[0]),
        .TMDS_data_p(TMDS_data_p[0]),
        .ser_data_r(ser_data_r));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_HDMI_top_0_0,HDMI_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "HDMI_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pix_clk,
    pix_clk_x5,
    rst_n,
    h_sync,
    v_sync,
    red_data,
    green_data,
    blue_data,
    de,
    TMDS_clk_p,
    TMDS_clk_n,
    TMDS_data_p,
    TMDS_data_n,
    hdmi_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clk, FREQ_HZ 75000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input pix_clk;
  input pix_clk_x5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input h_sync;
  input v_sync;
  input [7:0]red_data;
  input [7:0]green_data;
  input [7:0]blue_data;
  input de;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_p, INSERT_VIP 0" *) output TMDS_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_n, INSERT_VIP 0" *) output TMDS_clk_n;
  output [2:0]TMDS_data_p;
  output [2:0]TMDS_data_n;
  output hdmi_en;

  wire \<const1> ;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire TMDS_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire TMDS_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]TMDS_data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]TMDS_data_p;
  wire [7:0]blue_data;
  wire de;
  wire [7:0]green_data;
  wire h_sync;
  wire pix_clk;
  wire pix_clk_x5;
  wire [7:0]red_data;
  wire rst_n;
  wire v_sync;

  assign hdmi_en = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top inst
       (.TMDS_clk_n(TMDS_clk_n),
        .TMDS_clk_p(TMDS_clk_p),
        .TMDS_data_n(TMDS_data_n),
        .TMDS_data_p(TMDS_data_p),
        .blue_data(blue_data),
        .de(de),
        .green_data(green_data),
        .h_sync(h_sync),
        .pix_clk(pix_clk),
        .pix_clk_x5(pix_clk_x5),
        .red_data(red_data),
        .rst_n(rst_n),
        .v_sync(v_sync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode
   (de_reg,
    AR,
    Q,
    pix_clk,
    de,
    rst_n,
    red_data);
  output de_reg;
  output [0:0]AR;
  output [9:0]Q;
  input pix_clk;
  input de;
  input rst_n;
  input [7:0]red_data;

  wire [0:0]AR;
  wire [9:0]Q;
  wire [4:1]cnt;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[2]_i_4_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[3]_i_6_n_0 ;
  wire \cnt[3]_i_7_n_0 ;
  wire \cnt[4]_i_10_n_0 ;
  wire \cnt[4]_i_11_n_0 ;
  wire \cnt[4]_i_12_n_0 ;
  wire \cnt[4]_i_13_n_0 ;
  wire \cnt[4]_i_14_n_0 ;
  wire \cnt[4]_i_15_n_0 ;
  wire \cnt[4]_i_16_n_0 ;
  wire \cnt[4]_i_17_n_0 ;
  wire \cnt[4]_i_18_n_0 ;
  wire \cnt[4]_i_19_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_20_n_0 ;
  wire \cnt[4]_i_21_n_0 ;
  wire \cnt[4]_i_22_n_0 ;
  wire \cnt[4]_i_23_n_0 ;
  wire \cnt[4]_i_24_n_0 ;
  wire \cnt[4]_i_25_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[4]_i_6_n_0 ;
  wire \cnt[4]_i_7_n_0 ;
  wire \cnt[4]_i_8_n_0 ;
  wire \cnt[4]_i_9_n_0 ;
  wire de;
  wire de_q;
  wire de_reg;
  wire \din_q_reg_n_0_[0] ;
  wire [9:0]dout;
  wire [3:1]n0q_m;
  wire [3:1]n0q_m0;
  wire [3:0]n1d;
  wire [3:0]n1d0;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire [3:1]n1q_m;
  wire [3:1]n1q_m0;
  wire \n1q_m[2]_i_1_n_0 ;
  wire \n1q_m[3]_i_2_n_0 ;
  wire \n1q_m[3]_i_3_n_0 ;
  wire \n1q_m[3]_i_4_n_0 ;
  wire \n1q_m[3]_i_5_n_0 ;
  wire \n1q_m[3]_i_6_n_0 ;
  wire \n1q_m[3]_i_7_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire pix_clk;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire q_m_7;
  wire [8:0]q_m_reg;
  wire \q_m_reg[5]_i_1_n_0 ;
  wire \q_m_reg[7]_i_2_n_0 ;
  wire \q_m_reg[7]_i_3_n_0 ;
  wire \q_m_reg[8]_i_1_n_0 ;
  wire [7:0]red_data;
  wire rst_n;

  LUT1 #(
    .INIT(2'h1)) 
    OSERDESE2_master_i_1
       (.I0(rst_n),
        .O(AR));
  LUT6 #(
    .INIT(64'h0A0A8228A0A08228)) 
    \cnt[1]_i_1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_2_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[1]_i_3_n_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_2 
       (.I0(n1q_m[1]),
        .I1(n0q_m[1]),
        .I2(q_m_reg[8]),
        .O(\cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_3 
       (.I0(n1q_m[1]),
        .I1(n0q_m[1]),
        .O(\cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[2]_i_1 
       (.I0(de_reg),
        .I1(\cnt[2]_i_2_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[2]_i_3_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[2]_i_4_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h596565A6)) 
    \cnt[2]_i_2 
       (.I0(\cnt[4]_i_16_n_0 ),
        .I1(cnt[1]),
        .I2(n0q_m[1]),
        .I3(q_m_reg[8]),
        .I4(n1q_m[1]),
        .O(\cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6656559)) 
    \cnt[2]_i_3 
       (.I0(\cnt[4]_i_16_n_0 ),
        .I1(n1q_m[1]),
        .I2(n0q_m[1]),
        .I3(q_m_reg[8]),
        .I4(cnt[1]),
        .O(\cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h59655695)) 
    \cnt[2]_i_4 
       (.I0(\cnt[4]_i_16_n_0 ),
        .I1(cnt[1]),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(q_m_reg[8]),
        .O(\cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[3]_i_1 
       (.I0(de_reg),
        .I1(\cnt[3]_i_2_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[3]_i_3_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[3]_i_4_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F0180FE80FE7F01)) 
    \cnt[3]_i_2 
       (.I0(\cnt[3]_i_5_n_0 ),
        .I1(cnt[1]),
        .I2(n1q_m[1]),
        .I3(\cnt[4]_i_10_n_0 ),
        .I4(\cnt[4]_i_7_n_0 ),
        .I5(\cnt[4]_i_8_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55959599959999A9)) 
    \cnt[3]_i_3 
       (.I0(\cnt[3]_i_6_n_0 ),
        .I1(\cnt[4]_i_16_n_0 ),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(q_m_reg[8]),
        .I5(cnt[1]),
        .O(\cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h71758E8A8E8A7175)) 
    \cnt[3]_i_4 
       (.I0(\cnt[4]_i_16_n_0 ),
        .I1(\cnt[3]_i_7_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_3_n_0 ),
        .I4(\cnt[4]_i_25_n_0 ),
        .I5(\cnt[4]_i_19_n_0 ),
        .O(\cnt[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_5 
       (.I0(n0q_m[1]),
        .I1(q_m_reg[8]),
        .O(\cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \cnt[3]_i_6 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(cnt[3]),
        .I3(n1q_m[2]),
        .I4(n0q_m[2]),
        .I5(cnt[2]),
        .O(\cnt[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \cnt[3]_i_7 
       (.I0(q_m_reg[8]),
        .I1(n1q_m[1]),
        .I2(n0q_m[1]),
        .O(\cnt[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[4]_i_1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_2_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_4_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[4]_i_6_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt[4]_i_10 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(cnt[2]),
        .I3(q_m_reg[8]),
        .I4(n0q_m[1]),
        .O(\cnt[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \cnt[4]_i_11 
       (.I0(cnt[1]),
        .I1(n0q_m[1]),
        .I2(q_m_reg[8]),
        .I3(n1q_m[1]),
        .O(\cnt[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9A55AA9A55659A55)) 
    \cnt[4]_i_12 
       (.I0(cnt[4]),
        .I1(n1q_m[2]),
        .I2(n0q_m[2]),
        .I3(n1q_m[3]),
        .I4(n0q_m[3]),
        .I5(cnt[3]),
        .O(\cnt[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cnt[4]_i_13 
       (.I0(n0q_m[1]),
        .I1(n1q_m[1]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(n1q_m[2]),
        .I5(n0q_m[2]),
        .O(\cnt[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF2F2F22FF2FFF2F)) 
    \cnt[4]_i_14 
       (.I0(n0q_m[3]),
        .I1(n1q_m[3]),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(n0q_m[1]),
        .I5(n1q_m[1]),
        .O(\cnt[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4114)) 
    \cnt[4]_i_15 
       (.I0(cnt[1]),
        .I1(q_m_reg[8]),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .O(\cnt[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_16 
       (.I0(cnt[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \cnt[4]_i_17 
       (.I0(q_m_reg[8]),
        .I1(n1q_m[1]),
        .I2(n0q_m[1]),
        .O(\cnt[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \cnt[4]_i_18 
       (.I0(cnt[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_19 
       (.I0(cnt[3]),
        .I1(n0q_m[3]),
        .I2(n1q_m[3]),
        .O(\cnt[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h717111718E8EEE8E)) 
    \cnt[4]_i_2 
       (.I0(\cnt[4]_i_7_n_0 ),
        .I1(\cnt[4]_i_8_n_0 ),
        .I2(\cnt[4]_i_9_n_0 ),
        .I3(\cnt[4]_i_10_n_0 ),
        .I4(\cnt[4]_i_11_n_0 ),
        .I5(\cnt[4]_i_12_n_0 ),
        .O(\cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h599A)) 
    \cnt[4]_i_20 
       (.I0(cnt[4]),
        .I1(n1q_m[3]),
        .I2(n0q_m[3]),
        .I3(cnt[3]),
        .O(\cnt[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_21 
       (.I0(n0q_m[3]),
        .I1(n1q_m[3]),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(n1q_m[1]),
        .I5(n0q_m[1]),
        .O(\cnt[4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_22 
       (.I0(cnt[4]),
        .I1(q_m_reg[8]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_23 
       (.I0(cnt[1]),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg[8]),
        .O(\cnt[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_24 
       (.I0(cnt[1]),
        .I1(n0q_m[1]),
        .I2(n1q_m[1]),
        .I3(q_m_reg[8]),
        .O(\cnt[4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_25 
       (.I0(cnt[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .I3(q_m_reg[8]),
        .O(\cnt[4]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h47C477F7)) 
    \cnt[4]_i_3 
       (.I0(\cnt[4]_i_13_n_0 ),
        .I1(cnt[4]),
        .I2(n0q_m[3]),
        .I3(n1q_m[3]),
        .I4(\cnt[4]_i_14_n_0 ),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE8FF00E81700FF17)) 
    \cnt[4]_i_4 
       (.I0(\cnt[4]_i_15_n_0 ),
        .I1(\cnt[4]_i_16_n_0 ),
        .I2(\cnt[4]_i_17_n_0 ),
        .I3(\cnt[4]_i_18_n_0 ),
        .I4(\cnt[4]_i_19_n_0 ),
        .I5(\cnt[4]_i_20_n_0 ),
        .O(\cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_5 
       (.I0(\cnt[4]_i_21_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h599959599AAA9A9A)) 
    \cnt[4]_i_6 
       (.I0(\cnt[4]_i_22_n_0 ),
        .I1(\cnt[4]_i_19_n_0 ),
        .I2(\cnt[4]_i_23_n_0 ),
        .I3(\cnt[4]_i_24_n_0 ),
        .I4(\cnt[4]_i_16_n_0 ),
        .I5(\cnt[4]_i_25_n_0 ),
        .O(\cnt[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \cnt[4]_i_7 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2F02022F)) 
    \cnt[4]_i_8 
       (.I0(n0q_m[1]),
        .I1(q_m_reg[8]),
        .I2(cnt[2]),
        .I3(n0q_m[2]),
        .I4(n1q_m[2]),
        .O(\cnt[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \cnt[4]_i_9 
       (.I0(q_m_reg[8]),
        .I1(n0q_m[1]),
        .I2(cnt[1]),
        .I3(n1q_m[1]),
        .O(\cnt[4]_i_9_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  FDRE de_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(de),
        .Q(de_q),
        .R(1'b0));
  FDRE de_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(de_q),
        .Q(de_reg),
        .R(1'b0));
  FDRE \din_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(red_data[7]),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[0]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[0]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_5_n_0 ),
        .I4(q_m_reg[8]),
        .O(dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[1]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[1]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_5_n_0 ),
        .I4(q_m_reg[8]),
        .O(dout[1]));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[2]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[8]),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(q_m_reg[2]),
        .O(dout[2]));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[3]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[3]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_5_n_0 ),
        .I4(q_m_reg[8]),
        .O(dout[3]));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[4]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[8]),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(q_m_reg[4]),
        .O(dout[4]));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[5]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[5]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_5_n_0 ),
        .I4(q_m_reg[8]),
        .O(dout[5]));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[6]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[8]),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(q_m_reg[6]),
        .O(dout[6]));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[7]_i_1 
       (.I0(de_reg),
        .I1(q_m_reg[7]),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_5_n_0 ),
        .I4(q_m_reg[8]),
        .O(dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dout[8]_i_1 
       (.I0(q_m_reg[8]),
        .I1(de_reg),
        .O(dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5DFD)) 
    \dout[9]_i_1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(q_m_reg[8]),
        .O(dout[9]));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[0]),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[1]),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[2]),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[3]),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[4]),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[5]),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[6]),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[7]),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[8]),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(dout[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1 
       (.I0(\n1q_m[3]_i_3_n_0 ),
        .I1(\n1q_m[3]_i_2_n_0 ),
        .I2(\n1q_m[3]_i_5_n_0 ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n0q_m0[1]));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1 
       (.I0(\n1q_m[3]_i_6_n_0 ),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(\n1q_m[3]_i_4_n_0 ),
        .I3(\n1q_m[3]_i_5_n_0 ),
        .I4(\n1q_m[3]_i_2_n_0 ),
        .I5(\n1q_m[3]_i_3_n_0 ),
        .O(n0q_m0[2]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\n1q_m[3]_i_5_n_0 ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n0q_m0[3]));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[1]),
        .Q(n0q_m[1]),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[2]),
        .Q(n0q_m[2]),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[3]),
        .Q(n0q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(red_data[0]),
        .I1(red_data[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(red_data[2]),
        .I4(red_data[1]),
        .I5(red_data[3]),
        .O(n1d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(red_data[6]),
        .I1(red_data[4]),
        .I2(red_data[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(n1d0[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(red_data[3]),
        .I1(red_data[2]),
        .I2(red_data[1]),
        .I3(red_data[6]),
        .I4(red_data[5]),
        .I5(red_data[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(red_data[4]),
        .I4(red_data[5]),
        .I5(red_data[6]),
        .O(n1d0[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(red_data[1]),
        .I1(red_data[2]),
        .I2(red_data[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(red_data[3]),
        .I3(red_data[2]),
        .I4(red_data[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(n1d0[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(red_data[2]),
        .I1(red_data[1]),
        .I2(red_data[3]),
        .I3(red_data[0]),
        .I4(red_data[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(red_data[7]),
        .I1(red_data[0]),
        .I2(red_data[5]),
        .I3(red_data[4]),
        .I4(red_data[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(red_data[4]),
        .I1(red_data[5]),
        .I2(red_data[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[0]),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[1]),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[2]),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[3]),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6696969996999969)) 
    \n1q_m[1]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\n1q_m[3]_i_5_n_0 ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n1q_m0[1]));
  LUT6 #(
    .INIT(64'hFFEF71F771F70010)) 
    \n1q_m[2]_i_1 
       (.I0(\n1q_m[3]_i_5_n_0 ),
        .I1(\n1q_m[3]_i_4_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_6_n_0 ),
        .I4(\n1q_m[3]_i_3_n_0 ),
        .I5(\n1q_m[3]_i_2_n_0 ),
        .O(\n1q_m[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \n1q_m[3]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .I4(\n1q_m[3]_i_5_n_0 ),
        .I5(\n1q_m[3]_i_6_n_0 ),
        .O(n1q_m0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[3]_i_2 
       (.I0(\q_m_reg[7]_i_2_n_0 ),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[3]_i_3 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_4 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n1q_m[3]_i_7_n_0 ),
        .O(\n1q_m[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m[3]_i_5 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\n1q_m[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n1q_m[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n1q_m[3]_i_7 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n1q_m[3]_i_7_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1q_m0[1]),
        .Q(n1q_m[1]),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1_n_0 ),
        .Q(n1q_m[2]),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1q_m0[3]),
        .Q(n1q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\din_q_reg_n_0_[0] ),
        .O(q_m_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1 
       (.I0(\q_m_reg[7]_i_2_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1 
       (.I0(p_0_in),
        .I1(\q_m_reg[7]_i_2_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .O(q_m_7));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(q_m_reg[0]),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(q_m_reg[1]),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(q_m_reg[2]),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(q_m_reg[3]),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(q_m_reg[4]),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1_n_0 ),
        .Q(q_m_reg[5]),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(q_m_reg[6]),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_7),
        .Q(q_m_reg[7]),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1_n_0 ),
        .Q(q_m_reg[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0
   (Q,
    pix_clk,
    de_reg,
    green_data,
    AR);
  output [9:0]Q;
  input pix_clk;
  input de_reg;
  input [7:0]green_data;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  wire [4:1]cnt;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[1]_i_2__0_n_0 ;
  wire \cnt[1]_i_3__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[2]_i_2__0_n_0 ;
  wire \cnt[2]_i_3__0_n_0 ;
  wire \cnt[2]_i_4__1_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[3]_i_3__0_n_0 ;
  wire \cnt[3]_i_4__0_n_0 ;
  wire \cnt[3]_i_5__0_n_0 ;
  wire \cnt[3]_i_6__0_n_0 ;
  wire \cnt[3]_i_7__0_n_0 ;
  wire \cnt[4]_i_10__0_n_0 ;
  wire \cnt[4]_i_11__1_n_0 ;
  wire \cnt[4]_i_12__0_n_0 ;
  wire \cnt[4]_i_13__0_n_0 ;
  wire \cnt[4]_i_14__0_n_0 ;
  wire \cnt[4]_i_15__0_n_0 ;
  wire \cnt[4]_i_16__1_n_0 ;
  wire \cnt[4]_i_17__0_n_0 ;
  wire \cnt[4]_i_18__0_n_0 ;
  wire \cnt[4]_i_19__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[4]_i_20__0_n_0 ;
  wire \cnt[4]_i_21__0_n_0 ;
  wire \cnt[4]_i_22__0_n_0 ;
  wire \cnt[4]_i_23__0_n_0 ;
  wire \cnt[4]_i_24__0_n_0 ;
  wire \cnt[4]_i_25__0_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[4]_i_4__0_n_0 ;
  wire \cnt[4]_i_5__0_n_0 ;
  wire \cnt[4]_i_6__0_n_0 ;
  wire \cnt[4]_i_7__0_n_0 ;
  wire \cnt[4]_i_8__0_n_0 ;
  wire \cnt[4]_i_9__0_n_0 ;
  wire de_reg;
  wire \din_q_reg_n_0_[0] ;
  wire \dout[0]_i_1__0_n_0 ;
  wire \dout[1]_i_1__0_n_0 ;
  wire \dout[2]_i_1__0_n_0 ;
  wire \dout[3]_i_1__0_n_0 ;
  wire \dout[4]_i_1__0_n_0 ;
  wire \dout[5]_i_1__0_n_0 ;
  wire \dout[6]_i_1__0_n_0 ;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout[8]_i_1__0_n_0 ;
  wire \dout[9]_i_1__0_n_0 ;
  wire [7:0]green_data;
  wire \n0q_m[1]_i_1__0_n_0 ;
  wire \n0q_m[2]_i_1__0_n_0 ;
  wire \n0q_m[3]_i_1__0_n_0 ;
  wire \n0q_m_reg_n_0_[1] ;
  wire \n0q_m_reg_n_0_[2] ;
  wire \n0q_m_reg_n_0_[3] ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire \n1q_m[1]_i_1__0_n_0 ;
  wire \n1q_m[2]_i_1__0_n_0 ;
  wire \n1q_m[3]_i_1__0_n_0 ;
  wire \n1q_m[3]_i_2__0_n_0 ;
  wire \n1q_m[3]_i_3__0_n_0 ;
  wire \n1q_m[3]_i_4__0_n_0 ;
  wire \n1q_m[3]_i_5__0_n_0 ;
  wire \n1q_m[3]_i_6__0_n_0 ;
  wire \n1q_m[3]_i_7__0_n_0 ;
  wire \n1q_m_reg_n_0_[1] ;
  wire \n1q_m_reg_n_0_[2] ;
  wire \n1q_m_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire pix_clk;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire \q_m_reg[5]_i_1__0_n_0 ;
  wire \q_m_reg[7]_i_1__0_n_0 ;
  wire \q_m_reg[7]_i_2__0_n_0 ;
  wire \q_m_reg[7]_i_3__0_n_0 ;
  wire \q_m_reg[8]_i_1__0_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire \q_m_reg_reg_n_0_[8] ;

  LUT6 #(
    .INIT(64'h0A0A8228A0A08228)) 
    \cnt[1]_i_1__0 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_2__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[1]_i_3__0_n_0 ),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_2__0 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_3__0 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[2]_i_1__0 
       (.I0(de_reg),
        .I1(\cnt[2]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[2]_i_3__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[2]_i_4__1_n_0 ),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA69A9A59)) 
    \cnt[2]_i_2__0 
       (.I0(\cnt[4]_i_18__0_n_0 ),
        .I1(cnt[1]),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h71E78E18)) 
    \cnt[2]_i_3__0 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\cnt[4]_i_18__0_n_0 ),
        .O(\cnt[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hA69AA96A)) 
    \cnt[2]_i_4__1 
       (.I0(\cnt[4]_i_18__0_n_0 ),
        .I1(cnt[1]),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[3]_i_1__0 
       (.I0(de_reg),
        .I1(\cnt[3]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[3]_i_3__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[3]_i_4__0_n_0 ),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F0180FE80FE7F01)) 
    \cnt[3]_i_2__0 
       (.I0(\cnt[3]_i_5__0_n_0 ),
        .I1(cnt[1]),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\cnt[4]_i_9__0_n_0 ),
        .I4(\cnt[4]_i_11__1_n_0 ),
        .I5(\cnt[4]_i_12__0_n_0 ),
        .O(\cnt[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h10515175EFAEAE8A)) 
    \cnt[3]_i_3__0 
       (.I0(\cnt[4]_i_18__0_n_0 ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(cnt[1]),
        .I5(\cnt[3]_i_6__0_n_0 ),
        .O(\cnt[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hB2BA4D454D45B2BA)) 
    \cnt[3]_i_4__0 
       (.I0(\cnt[4]_i_18__0_n_0 ),
        .I1(\cnt[3]_i_7__0_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_3__0_n_0 ),
        .I4(\cnt[4]_i_25__0_n_0 ),
        .I5(\cnt[4]_i_19__0_n_0 ),
        .O(\cnt[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_5__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[3]_i_6__0 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \cnt[3]_i_7__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[3]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \cnt[4]_i_10__0 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \cnt[4]_i_11__1 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_11__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB0FBFBB0)) 
    \cnt[4]_i_12__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(cnt[2]),
        .I3(\n0q_m_reg_n_0_[2] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \cnt[4]_i_13__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBFB00F0FFFFBBFB)) 
    \cnt[4]_i_14__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA665)) 
    \cnt[4]_i_15__0 
       (.I0(cnt[4]),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(cnt[3]),
        .O(\cnt[4]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4114)) 
    \cnt[4]_i_16__1 
       (.I0(cnt[1]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_17__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[4]_i_18__0 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_19__0 
       (.I0(cnt[3]),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[4]_i_1__0 
       (.I0(de_reg),
        .I1(\cnt[4]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_4__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[4]_i_6__0_n_0 ),
        .O(\cnt[4]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_20__0 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .O(\cnt[4]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_21__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_22__0 
       (.I0(cnt[4]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_23__0 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_23__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_24__0 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_25__0 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'h555566A666A6AAAA)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt[4]_i_7__0_n_0 ),
        .I1(\cnt[4]_i_8__0_n_0 ),
        .I2(\cnt[4]_i_9__0_n_0 ),
        .I3(\cnt[4]_i_10__0_n_0 ),
        .I4(\cnt[4]_i_11__1_n_0 ),
        .I5(\cnt[4]_i_12__0_n_0 ),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h8BC8BBFB)) 
    \cnt[4]_i_3__0 
       (.I0(\cnt[4]_i_13__0_n_0 ),
        .I1(cnt[4]),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\cnt[4]_i_14__0_n_0 ),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA665AAAA5555A665)) 
    \cnt[4]_i_4__0 
       (.I0(\cnt[4]_i_15__0_n_0 ),
        .I1(\cnt[4]_i_16__1_n_0 ),
        .I2(\cnt[4]_i_17__0_n_0 ),
        .I3(\cnt[4]_i_18__0_n_0 ),
        .I4(\cnt[4]_i_19__0_n_0 ),
        .I5(\cnt[4]_i_20__0_n_0 ),
        .O(\cnt[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_5__0 
       (.I0(\cnt[4]_i_21__0_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h595959999A9A9AAA)) 
    \cnt[4]_i_6__0 
       (.I0(\cnt[4]_i_22__0_n_0 ),
        .I1(\cnt[4]_i_19__0_n_0 ),
        .I2(\cnt[4]_i_23__0_n_0 ),
        .I3(\cnt[4]_i_24__0_n_0 ),
        .I4(\cnt[4]_i_18__0_n_0 ),
        .I5(\cnt[4]_i_25__0_n_0 ),
        .O(\cnt[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h4F04FB4FB0FB04B0)) 
    \cnt[4]_i_7__0 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(cnt[3]),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(\n1q_m_reg_n_0_[3] ),
        .I5(cnt[4]),
        .O(\cnt[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \cnt[4]_i_8__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(cnt[1]),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \cnt[4]_i_9__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\n0q_m_reg_n_0_[2] ),
        .I4(cnt[2]),
        .O(\cnt[4]_i_9__0_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(cnt[4]));
  FDRE \din_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(green_data[7]),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[0]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[0] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[1]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[1] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[2]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\cnt[4]_i_5__0_n_0 ),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[2] ),
        .O(\dout[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[3]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[3] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[4]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\cnt[4]_i_5__0_n_0 ),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[4] ),
        .O(\dout[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[5]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[5] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hD5DF7F75)) 
    \dout[6]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\cnt[4]_i_5__0_n_0 ),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[6] ),
        .O(\dout[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h88282228)) 
    \dout[7]_i_1__0 
       (.I0(de_reg),
        .I1(\q_m_reg_reg_n_0_[7] ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_5__0_n_0 ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dout[8]_i_1__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(de_reg),
        .O(\dout[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5DFD)) 
    \dout[9]_i_1__0 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(\cnt[4]_i_5__0_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\dout[9]_i_1__0_n_0 ));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[6]_i_1__0_n_0 ),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[7]_i_1__0_n_0 ),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[8]_i_1__0_n_0 ),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[9]_i_1__0_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1__0 
       (.I0(\n1q_m[3]_i_3__0_n_0 ),
        .I1(\n1q_m[3]_i_2__0_n_0 ),
        .I2(\n1q_m[3]_i_5__0_n_0 ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n0q_m[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1__0 
       (.I0(\n1q_m[3]_i_6__0_n_0 ),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(\n1q_m[3]_i_4__0_n_0 ),
        .I3(\n1q_m[3]_i_5__0_n_0 ),
        .I4(\n1q_m[3]_i_2__0_n_0 ),
        .I5(\n1q_m[3]_i_3__0_n_0 ),
        .O(\n0q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\n1q_m[3]_i_5__0_n_0 ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n0q_m[3]_i_1__0_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(green_data[0]),
        .I1(green_data[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(green_data[2]),
        .I4(green_data[1]),
        .I5(green_data[3]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(green_data[6]),
        .I1(green_data[4]),
        .I2(green_data[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(green_data[3]),
        .I1(green_data[2]),
        .I2(green_data[1]),
        .I3(green_data[6]),
        .I4(green_data[5]),
        .I5(green_data[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(green_data[4]),
        .I4(green_data[5]),
        .I5(green_data[6]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(green_data[1]),
        .I1(green_data[2]),
        .I2(green_data[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(green_data[3]),
        .I3(green_data[2]),
        .I4(green_data[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(green_data[2]),
        .I1(green_data[1]),
        .I2(green_data[3]),
        .I3(green_data[0]),
        .I4(green_data[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(green_data[7]),
        .I1(green_data[0]),
        .I2(green_data[5]),
        .I3(green_data[4]),
        .I4(green_data[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(green_data[4]),
        .I1(green_data[5]),
        .I2(green_data[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6696969996999969)) 
    \n1q_m[1]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\n1q_m[3]_i_5__0_n_0 ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n1q_m[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF71F771F70010)) 
    \n1q_m[2]_i_1__0 
       (.I0(\n1q_m[3]_i_5__0_n_0 ),
        .I1(\n1q_m[3]_i_4__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_6__0_n_0 ),
        .I4(\n1q_m[3]_i_3__0_n_0 ),
        .I5(\n1q_m[3]_i_2__0_n_0 ),
        .O(\n1q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \n1q_m[3]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .I4(\n1q_m[3]_i_5__0_n_0 ),
        .I5(\n1q_m[3]_i_6__0_n_0 ),
        .O(\n1q_m[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[3]_i_2__0 
       (.I0(\q_m_reg[7]_i_2__0_n_0 ),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[3]_i_3__0 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2__0_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_4__0 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n1q_m[3]_i_7__0_n_0 ),
        .O(\n1q_m[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m[3]_i_5__0 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3__0_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2__0_n_0 ),
        .I4(p_0_in),
        .O(\n1q_m[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6__0 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n1q_m[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n1q_m[3]_i_7__0 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n1q_m[3]_i_7__0_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1__0 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\din_q_reg_n_0_[0] ),
        .O(q_m_1));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__0 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__0 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2__0_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__0 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1__0 
       (.I0(\q_m_reg[7]_i_2__0_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1__0 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1__0 
       (.I0(p_0_in),
        .I1(\q_m_reg[7]_i_2__0_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3__0_n_0 ),
        .I4(p_0_in0_in),
        .O(\q_m_reg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2__0 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3__0 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1__0 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1__0_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[7]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[8] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1
   (Q,
    pix_clk,
    h_sync,
    v_sync,
    de_reg,
    blue_data,
    AR);
  output [9:0]Q;
  input pix_clk;
  input h_sync;
  input v_sync;
  input de_reg;
  input [7:0]blue_data;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  wire [7:0]blue_data;
  wire c0_q;
  wire c0_reg;
  wire c1_q_reg_n_0;
  wire c1_reg_reg_n_0;
  wire [4:1]cnt;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[1]_i_2__1_n_0 ;
  wire \cnt[1]_i_3__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[2]_i_2__1_n_0 ;
  wire \cnt[2]_i_3__1_n_0 ;
  wire \cnt[2]_i_4__0_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire \cnt[3]_i_3__1_n_0 ;
  wire \cnt[3]_i_4__1_n_0 ;
  wire \cnt[3]_i_5__1_n_0 ;
  wire \cnt[3]_i_6__1_n_0 ;
  wire \cnt[3]_i_7__1_n_0 ;
  wire \cnt[4]_i_10__1_n_0 ;
  wire \cnt[4]_i_11__0_n_0 ;
  wire \cnt[4]_i_12__1_n_0 ;
  wire \cnt[4]_i_13__1_n_0 ;
  wire \cnt[4]_i_14__1_n_0 ;
  wire \cnt[4]_i_15__1_n_0 ;
  wire \cnt[4]_i_16__0_n_0 ;
  wire \cnt[4]_i_17__1_n_0 ;
  wire \cnt[4]_i_18__1_n_0 ;
  wire \cnt[4]_i_19__1_n_0 ;
  wire \cnt[4]_i_1__1_n_0 ;
  wire \cnt[4]_i_20__1_n_0 ;
  wire \cnt[4]_i_21__1_n_0 ;
  wire \cnt[4]_i_22__1_n_0 ;
  wire \cnt[4]_i_23__1_n_0 ;
  wire \cnt[4]_i_24__1_n_0 ;
  wire \cnt[4]_i_25__1_n_0 ;
  wire \cnt[4]_i_2__1_n_0 ;
  wire \cnt[4]_i_3__1_n_0 ;
  wire \cnt[4]_i_4__1_n_0 ;
  wire \cnt[4]_i_5__1_n_0 ;
  wire \cnt[4]_i_6__1_n_0 ;
  wire \cnt[4]_i_7__1_n_0 ;
  wire \cnt[4]_i_8__1_n_0 ;
  wire \cnt[4]_i_9__1_n_0 ;
  wire de_reg;
  wire \din_q_reg_n_0_[0] ;
  wire \dout[0]_i_1__1_n_0 ;
  wire \dout[1]_i_1__1_n_0 ;
  wire \dout[2]_i_1__1_n_0 ;
  wire \dout[3]_i_1__1_n_0 ;
  wire \dout[4]_i_1__1_n_0 ;
  wire \dout[5]_i_1__1_n_0 ;
  wire \dout[6]_i_1__1_n_0 ;
  wire \dout[7]_i_1__1_n_0 ;
  wire \dout[8]_i_1__1_n_0 ;
  wire \dout[9]_i_1__1_n_0 ;
  wire h_sync;
  wire \n0q_m[1]_i_1__1_n_0 ;
  wire \n0q_m[2]_i_1__1_n_0 ;
  wire \n0q_m[3]_i_1__1_n_0 ;
  wire \n0q_m_reg_n_0_[1] ;
  wire \n0q_m_reg_n_0_[2] ;
  wire \n0q_m_reg_n_0_[3] ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire \n1q_m[1]_i_1__1_n_0 ;
  wire \n1q_m[2]_i_1__1_n_0 ;
  wire \n1q_m[3]_i_1__1_n_0 ;
  wire \n1q_m[3]_i_2__1_n_0 ;
  wire \n1q_m[3]_i_3__1_n_0 ;
  wire \n1q_m[3]_i_4__1_n_0 ;
  wire \n1q_m[3]_i_5__1_n_0 ;
  wire \n1q_m[3]_i_6__1_n_0 ;
  wire \n1q_m[3]_i_7__1_n_0 ;
  wire \n1q_m_reg_n_0_[1] ;
  wire \n1q_m_reg_n_0_[2] ;
  wire \n1q_m_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire pix_clk;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire \q_m_reg[5]_i_1__1_n_0 ;
  wire \q_m_reg[7]_i_1__1_n_0 ;
  wire \q_m_reg[7]_i_2__1_n_0 ;
  wire \q_m_reg[7]_i_3__1_n_0 ;
  wire \q_m_reg[8]_i_1__1_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire \q_m_reg_reg_n_0_[8] ;
  wire v_sync;

  FDRE c0_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_sync),
        .Q(c0_q),
        .R(1'b0));
  FDRE c0_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(c0_q),
        .Q(c0_reg),
        .R(1'b0));
  FDRE c1_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(v_sync),
        .Q(c1_q_reg_n_0),
        .R(1'b0));
  FDRE c1_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(c1_q_reg_n_0),
        .Q(c1_reg_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0A0A8228A0A08228)) 
    \cnt[1]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_2__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[1]_i_3__1_n_0 ),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_2__1 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[1]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_3__1 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[2]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[2]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[2]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[2]_i_4__0_n_0 ),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h596565A6)) 
    \cnt[2]_i_2__1 
       (.I0(\cnt[4]_i_19__1_n_0 ),
        .I1(cnt[1]),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hA6656559)) 
    \cnt[2]_i_3__1 
       (.I0(\cnt[4]_i_19__1_n_0 ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(cnt[1]),
        .O(\cnt[2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h59655695)) 
    \cnt[2]_i_4__0 
       (.I0(\cnt[4]_i_19__1_n_0 ),
        .I1(cnt[1]),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF1B001B00000000)) 
    \cnt[3]_i_1__1 
       (.I0(\cnt[4]_i_3__1_n_0 ),
        .I1(\cnt[3]_i_2__1_n_0 ),
        .I2(\cnt[3]_i_3__1_n_0 ),
        .I3(\cnt[4]_i_5__1_n_0 ),
        .I4(\cnt[3]_i_4__1_n_0 ),
        .I5(de_reg),
        .O(\cnt[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7F0180FE80FE7F01)) 
    \cnt[3]_i_2__1 
       (.I0(\cnt[3]_i_5__1_n_0 ),
        .I1(cnt[1]),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\cnt[4]_i_10__1_n_0 ),
        .I4(\cnt[4]_i_7__1_n_0 ),
        .I5(\cnt[4]_i_8__1_n_0 ),
        .O(\cnt[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h63C33363C3C663C3)) 
    \cnt[3]_i_3__1 
       (.I0(cnt[1]),
        .I1(\cnt[3]_i_6__1_n_0 ),
        .I2(\cnt[4]_i_19__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\n1q_m_reg_n_0_[1] ),
        .I5(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hF3200CDF0CDFF320)) 
    \cnt[3]_i_4__1 
       (.I0(\cnt[1]_i_3__1_n_0 ),
        .I1(cnt[1]),
        .I2(\cnt[3]_i_7__1_n_0 ),
        .I3(\cnt[4]_i_19__1_n_0 ),
        .I4(\cnt[4]_i_25__1_n_0 ),
        .I5(\cnt[4]_i_16__0_n_0 ),
        .O(\cnt[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[3]_i_5__1 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[3]_i_6__1 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \cnt[3]_i_7__1 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[3]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt[4]_i_10__1 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_10__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \cnt[4]_i_11__0 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h9A55AA9A55659A55)) 
    \cnt[4]_i_12__1 
       (.I0(cnt[4]),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(\n0q_m_reg_n_0_[2] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\n0q_m_reg_n_0_[3] ),
        .I5(cnt[3]),
        .O(\cnt[4]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF2222FF2F)) 
    \cnt[4]_i_13__1 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \cnt[4]_i_14__1 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[2] ),
        .I3(\n1q_m_reg_n_0_[2] ),
        .I4(\n0q_m_reg_n_0_[3] ),
        .I5(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA665)) 
    \cnt[4]_i_15__1 
       (.I0(cnt[4]),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(cnt[3]),
        .O(\cnt[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_16__0 
       (.I0(cnt[3]),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_17__1 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .O(\cnt[4]_i_17__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4114)) 
    \cnt[4]_i_18__1 
       (.I0(cnt[1]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_18__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_19__1 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[4]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[4]_i_4__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[4]_i_6__1_n_0 ),
        .O(\cnt[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \cnt[4]_i_20__1 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_20__1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_21__1 
       (.I0(\n0q_m_reg_n_0_[3] ),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_21__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_22__1 
       (.I0(cnt[4]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_22__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h2008)) 
    \cnt[4]_i_23__1 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_23__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \cnt[4]_i_24__1 
       (.I0(cnt[1]),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_24__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_25__1 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_25__1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E888E817177717)) 
    \cnt[4]_i_2__1 
       (.I0(\cnt[4]_i_7__1_n_0 ),
        .I1(\cnt[4]_i_8__1_n_0 ),
        .I2(\cnt[4]_i_9__1_n_0 ),
        .I3(\cnt[4]_i_10__1_n_0 ),
        .I4(\cnt[4]_i_11__0_n_0 ),
        .I5(\cnt[4]_i_12__1_n_0 ),
        .O(\cnt[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h47C477F7)) 
    \cnt[4]_i_3__1 
       (.I0(\cnt[4]_i_13__1_n_0 ),
        .I1(cnt[4]),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\cnt[4]_i_14__1_n_0 ),
        .O(\cnt[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h656565A665A6A6A6)) 
    \cnt[4]_i_4__1 
       (.I0(\cnt[4]_i_15__1_n_0 ),
        .I1(\cnt[4]_i_16__0_n_0 ),
        .I2(\cnt[4]_i_17__1_n_0 ),
        .I3(\cnt[4]_i_18__1_n_0 ),
        .I4(\cnt[4]_i_19__1_n_0 ),
        .I5(\cnt[4]_i_20__1_n_0 ),
        .O(\cnt[4]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_5__1 
       (.I0(\cnt[4]_i_21__1_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h595599999A99AAAA)) 
    \cnt[4]_i_6__1 
       (.I0(\cnt[4]_i_22__1_n_0 ),
        .I1(\cnt[4]_i_16__0_n_0 ),
        .I2(\cnt[4]_i_23__1_n_0 ),
        .I3(\cnt[4]_i_19__1_n_0 ),
        .I4(\cnt[4]_i_24__1_n_0 ),
        .I5(\cnt[4]_i_25__1_n_0 ),
        .O(\cnt[4]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \cnt[4]_i_7__1 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hF6F660F6)) 
    \cnt[4]_i_8__1 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \cnt[4]_i_9__1 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(cnt[1]),
        .I3(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_9__1_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1__1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1__1_n_0 ),
        .Q(cnt[4]));
  FDRE \din_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[0]),
        .Q(\din_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \din_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[1]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \din_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[2]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \din_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[3]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \din_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[4]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \din_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[5]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \din_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[6]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \din_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(blue_data[7]),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA656FFFFA6560000)) 
    \dout[0]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[0] ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(de_reg),
        .I5(c0_reg),
        .O(\dout[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA656FFFFA6560000)) 
    \dout[1]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[1] ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(de_reg),
        .I5(c0_reg),
        .O(\dout[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA202F75708A85DFD)) 
    \dout[2]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(c0_reg),
        .I5(\q_m_reg_reg_n_0_[2] ),
        .O(\dout[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA656FFFFA6560000)) 
    \dout[3]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[3] ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(de_reg),
        .I5(c0_reg),
        .O(\dout[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA202F75708A85DFD)) 
    \dout[4]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(c0_reg),
        .I5(\q_m_reg_reg_n_0_[4] ),
        .O(\dout[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA656FFFFA6560000)) 
    \dout[5]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[5] ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(de_reg),
        .I5(c0_reg),
        .O(\dout[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA202F75708A85DFD)) 
    \dout[6]_i_1__1 
       (.I0(de_reg),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(c0_reg),
        .I5(\q_m_reg_reg_n_0_[6] ),
        .O(\dout[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA656FFFFA6560000)) 
    \dout[7]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[7] ),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(de_reg),
        .I5(c0_reg),
        .O(\dout[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \dout[8]_i_1__1 
       (.I0(c0_reg),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(de_reg),
        .O(\dout[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF7400740074FF)) 
    \dout[9]_i_1__1 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\cnt[4]_i_5__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(de_reg),
        .I4(c0_reg),
        .I5(c1_reg_reg_n_0),
        .O(\dout[9]_i_1__1_n_0 ));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[4]_i_1__1_n_0 ),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[7]_i_1__1_n_0 ),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[8]_i_1__1_n_0 ),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[9]_i_1__1_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1__1 
       (.I0(\n1q_m[3]_i_3__1_n_0 ),
        .I1(\n1q_m[3]_i_2__1_n_0 ),
        .I2(\n1q_m[3]_i_5__1_n_0 ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\din_q_reg_n_0_[0] ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n0q_m[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1__1 
       (.I0(\n1q_m[3]_i_6__1_n_0 ),
        .I1(\din_q_reg_n_0_[0] ),
        .I2(\n1q_m[3]_i_4__1_n_0 ),
        .I3(\n1q_m[3]_i_5__1_n_0 ),
        .I4(\n1q_m[3]_i_2__1_n_0 ),
        .I5(\n1q_m[3]_i_3__1_n_0 ),
        .O(\n0q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\n1q_m[3]_i_5__1_n_0 ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n0q_m[3]_i_1__1_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(blue_data[0]),
        .I1(blue_data[7]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(blue_data[2]),
        .I4(blue_data[1]),
        .I5(blue_data[3]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(blue_data[6]),
        .I1(blue_data[4]),
        .I2(blue_data[5]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(blue_data[3]),
        .I1(blue_data[2]),
        .I2(blue_data[1]),
        .I3(blue_data[6]),
        .I4(blue_data[5]),
        .I5(blue_data[4]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(blue_data[4]),
        .I4(blue_data[5]),
        .I5(blue_data[6]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(blue_data[1]),
        .I1(blue_data[2]),
        .I2(blue_data[3]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(blue_data[3]),
        .I3(blue_data[2]),
        .I4(blue_data[1]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(blue_data[2]),
        .I1(blue_data[1]),
        .I2(blue_data[3]),
        .I3(blue_data[0]),
        .I4(blue_data[7]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(blue_data[7]),
        .I1(blue_data[0]),
        .I2(blue_data[5]),
        .I3(blue_data[4]),
        .I4(blue_data[6]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(blue_data[4]),
        .I1(blue_data[5]),
        .I2(blue_data[6]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6696969996999969)) 
    \n1q_m[1]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\n1q_m[3]_i_5__1_n_0 ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n1q_m[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF71F771F70010)) 
    \n1q_m[2]_i_1__1 
       (.I0(\n1q_m[3]_i_5__1_n_0 ),
        .I1(\n1q_m[3]_i_4__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_6__1_n_0 ),
        .I4(\n1q_m[3]_i_3__1_n_0 ),
        .I5(\n1q_m[3]_i_2__1_n_0 ),
        .O(\n1q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \n1q_m[3]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .I4(\n1q_m[3]_i_5__1_n_0 ),
        .I5(\n1q_m[3]_i_6__1_n_0 ),
        .O(\n1q_m[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[3]_i_2__1 
       (.I0(\q_m_reg[7]_i_2__1_n_0 ),
        .I1(p_0_in3_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[3]_i_3__1 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2__1_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n1q_m[3]_i_4__1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n1q_m[3]_i_7__1_n_0 ),
        .O(\n1q_m[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m[3]_i_5__1 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3__1_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2__1_n_0 ),
        .I4(p_0_in),
        .O(\n1q_m[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m[3]_i_6__1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n1q_m[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n1q_m[3]_i_7__1 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\din_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n1q_m[3]_i_7__1_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1__1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\din_q_reg_n_0_[0] ),
        .O(q_m_1));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__1 
       (.I0(\din_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2__1_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1__1 
       (.I0(\q_m_reg[7]_i_2__1_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1__1 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1__1 
       (.I0(p_0_in),
        .I1(\q_m_reg[7]_i_2__1_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3__1_n_0 ),
        .I4(p_0_in0_in),
        .O(\q_m_reg[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2__1 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3__1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1__1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\din_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1__1_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\din_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[7]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[8] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser
   (ser_data_b,
    pix_clk_x5,
    pix_clk,
    Q,
    AR);
  output ser_data_b;
  input pix_clk_x5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  wire expand_1;
  wire expand_2;
  wire pix_clk;
  wire pix_clk_x5;
  wire ser_data_b;
  wire NLW_OSERDESE2_master_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_master_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_TQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_master
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_master_OFB_UNCONNECTED),
        .OQ(ser_data_b),
        .RST(AR),
        .SHIFTIN1(expand_1),
        .SHIFTIN2(expand_2),
        .SHIFTOUT1(NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_master_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_slave
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_slave_OFB_UNCONNECTED),
        .OQ(NLW_OSERDESE2_slave_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(expand_1),
        .SHIFTOUT2(expand_2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_slave_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "pra_to_ser" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2
   (ser_data_clk,
    pix_clk_x5,
    pix_clk,
    AR);
  output ser_data_clk;
  input pix_clk_x5;
  input pix_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire expand_1;
  wire expand_2;
  wire pix_clk;
  wire pix_clk_x5;
  wire ser_data_clk;
  wire NLW_OSERDESE2_master_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_master_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_TQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_master
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_master_OFB_UNCONNECTED),
        .OQ(ser_data_clk),
        .RST(AR),
        .SHIFTIN1(expand_1),
        .SHIFTIN2(expand_2),
        .SHIFTOUT1(NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_master_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_slave
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_slave_OFB_UNCONNECTED),
        .OQ(NLW_OSERDESE2_slave_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(expand_1),
        .SHIFTOUT2(expand_2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_slave_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "pra_to_ser" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3
   (ser_data_g,
    pix_clk_x5,
    pix_clk,
    Q,
    AR);
  output ser_data_g;
  input pix_clk_x5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  wire expand_1;
  wire expand_2;
  wire pix_clk;
  wire pix_clk_x5;
  wire ser_data_g;
  wire NLW_OSERDESE2_master_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_master_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_TQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_master
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_master_OFB_UNCONNECTED),
        .OQ(ser_data_g),
        .RST(AR),
        .SHIFTIN1(expand_1),
        .SHIFTIN2(expand_2),
        .SHIFTOUT1(NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_master_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_slave
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_slave_OFB_UNCONNECTED),
        .OQ(NLW_OSERDESE2_slave_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(expand_1),
        .SHIFTOUT2(expand_2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_slave_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_slave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "pra_to_ser" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4
   (ser_data_r,
    pix_clk_x5,
    pix_clk,
    Q,
    AR);
  output ser_data_r;
  input pix_clk_x5;
  input pix_clk;
  input [9:0]Q;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  wire expand_1;
  wire expand_2;
  wire pix_clk;
  wire pix_clk_x5;
  wire ser_data_r;
  wire NLW_OSERDESE2_master_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_master_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_master_TQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_OQ_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_slave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_master
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_master_OFB_UNCONNECTED),
        .OQ(ser_data_r),
        .RST(AR),
        .SHIFTIN1(expand_1),
        .SHIFTIN2(expand_2),
        .SHIFTOUT1(NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_master_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_master_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_slave
       (.CLK(pix_clk_x5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_OSERDESE2_slave_OFB_UNCONNECTED),
        .OQ(NLW_OSERDESE2_slave_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(expand_1),
        .SHIFTOUT2(expand_2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_slave_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_slave_TQ_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff
   (TMDS_data_p,
    TMDS_data_n,
    ser_data_b);
  output [0:0]TMDS_data_p;
  output [0:0]TMDS_data_n;
  input ser_data_b;

  wire [0:0]TMDS_data_n;
  wire [0:0]TMDS_data_p;
  wire ser_data_b;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst
       (.I(ser_data_b),
        .O(TMDS_data_p),
        .OB(TMDS_data_n));
endmodule

(* ORIG_REF_NAME = "ser_to_diff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5
   (TMDS_clk_p,
    TMDS_clk_n,
    ser_data_clk);
  output TMDS_clk_p;
  output TMDS_clk_n;
  input ser_data_clk;

  wire TMDS_clk_n;
  wire TMDS_clk_p;
  wire ser_data_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst
       (.I(ser_data_clk),
        .O(TMDS_clk_p),
        .OB(TMDS_clk_n));
endmodule

(* ORIG_REF_NAME = "ser_to_diff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6
   (TMDS_data_p,
    TMDS_data_n,
    ser_data_g);
  output [0:0]TMDS_data_p;
  output [0:0]TMDS_data_n;
  input ser_data_g;

  wire [0:0]TMDS_data_n;
  wire [0:0]TMDS_data_p;
  wire ser_data_g;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst
       (.I(ser_data_g),
        .O(TMDS_data_p),
        .OB(TMDS_data_n));
endmodule

(* ORIG_REF_NAME = "ser_to_diff" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7
   (TMDS_data_p,
    TMDS_data_n,
    ser_data_r);
  output [0:0]TMDS_data_p;
  output [0:0]TMDS_data_n;
  input ser_data_r;

  wire [0:0]TMDS_data_n;
  wire [0:0]TMDS_data_p;
  wire ser_data_r;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst
       (.I(ser_data_r),
        .O(TMDS_data_p),
        .OB(TMDS_data_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
