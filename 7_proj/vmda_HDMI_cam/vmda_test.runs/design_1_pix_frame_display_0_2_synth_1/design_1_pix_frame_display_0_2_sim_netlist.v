// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  4 13:54:50 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pix_frame_display_0_2_sim_netlist.v
// Design      : design_1_pix_frame_display_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pix_frame_display_0_2,pix_frame_display,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pix_frame_display,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (vio_clk,
    sys_rst_n,
    vio_active,
    vio_hsync,
    vio_vsync,
    vio_data,
    rom_data,
    rom_addr,
    rom_valid,
    hdmi_data,
    hdmi_de,
    hdmi_hsync,
    hdmi_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vio_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vio_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input vio_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
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

  wire [23:0]hdmi_data;
  wire hdmi_de;
  wire hdmi_hsync;
  wire hdmi_vsync;
  wire [13:0]rom_addr;
  wire rom_data;
  wire rom_valid;
  wire sys_rst_n;
  wire vio_active;
  wire vio_clk;
  wire [23:0]vio_data;
  wire vio_hsync;
  wire vio_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display inst
       (.\h_cnt_reg[2]_0 (rom_valid),
        .hdmi_data(hdmi_data),
        .hdmi_de(hdmi_de),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_vsync(hdmi_vsync),
        .rom_addr(rom_addr),
        .rom_data(rom_data),
        .sys_rst_n(sys_rst_n),
        .vio_active(vio_active),
        .vio_clk(vio_clk),
        .vio_data(vio_data),
        .vio_hsync(vio_hsync),
        .vio_vsync(vio_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display
   (\h_cnt_reg[2]_0 ,
    rom_addr,
    hdmi_data,
    hdmi_de,
    hdmi_hsync,
    hdmi_vsync,
    vio_active,
    vio_data,
    vio_clk,
    vio_hsync,
    vio_vsync,
    rom_data,
    sys_rst_n);
  output \h_cnt_reg[2]_0 ;
  output [13:0]rom_addr;
  output [23:0]hdmi_data;
  output hdmi_de;
  output hdmi_hsync;
  output hdmi_vsync;
  input vio_active;
  input [23:0]vio_data;
  input vio_clk;
  input vio_hsync;
  input vio_vsync;
  input rom_data;
  input sys_rst_n;

  wire frame_valid26_out;
  wire [9:0]h_cnt;
  wire \h_cnt[6]_i_2_n_0 ;
  wire \h_cnt[7]_i_2_n_0 ;
  wire \h_cnt[9]_i_2_n_0 ;
  wire \h_cnt[9]_i_3_n_0 ;
  wire \h_cnt_reg[2]_0 ;
  wire [23:0]hdmi_data;
  wire \hdmi_data[0]_i_1_n_0 ;
  wire \hdmi_data[10]_i_1_n_0 ;
  wire \hdmi_data[11]_i_1_n_0 ;
  wire \hdmi_data[12]_i_1_n_0 ;
  wire \hdmi_data[13]_i_1_n_0 ;
  wire \hdmi_data[14]_i_1_n_0 ;
  wire \hdmi_data[15]_i_1_n_0 ;
  wire \hdmi_data[16]_i_1_n_0 ;
  wire \hdmi_data[17]_i_1_n_0 ;
  wire \hdmi_data[18]_i_1_n_0 ;
  wire \hdmi_data[19]_i_1_n_0 ;
  wire \hdmi_data[1]_i_1_n_0 ;
  wire \hdmi_data[20]_i_1_n_0 ;
  wire \hdmi_data[21]_i_1_n_0 ;
  wire \hdmi_data[22]_i_1_n_0 ;
  wire \hdmi_data[23]_i_10_n_0 ;
  wire \hdmi_data[23]_i_11_n_0 ;
  wire \hdmi_data[23]_i_12_n_0 ;
  wire \hdmi_data[23]_i_13_n_0 ;
  wire \hdmi_data[23]_i_14_n_0 ;
  wire \hdmi_data[23]_i_15_n_0 ;
  wire \hdmi_data[23]_i_16_n_0 ;
  wire \hdmi_data[23]_i_17_n_0 ;
  wire \hdmi_data[23]_i_18_n_0 ;
  wire \hdmi_data[23]_i_19_n_0 ;
  wire \hdmi_data[23]_i_1_n_0 ;
  wire \hdmi_data[23]_i_20_n_0 ;
  wire \hdmi_data[23]_i_21_n_0 ;
  wire \hdmi_data[23]_i_2_n_0 ;
  wire \hdmi_data[23]_i_3_n_0 ;
  wire \hdmi_data[23]_i_4_n_0 ;
  wire \hdmi_data[23]_i_5_n_0 ;
  wire \hdmi_data[23]_i_6_n_0 ;
  wire \hdmi_data[23]_i_8_n_0 ;
  wire \hdmi_data[23]_i_9_n_0 ;
  wire \hdmi_data[2]_i_1_n_0 ;
  wire \hdmi_data[3]_i_1_n_0 ;
  wire \hdmi_data[4]_i_1_n_0 ;
  wire \hdmi_data[5]_i_1_n_0 ;
  wire \hdmi_data[6]_i_1_n_0 ;
  wire \hdmi_data[7]_i_1_n_0 ;
  wire \hdmi_data[8]_i_1_n_0 ;
  wire \hdmi_data[9]_i_1_n_0 ;
  wire hdmi_de;
  wire hdmi_hsync;
  wire hdmi_vsync;
  wire [9:0]p_0_in;
  wire [9:0]p_1_in;
  wire [13:0]rom_addr;
  wire rom_addr0_n_100;
  wire rom_addr0_n_101;
  wire rom_addr0_n_102;
  wire rom_addr0_n_103;
  wire rom_addr0_n_104;
  wire rom_addr0_n_105;
  wire rom_addr0_n_106;
  wire rom_addr0_n_107;
  wire rom_addr0_n_108;
  wire rom_addr0_n_109;
  wire rom_addr0_n_110;
  wire rom_addr0_n_111;
  wire rom_addr0_n_112;
  wire rom_addr0_n_113;
  wire rom_addr0_n_114;
  wire rom_addr0_n_115;
  wire rom_addr0_n_116;
  wire rom_addr0_n_117;
  wire rom_addr0_n_118;
  wire rom_addr0_n_119;
  wire rom_addr0_n_120;
  wire rom_addr0_n_121;
  wire rom_addr0_n_122;
  wire rom_addr0_n_123;
  wire rom_addr0_n_124;
  wire rom_addr0_n_125;
  wire rom_addr0_n_126;
  wire rom_addr0_n_127;
  wire rom_addr0_n_128;
  wire rom_addr0_n_129;
  wire rom_addr0_n_130;
  wire rom_addr0_n_131;
  wire rom_addr0_n_132;
  wire rom_addr0_n_133;
  wire rom_addr0_n_134;
  wire rom_addr0_n_135;
  wire rom_addr0_n_136;
  wire rom_addr0_n_137;
  wire rom_addr0_n_138;
  wire rom_addr0_n_139;
  wire rom_addr0_n_140;
  wire rom_addr0_n_141;
  wire rom_addr0_n_142;
  wire rom_addr0_n_143;
  wire rom_addr0_n_144;
  wire rom_addr0_n_145;
  wire rom_addr0_n_146;
  wire rom_addr0_n_147;
  wire rom_addr0_n_148;
  wire rom_addr0_n_149;
  wire rom_addr0_n_150;
  wire rom_addr0_n_151;
  wire rom_addr0_n_152;
  wire rom_addr0_n_153;
  wire rom_addr0_n_89;
  wire rom_addr0_n_90;
  wire rom_addr0_n_91;
  wire rom_addr0_n_92;
  wire rom_addr0_n_93;
  wire rom_addr0_n_94;
  wire rom_addr0_n_95;
  wire rom_addr0_n_96;
  wire rom_addr0_n_97;
  wire rom_addr0_n_98;
  wire rom_addr0_n_99;
  wire rom_data;
  wire rom_valid_INST_0_i_1_n_0;
  wire rom_valid_INST_0_i_2_n_0;
  wire rom_valid_INST_0_i_3_n_0;
  wire rst_n0;
  wire rst_n0_i_1_n_0;
  wire rst_sync;
  wire sys_rst_n;
  wire [9:0]v_cnt;
  wire \v_cnt[6]_i_2_n_0 ;
  wire \v_cnt[9]_i_1_n_0 ;
  wire \v_cnt[9]_i_3_n_0 ;
  wire \v_cnt[9]_i_4_n_0 ;
  wire \v_cnt[9]_i_5_n_0 ;
  wire \v_cnt[9]_i_6_n_0 ;
  wire \v_cnt[9]_i_7_n_0 ;
  wire vio_active;
  wire vio_clk;
  wire [23:0]vio_data;
  wire vio_hsync;
  wire vio_vsync;
  wire NLW_rom_addr0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rom_addr0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rom_addr0_OVERFLOW_UNCONNECTED;
  wire NLW_rom_addr0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rom_addr0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rom_addr0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rom_addr0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rom_addr0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rom_addr0_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_rom_addr0_P_UNCONNECTED;
  wire NLW_rom_addr__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rom_addr__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rom_addr__0_OVERFLOW_UNCONNECTED;
  wire NLW_rom_addr__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rom_addr__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rom_addr__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rom_addr__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rom_addr__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rom_addr__0_CARRYOUT_UNCONNECTED;
  wire [47:14]NLW_rom_addr__0_P_UNCONNECTED;
  wire [47:0]NLW_rom_addr__0_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \h_cnt[1]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[0]),
        .I2(h_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \h_cnt[2]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[0]),
        .I2(h_cnt[1]),
        .I3(h_cnt[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \h_cnt[3]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[2]),
        .I2(h_cnt[1]),
        .I3(h_cnt[0]),
        .I4(h_cnt[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \h_cnt[4]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[0]),
        .I2(h_cnt[1]),
        .I3(h_cnt[2]),
        .I4(h_cnt[3]),
        .I5(h_cnt[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \h_cnt[5]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[4]),
        .I2(h_cnt[3]),
        .I3(\h_cnt[6]_i_2_n_0 ),
        .I4(h_cnt[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \h_cnt[6]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[5]),
        .I2(h_cnt[4]),
        .I3(h_cnt[3]),
        .I4(\h_cnt[6]_i_2_n_0 ),
        .I5(h_cnt[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \h_cnt[6]_i_2 
       (.I0(h_cnt[0]),
        .I1(h_cnt[1]),
        .I2(h_cnt[2]),
        .O(\h_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \h_cnt[7]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt[6]),
        .I2(\h_cnt[7]_i_2_n_0 ),
        .I3(h_cnt[4]),
        .I4(h_cnt[5]),
        .I5(h_cnt[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \h_cnt[7]_i_2 
       (.I0(h_cnt[3]),
        .I1(h_cnt[2]),
        .I2(h_cnt[1]),
        .I3(h_cnt[0]),
        .O(\h_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \h_cnt[8]_i_1 
       (.I0(h_cnt[7]),
        .I1(h_cnt[6]),
        .I2(\h_cnt[9]_i_2_n_0 ),
        .I3(\h_cnt[9]_i_3_n_0 ),
        .I4(h_cnt[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \h_cnt[9]_i_1 
       (.I0(\h_cnt[9]_i_2_n_0 ),
        .I1(h_cnt[6]),
        .I2(h_cnt[7]),
        .I3(h_cnt[8]),
        .I4(\h_cnt[9]_i_3_n_0 ),
        .I5(h_cnt[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_cnt[9]_i_2 
       (.I0(h_cnt[0]),
        .I1(h_cnt[1]),
        .I2(h_cnt[2]),
        .I3(h_cnt[3]),
        .I4(h_cnt[4]),
        .I5(h_cnt[5]),
        .O(\h_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000FEF00000000)) 
    \h_cnt[9]_i_3 
       (.I0(\v_cnt[9]_i_3_n_0 ),
        .I1(\h_cnt[6]_i_2_n_0 ),
        .I2(h_cnt[9]),
        .I3(\v_cnt[9]_i_4_n_0 ),
        .I4(vio_hsync),
        .I5(vio_active),
        .O(\h_cnt[9]_i_3_n_0 ));
  FDCE \h_cnt_reg[0] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(h_cnt[0]));
  FDCE \h_cnt_reg[1] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(h_cnt[1]));
  FDCE \h_cnt_reg[2] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(h_cnt[2]));
  FDCE \h_cnt_reg[3] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(h_cnt[3]));
  FDCE \h_cnt_reg[4] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(h_cnt[4]));
  FDCE \h_cnt_reg[5] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(h_cnt[5]));
  FDCE \h_cnt_reg[6] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(h_cnt[6]));
  FDCE \h_cnt_reg[7] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(h_cnt[7]));
  FDCE \h_cnt_reg[8] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(h_cnt[8]));
  FDCE \h_cnt_reg[9] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(h_cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[0]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[0]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[10]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[10]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[11]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[11]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[12]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[12]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[13]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[13]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[14]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[14]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[15]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[15]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[16]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[16]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[17]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[17]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[18]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[18]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[19]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[19]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[1]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[1]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[20]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[20]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[21]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[21]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[22]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[22]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[23]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[23]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hdmi_data[23]_i_10 
       (.I0(h_cnt[4]),
        .I1(h_cnt[3]),
        .I2(h_cnt[2]),
        .O(\hdmi_data[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hdmi_data[23]_i_11 
       (.I0(h_cnt[6]),
        .I1(h_cnt[5]),
        .O(\hdmi_data[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hdmi_data[23]_i_12 
       (.I0(h_cnt[4]),
        .I1(h_cnt[7]),
        .I2(h_cnt[5]),
        .I3(h_cnt[6]),
        .O(\hdmi_data[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \hdmi_data[23]_i_13 
       (.I0(v_cnt[9]),
        .I1(v_cnt[8]),
        .I2(v_cnt[7]),
        .I3(v_cnt[6]),
        .O(\hdmi_data[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \hdmi_data[23]_i_14 
       (.I0(v_cnt[6]),
        .I1(v_cnt[7]),
        .I2(v_cnt[9]),
        .I3(v_cnt[8]),
        .O(\hdmi_data[23]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \hdmi_data[23]_i_15 
       (.I0(v_cnt[3]),
        .I1(v_cnt[7]),
        .I2(v_cnt[5]),
        .I3(v_cnt[4]),
        .O(\hdmi_data[23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \hdmi_data[23]_i_16 
       (.I0(h_cnt[2]),
        .I1(h_cnt[1]),
        .I2(h_cnt[0]),
        .O(\hdmi_data[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \hdmi_data[23]_i_17 
       (.I0(v_cnt[9]),
        .I1(h_cnt[9]),
        .I2(h_cnt[8]),
        .I3(h_cnt[3]),
        .O(\hdmi_data[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000001FFFFFFFFF)) 
    \hdmi_data[23]_i_18 
       (.I0(v_cnt[4]),
        .I1(v_cnt[3]),
        .I2(v_cnt[5]),
        .I3(v_cnt[6]),
        .I4(v_cnt[7]),
        .I5(v_cnt[8]),
        .O(\hdmi_data[23]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hdmi_data[23]_i_19 
       (.I0(h_cnt[4]),
        .I1(h_cnt[5]),
        .I2(h_cnt[6]),
        .O(\hdmi_data[23]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_data[23]_i_2 
       (.I0(rst_sync),
        .O(\hdmi_data[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \hdmi_data[23]_i_20 
       (.I0(h_cnt[3]),
        .I1(h_cnt[8]),
        .I2(h_cnt[7]),
        .I3(v_cnt[9]),
        .I4(h_cnt[9]),
        .O(\hdmi_data[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \hdmi_data[23]_i_21 
       (.I0(v_cnt[4]),
        .I1(v_cnt[5]),
        .I2(v_cnt[7]),
        .I3(v_cnt[6]),
        .I4(v_cnt[9]),
        .I5(v_cnt[8]),
        .O(\hdmi_data[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFFFFFFEA)) 
    \hdmi_data[23]_i_3 
       (.I0(\hdmi_data[23]_i_4_n_0 ),
        .I1(\hdmi_data[23]_i_5_n_0 ),
        .I2(\hdmi_data[23]_i_6_n_0 ),
        .I3(frame_valid26_out),
        .I4(\hdmi_data[23]_i_8_n_0 ),
        .I5(\hdmi_data[23]_i_9_n_0 ),
        .O(\hdmi_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \hdmi_data[23]_i_4 
       (.I0(rom_data),
        .I1(rom_valid_INST_0_i_3_n_0),
        .I2(rom_valid_INST_0_i_2_n_0),
        .I3(\hdmi_data[23]_i_10_n_0 ),
        .I4(\hdmi_data[23]_i_11_n_0 ),
        .I5(\v_cnt[9]_i_4_n_0 ),
        .O(\hdmi_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054000000)) 
    \hdmi_data[23]_i_5 
       (.I0(h_cnt[9]),
        .I1(h_cnt[3]),
        .I2(\hdmi_data[23]_i_12_n_0 ),
        .I3(h_cnt[8]),
        .I4(\v_cnt[9]_i_3_n_0 ),
        .I5(h_cnt[7]),
        .O(\hdmi_data[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \hdmi_data[23]_i_6 
       (.I0(v_cnt[4]),
        .I1(v_cnt[5]),
        .I2(v_cnt[3]),
        .I3(\hdmi_data[23]_i_13_n_0 ),
        .I4(\v_cnt[6]_i_2_n_0 ),
        .O(\hdmi_data[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    \hdmi_data[23]_i_7 
       (.I0(\hdmi_data[23]_i_14_n_0 ),
        .I1(\hdmi_data[23]_i_15_n_0 ),
        .I2(\hdmi_data[23]_i_16_n_0 ),
        .I3(\hdmi_data[23]_i_17_n_0 ),
        .I4(\hdmi_data[23]_i_12_n_0 ),
        .I5(\hdmi_data[23]_i_18_n_0 ),
        .O(frame_valid26_out));
  LUT6 #(
    .INIT(64'h000E000000000000)) 
    \hdmi_data[23]_i_8 
       (.I0(\hdmi_data[23]_i_14_n_0 ),
        .I1(\hdmi_data[23]_i_15_n_0 ),
        .I2(\h_cnt[6]_i_2_n_0 ),
        .I3(\hdmi_data[23]_i_19_n_0 ),
        .I4(\hdmi_data[23]_i_20_n_0 ),
        .I5(\hdmi_data[23]_i_18_n_0 ),
        .O(\hdmi_data[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \hdmi_data[23]_i_9 
       (.I0(\hdmi_data[23]_i_21_n_0 ),
        .I1(v_cnt[3]),
        .I2(v_cnt[2]),
        .I3(v_cnt[0]),
        .I4(v_cnt[1]),
        .O(\hdmi_data[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[2]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[2]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[3]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[3]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[4]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[4]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[5]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[5]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[6]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[6]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[7]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[7]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[8]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[8]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \hdmi_data[9]_i_1 
       (.I0(vio_active),
        .I1(\h_cnt_reg[2]_0 ),
        .I2(vio_data[9]),
        .I3(\hdmi_data[23]_i_3_n_0 ),
        .O(\hdmi_data[9]_i_1_n_0 ));
  FDCE \hdmi_data_reg[0] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[0]_i_1_n_0 ),
        .Q(hdmi_data[0]));
  FDCE \hdmi_data_reg[10] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[10]_i_1_n_0 ),
        .Q(hdmi_data[10]));
  FDCE \hdmi_data_reg[11] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[11]_i_1_n_0 ),
        .Q(hdmi_data[11]));
  FDCE \hdmi_data_reg[12] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[12]_i_1_n_0 ),
        .Q(hdmi_data[12]));
  FDCE \hdmi_data_reg[13] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[13]_i_1_n_0 ),
        .Q(hdmi_data[13]));
  FDCE \hdmi_data_reg[14] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[14]_i_1_n_0 ),
        .Q(hdmi_data[14]));
  FDCE \hdmi_data_reg[15] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[15]_i_1_n_0 ),
        .Q(hdmi_data[15]));
  FDCE \hdmi_data_reg[16] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[16]_i_1_n_0 ),
        .Q(hdmi_data[16]));
  FDCE \hdmi_data_reg[17] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[17]_i_1_n_0 ),
        .Q(hdmi_data[17]));
  FDCE \hdmi_data_reg[18] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[18]_i_1_n_0 ),
        .Q(hdmi_data[18]));
  FDCE \hdmi_data_reg[19] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[19]_i_1_n_0 ),
        .Q(hdmi_data[19]));
  FDCE \hdmi_data_reg[1] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[1]_i_1_n_0 ),
        .Q(hdmi_data[1]));
  FDCE \hdmi_data_reg[20] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[20]_i_1_n_0 ),
        .Q(hdmi_data[20]));
  FDCE \hdmi_data_reg[21] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[21]_i_1_n_0 ),
        .Q(hdmi_data[21]));
  FDCE \hdmi_data_reg[22] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[22]_i_1_n_0 ),
        .Q(hdmi_data[22]));
  FDCE \hdmi_data_reg[23] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[23]_i_1_n_0 ),
        .Q(hdmi_data[23]));
  FDCE \hdmi_data_reg[2] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[2]_i_1_n_0 ),
        .Q(hdmi_data[2]));
  FDCE \hdmi_data_reg[3] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[3]_i_1_n_0 ),
        .Q(hdmi_data[3]));
  FDCE \hdmi_data_reg[4] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[4]_i_1_n_0 ),
        .Q(hdmi_data[4]));
  FDCE \hdmi_data_reg[5] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[5]_i_1_n_0 ),
        .Q(hdmi_data[5]));
  FDCE \hdmi_data_reg[6] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[6]_i_1_n_0 ),
        .Q(hdmi_data[6]));
  FDCE \hdmi_data_reg[7] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[7]_i_1_n_0 ),
        .Q(hdmi_data[7]));
  FDCE \hdmi_data_reg[8] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[8]_i_1_n_0 ),
        .Q(hdmi_data[8]));
  FDCE \hdmi_data_reg[9] 
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(\hdmi_data[9]_i_1_n_0 ),
        .Q(hdmi_data[9]));
  FDCE hdmi_de_reg
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(vio_active),
        .Q(hdmi_de));
  FDCE hdmi_hsync_reg
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(vio_hsync),
        .Q(hdmi_hsync));
  FDCE hdmi_vsync_reg
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(vio_vsync),
        .Q(hdmi_vsync));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rom_addr0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v_cnt}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rom_addr0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rom_addr0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rom_addr0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rom_addr0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rom_addr0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rom_addr0_OVERFLOW_UNCONNECTED),
        .P({NLW_rom_addr0_P_UNCONNECTED[47:17],rom_addr0_n_89,rom_addr0_n_90,rom_addr0_n_91,rom_addr0_n_92,rom_addr0_n_93,rom_addr0_n_94,rom_addr0_n_95,rom_addr0_n_96,rom_addr0_n_97,rom_addr0_n_98,rom_addr0_n_99,rom_addr0_n_100,rom_addr0_n_101,rom_addr0_n_102,rom_addr0_n_103,rom_addr0_n_104,rom_addr0_n_105}),
        .PATTERNBDETECT(NLW_rom_addr0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rom_addr0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({rom_addr0_n_106,rom_addr0_n_107,rom_addr0_n_108,rom_addr0_n_109,rom_addr0_n_110,rom_addr0_n_111,rom_addr0_n_112,rom_addr0_n_113,rom_addr0_n_114,rom_addr0_n_115,rom_addr0_n_116,rom_addr0_n_117,rom_addr0_n_118,rom_addr0_n_119,rom_addr0_n_120,rom_addr0_n_121,rom_addr0_n_122,rom_addr0_n_123,rom_addr0_n_124,rom_addr0_n_125,rom_addr0_n_126,rom_addr0_n_127,rom_addr0_n_128,rom_addr0_n_129,rom_addr0_n_130,rom_addr0_n_131,rom_addr0_n_132,rom_addr0_n_133,rom_addr0_n_134,rom_addr0_n_135,rom_addr0_n_136,rom_addr0_n_137,rom_addr0_n_138,rom_addr0_n_139,rom_addr0_n_140,rom_addr0_n_141,rom_addr0_n_142,rom_addr0_n_143,rom_addr0_n_144,rom_addr0_n_145,rom_addr0_n_146,rom_addr0_n_147,rom_addr0_n_148,rom_addr0_n_149,rom_addr0_n_150,rom_addr0_n_151,rom_addr0_n_152,rom_addr0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rom_addr0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rom_addr__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rom_addr__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,h_cnt}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rom_addr__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rom_addr__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rom_addr__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rom_addr__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .OVERFLOW(NLW_rom_addr__0_OVERFLOW_UNCONNECTED),
        .P({NLW_rom_addr__0_P_UNCONNECTED[47:14],rom_addr}),
        .PATTERNBDETECT(NLW_rom_addr__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rom_addr__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({rom_addr0_n_106,rom_addr0_n_107,rom_addr0_n_108,rom_addr0_n_109,rom_addr0_n_110,rom_addr0_n_111,rom_addr0_n_112,rom_addr0_n_113,rom_addr0_n_114,rom_addr0_n_115,rom_addr0_n_116,rom_addr0_n_117,rom_addr0_n_118,rom_addr0_n_119,rom_addr0_n_120,rom_addr0_n_121,rom_addr0_n_122,rom_addr0_n_123,rom_addr0_n_124,rom_addr0_n_125,rom_addr0_n_126,rom_addr0_n_127,rom_addr0_n_128,rom_addr0_n_129,rom_addr0_n_130,rom_addr0_n_131,rom_addr0_n_132,rom_addr0_n_133,rom_addr0_n_134,rom_addr0_n_135,rom_addr0_n_136,rom_addr0_n_137,rom_addr0_n_138,rom_addr0_n_139,rom_addr0_n_140,rom_addr0_n_141,rom_addr0_n_142,rom_addr0_n_143,rom_addr0_n_144,rom_addr0_n_145,rom_addr0_n_146,rom_addr0_n_147,rom_addr0_n_148,rom_addr0_n_149,rom_addr0_n_150,rom_addr0_n_151,rom_addr0_n_152,rom_addr0_n_153}),
        .PCOUT(NLW_rom_addr__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rom_addr__0_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hEAAA000000000000)) 
    rom_valid_INST_0
       (.I0(rom_valid_INST_0_i_1_n_0),
        .I1(h_cnt[2]),
        .I2(h_cnt[3]),
        .I3(h_cnt[4]),
        .I4(rom_valid_INST_0_i_2_n_0),
        .I5(rom_valid_INST_0_i_3_n_0),
        .O(\h_cnt_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rom_valid_INST_0_i_1
       (.I0(h_cnt[5]),
        .I1(h_cnt[6]),
        .I2(h_cnt[7]),
        .I3(h_cnt[8]),
        .O(rom_valid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    rom_valid_INST_0_i_2
       (.I0(h_cnt[8]),
        .I1(h_cnt[7]),
        .I2(h_cnt[9]),
        .I3(v_cnt[7]),
        .I4(v_cnt[9]),
        .I5(v_cnt[8]),
        .O(rom_valid_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    rom_valid_INST_0_i_3
       (.I0(v_cnt[2]),
        .I1(v_cnt[3]),
        .I2(v_cnt[4]),
        .I3(v_cnt[6]),
        .I4(v_cnt[5]),
        .O(rom_valid_INST_0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rst_n0_i_1
       (.I0(sys_rst_n),
        .O(rst_n0_i_1_n_0));
  FDCE rst_n0_reg
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(rst_n0_i_1_n_0),
        .D(1'b1),
        .Q(rst_n0));
  FDCE rst_sync_reg
       (.C(vio_clk),
        .CE(1'b1),
        .CLR(rst_n0_i_1_n_0),
        .D(rst_n0),
        .Q(rst_sync));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[0]),
        .I2(v_cnt[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \v_cnt[2]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[0]),
        .I2(v_cnt[1]),
        .I3(v_cnt[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \v_cnt[3]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[2]),
        .I2(v_cnt[1]),
        .I3(v_cnt[0]),
        .I4(v_cnt[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \v_cnt[4]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[0]),
        .I2(v_cnt[1]),
        .I3(v_cnt[2]),
        .I4(v_cnt[3]),
        .I5(v_cnt[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \v_cnt[5]_i_1 
       (.I0(\v_cnt[9]_i_6_n_0 ),
        .I1(v_cnt[4]),
        .I2(v_cnt[3]),
        .I3(\v_cnt[6]_i_2_n_0 ),
        .I4(v_cnt[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \v_cnt[6]_i_1 
       (.I0(v_cnt[5]),
        .I1(v_cnt[4]),
        .I2(v_cnt[3]),
        .I3(\v_cnt[6]_i_2_n_0 ),
        .I4(\v_cnt[9]_i_6_n_0 ),
        .I5(v_cnt[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_cnt[6]_i_2 
       (.I0(v_cnt[0]),
        .I1(v_cnt[1]),
        .I2(v_cnt[2]),
        .O(\v_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \v_cnt[7]_i_1 
       (.I0(\v_cnt[9]_i_5_n_0 ),
        .I1(v_cnt[6]),
        .I2(\v_cnt[9]_i_6_n_0 ),
        .I3(v_cnt[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \v_cnt[8]_i_1 
       (.I0(v_cnt[7]),
        .I1(v_cnt[6]),
        .I2(\v_cnt[9]_i_5_n_0 ),
        .I3(\v_cnt[9]_i_6_n_0 ),
        .I4(v_cnt[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \v_cnt[9]_i_1 
       (.I0(\v_cnt[9]_i_3_n_0 ),
        .I1(\v_cnt[9]_i_4_n_0 ),
        .I2(vio_active),
        .I3(h_cnt[9]),
        .I4(\h_cnt[6]_i_2_n_0 ),
        .I5(vio_vsync),
        .O(\v_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \v_cnt[9]_i_2 
       (.I0(\v_cnt[9]_i_5_n_0 ),
        .I1(v_cnt[6]),
        .I2(v_cnt[7]),
        .I3(v_cnt[8]),
        .I4(\v_cnt[9]_i_6_n_0 ),
        .I5(v_cnt[9]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \v_cnt[9]_i_3 
       (.I0(h_cnt[6]),
        .I1(h_cnt[5]),
        .I2(h_cnt[4]),
        .I3(h_cnt[3]),
        .O(\v_cnt[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \v_cnt[9]_i_4 
       (.I0(h_cnt[8]),
        .I1(h_cnt[7]),
        .O(\v_cnt[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_cnt[9]_i_5 
       (.I0(v_cnt[5]),
        .I1(v_cnt[4]),
        .I2(v_cnt[3]),
        .I3(v_cnt[2]),
        .I4(v_cnt[1]),
        .I5(v_cnt[0]),
        .O(\v_cnt[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00001555)) 
    \v_cnt[9]_i_6 
       (.I0(v_cnt[9]),
        .I1(v_cnt[8]),
        .I2(v_cnt[7]),
        .I3(\v_cnt[9]_i_7_n_0 ),
        .I4(vio_vsync),
        .O(\v_cnt[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF004000)) 
    \v_cnt[9]_i_7 
       (.I0(\v_cnt[6]_i_2_n_0 ),
        .I1(v_cnt[4]),
        .I2(v_cnt[3]),
        .I3(v_cnt[6]),
        .I4(v_cnt[5]),
        .O(\v_cnt[9]_i_7_n_0 ));
  FDCE \v_cnt_reg[0] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(v_cnt[0]));
  FDCE \v_cnt_reg[1] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(v_cnt[1]));
  FDCE \v_cnt_reg[2] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(v_cnt[2]));
  FDCE \v_cnt_reg[3] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(v_cnt[3]));
  FDCE \v_cnt_reg[4] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(v_cnt[4]));
  FDCE \v_cnt_reg[5] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(v_cnt[5]));
  FDCE \v_cnt_reg[6] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(v_cnt[6]));
  FDCE \v_cnt_reg[7] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(v_cnt[7]));
  FDCE \v_cnt_reg[8] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(v_cnt[8]));
  FDCE \v_cnt_reg[9] 
       (.C(vio_clk),
        .CE(\v_cnt[9]_i_1_n_0 ),
        .CLR(\hdmi_data[23]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(v_cnt[9]));
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
