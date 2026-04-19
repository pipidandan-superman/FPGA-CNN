// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 19 11:47:16 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_ov5640_cfg_top_0_0/design_1_ov5640_cfg_top_0_0_sim_netlist.v
// Design      : design_1_ov5640_cfg_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ov5640_cfg_top_0_0,ov5640_cfg_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ov5640_cfg_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_ov5640_cfg_top_0_0
   (sys_clk,
    sys_rst_n,
    sccb_clk,
    sccb_data,
    sccb_cfg_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sccb_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sccb_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ov5640_cfg_top_0_0_sccb_clk, INSERT_VIP 0" *) output sccb_clk;
  inout sccb_data;
  output sccb_cfg_done;

  wire sccb_cfg_done;
  wire sccb_clk;
  wire sccb_data;
  wire sys_clk;
  wire sys_rst_n;

  design_1_ov5640_cfg_top_0_0_ov5640_cfg_top inst
       (.sccb_cfg_done_reg(sccb_cfg_done),
        .sccb_clk(sccb_clk),
        .sccb_data(sccb_data),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule

(* ORIG_REF_NAME = "ov5640_cfg_top" *) 
module design_1_ov5640_cfg_top_0_0_ov5640_cfg_top
   (sccb_cfg_done_reg,
    sccb_data,
    sccb_clk,
    sys_rst_n,
    sys_clk);
  output sccb_cfg_done_reg;
  output sccb_data;
  output sccb_clk;
  input sys_rst_n;
  input sys_clk;

  wire data0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire p_0_in_0;
  wire [7:0]reg_index;
  wire \reg_index[0]_i_2_n_0 ;
  wire \reg_index[7]_i_5_n_0 ;
  wire [7:0]reg_index_1;
  wire reg_index_reg_rep_i_10_n_0;
  wire reg_index_reg_rep_n_1;
  wire reg_index_reg_rep_n_10;
  wire reg_index_reg_rep_n_11;
  wire reg_index_reg_rep_n_12;
  wire reg_index_reg_rep_n_13;
  wire reg_index_reg_rep_n_14;
  wire reg_index_reg_rep_n_15;
  wire reg_index_reg_rep_n_2;
  wire reg_index_reg_rep_n_3;
  wire reg_index_reg_rep_n_4;
  wire reg_index_reg_rep_n_5;
  wire reg_index_reg_rep_n_6;
  wire reg_index_reg_rep_n_7;
  wire reg_index_reg_rep_n_8;
  wire reg_index_reg_rep_n_9;
  wire \rst_cnt[0]_i_1_n_0 ;
  wire \rst_cnt[1]_i_1_n_0 ;
  wire \rst_cnt[2]_i_1_n_0 ;
  wire \rst_cnt[3]_i_1_n_0 ;
  wire \rst_cnt[4]_i_1_n_0 ;
  wire \rst_cnt[5]_i_1_n_0 ;
  wire \rst_cnt[5]_i_2_n_0 ;
  wire \rst_cnt[6]_i_1_n_0 ;
  wire \rst_cnt[7]_i_1_n_0 ;
  wire \rst_cnt[7]_i_2_n_0 ;
  wire \rst_cnt[8]_i_1_n_0 ;
  wire \rst_cnt[8]_i_2_n_0 ;
  wire \rst_cnt_reg_n_0_[0] ;
  wire \rst_cnt_reg_n_0_[1] ;
  wire \rst_cnt_reg_n_0_[2] ;
  wire \rst_cnt_reg_n_0_[3] ;
  wire \rst_cnt_reg_n_0_[4] ;
  wire \rst_cnt_reg_n_0_[5] ;
  wire \rst_cnt_reg_n_0_[6] ;
  wire \rst_cnt_reg_n_0_[7] ;
  wire sccb_cfg_done_reg;
  wire sccb_clk;
  wire sccb_data;
  wire sys_clk;
  wire sys_rst_n;
  wire u_sccb_protocol_n_0;
  wire u_sccb_protocol_n_10;
  wire u_sccb_protocol_n_11;
  wire u_sccb_protocol_n_12;
  wire u_sccb_protocol_n_13;
  wire u_sccb_protocol_n_15;
  wire u_sccb_protocol_n_3;
  wire u_sccb_protocol_n_5;
  wire u_sccb_protocol_n_6;
  wire u_sccb_protocol_n_7;
  wire u_sccb_protocol_n_8;
  wire u_sccb_protocol_n_9;
  wire w_done;
  wire w_en;
  wire [15:5]NLW_reg_index_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_reg_index_reg_rep_DOPBDOP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \reg_index[0]_i_1 
       (.I0(\reg_index[0]_i_2_n_0 ),
        .I1(reg_index[1]),
        .I2(reg_index[7]),
        .I3(reg_index[5]),
        .I4(reg_index[0]),
        .O(reg_index_1[0]));
  LUT4 #(
    .INIT(16'h0080)) 
    \reg_index[0]_i_2 
       (.I0(reg_index[6]),
        .I1(reg_index[3]),
        .I2(reg_index[4]),
        .I3(reg_index[2]),
        .O(\reg_index[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_index[1]_i_1 
       (.I0(reg_index[1]),
        .I1(reg_index[0]),
        .O(reg_index_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_index[2]_i_1 
       (.I0(reg_index[1]),
        .I1(reg_index[0]),
        .I2(reg_index[2]),
        .O(reg_index_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_index[3]_i_1 
       (.I0(reg_index[3]),
        .I1(reg_index[1]),
        .I2(reg_index[0]),
        .I3(reg_index[2]),
        .O(reg_index_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \reg_index[4]_i_1 
       (.I0(reg_index[4]),
        .I1(reg_index[2]),
        .I2(reg_index[0]),
        .I3(reg_index[1]),
        .I4(reg_index[3]),
        .O(reg_index_1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \reg_index[5]_i_1 
       (.I0(reg_index[5]),
        .I1(reg_index[3]),
        .I2(reg_index[1]),
        .I3(reg_index[0]),
        .I4(reg_index[2]),
        .I5(reg_index[4]),
        .O(reg_index_1[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \reg_index[6]_i_1 
       (.I0(reg_index[6]),
        .I1(reg_index[4]),
        .I2(\reg_index[7]_i_5_n_0 ),
        .I3(reg_index[3]),
        .I4(reg_index[5]),
        .O(reg_index_1[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \reg_index[7]_i_3 
       (.I0(reg_index[7]),
        .I1(reg_index[5]),
        .I2(reg_index[3]),
        .I3(\reg_index[7]_i_5_n_0 ),
        .I4(reg_index[4]),
        .I5(reg_index[6]),
        .O(reg_index_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_index[7]_i_5 
       (.I0(reg_index[2]),
        .I1(reg_index[0]),
        .I2(reg_index[1]),
        .O(\reg_index[7]_i_5_n_0 ));
  FDRE \reg_index_reg[0] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[0]),
        .Q(reg_index[0]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[1] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[1]),
        .Q(reg_index[1]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[2] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[2]),
        .Q(reg_index[2]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[3] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[3]),
        .Q(reg_index[3]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[4] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[4]),
        .Q(reg_index[4]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[5] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[5]),
        .Q(reg_index[5]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[6] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[6]),
        .Q(reg_index[6]),
        .R(u_sccb_protocol_n_15));
  FDRE \reg_index_reg[7] 
       (.C(sys_clk),
        .CE(w_done),
        .D(reg_index_1[7]),
        .Q(reg_index[7]),
        .R(u_sccb_protocol_n_15));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d5" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "5888" *) 
  (* RTL_RAM_NAME = "inst/reg_index" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "256" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "22" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000AAA03000C000002AAAF8AD5FFFAA90041),
    .INITP_01(256'h001028C0AAFA0000000000000FFFFFF1557FFFFF000000001555555555555555),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h035A04A021E0331232E2310E303608013713341A18FF17FF0303084208820311),
    .INIT_01(256'h180013431C501B2020522D60013300083112010A06100502051A0B6017011578),
    .INIT_02(256'h111010000B400A9C091C080007080600059804280134220134403603351319F8),
    .INIT_03(256'h1E261B3010280F3000A70E001F0100612E000E5804FF0000051A010208641200),
    .INIT_04(256'h0D030C080B0D0A08090508050708060C05260412030F020F011400231F141160),
    .INIT_05(256'h1D0E1C081B061A051908180D170816031501140013031207110910030F000E00),
    .INIT_06(256'h2D242C242B222A2429262864272626082526244623282215211120111F171E29),
    .INIT_07(256'h3DCE3C423B283A2639243844372636223522342433263224314230402F222E06),
    .INIT_08(256'h8F568E3D8D428CB28BE08A5489758809870986098524842583908211815880FF),
    .INIT_09(256'h80019E009D829C069B009A04991298049702960395F094F093F0920091FF9046),
    .INIT_0A(256'h901D8FEA8EDD8DCD8CB88BAA8A9A89918887877D867185658451832882148108),
    .INIT_0B(256'h8A0089108410834080068B988A018910886C877C8688857E840A8308825B811E),
    .INIT_0C(256'h080225000C060B040A300908071606080530040803000210013000081D408BF8),
    .INIT_0D(256'h080207A90606053F040A03FA0200010000001531143121012040070736693541),
    .INIT_0E(256'h1510141703E002170C0309521229180013040FE40E020D640C070BE00A010980),
    .INIT_0F(256'h0000000000000000000003000183240237160C200B370704130306C3021C0402),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h000D000D000D000D000D000D000D000C000C000C000C000C000C000C000C000C),
    .INIT_21(256'h000E000E0011000D000D000C000D000D000D000E000E000E000D000D000D000D),
    .INIT_22(256'h000E000E000F000F000F000F000F000F000F000F000F000D000D000D000D000E),
    .INIT_23(256'h000E000E000E000E0014001100140010000C000C000C000C00100010000D000E),
    .INIT_24(256'h00160016001600160016001600160016001600160016001600160016000E000E),
    .INIT_25(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_26(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_27(256'h0016001600160016001600160016001600160016001600160016001600160016),
    .INIT_28(256'h0014001400140014001400140014001400140014001400140014001400140014),
    .INIT_29(256'h0015001400140014001400140014001400140014001400140014001400140014),
    .INIT_2A(256'h0015001500150015001500150015001500150015001500150015001500150015),
    .INIT_2B(256'h0015001500150015001500140014001400140014001400140014001400140014),
    .INIT_2C(256'h000C001400140014001400140014001400140014001400140014001400140015),
    .INIT_2D(256'h000E000E000E000E000E000E000E000E000E000E000E000E000E000F000C000C),
    .INIT_2E(256'h000E000E000E000E000D000D000D000D000E000E000E000E000E000E000E000E),
    .INIT_2F(256'h00000000000000000000000D0014000E00120011001100110011000C000C0010),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    reg_index_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,u_sccb_protocol_n_5,u_sccb_protocol_n_6,u_sccb_protocol_n_7,u_sccb_protocol_n_8,u_sccb_protocol_n_9,u_sccb_protocol_n_10,u_sccb_protocol_n_11,u_sccb_protocol_n_12,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,u_sccb_protocol_n_5,u_sccb_protocol_n_6,u_sccb_protocol_n_7,u_sccb_protocol_n_8,u_sccb_protocol_n_9,u_sccb_protocol_n_10,u_sccb_protocol_n_11,u_sccb_protocol_n_12,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(sys_clk),
        .CLKBWRCLK(sys_clk),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({data0,reg_index_reg_rep_n_1,reg_index_reg_rep_n_2,reg_index_reg_rep_n_3,reg_index_reg_rep_n_4,reg_index_reg_rep_n_5,reg_index_reg_rep_n_6,reg_index_reg_rep_n_7,reg_index_reg_rep_n_8,reg_index_reg_rep_n_9,reg_index_reg_rep_n_10,reg_index_reg_rep_n_11,reg_index_reg_rep_n_12,reg_index_reg_rep_n_13,reg_index_reg_rep_n_14,reg_index_reg_rep_n_15}),
        .DOBDO({NLW_reg_index_reg_rep_DOBDO_UNCONNECTED[15:5],data7,data6,data5,data4,data3}),
        .DOPADOP({data2,data1}),
        .DOPBDOP(NLW_reg_index_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(u_sccb_protocol_n_3),
        .ENBWREN(u_sccb_protocol_n_3),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    reg_index_reg_rep_i_10
       (.I0(reg_index[5]),
        .I1(reg_index[3]),
        .I2(reg_index[1]),
        .I3(reg_index[0]),
        .I4(reg_index[2]),
        .I5(reg_index[4]),
        .O(reg_index_reg_rep_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \rst_cnt[0]_i_1 
       (.I0(p_0_in_0),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .O(\rst_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \rst_cnt[1]_i_1 
       (.I0(sys_rst_n),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(p_0_in_0),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .O(\rst_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \rst_cnt[2]_i_1 
       (.I0(\rst_cnt_reg_n_0_[2] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .I2(p_0_in_0),
        .I3(\rst_cnt_reg_n_0_[0] ),
        .O(\rst_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \rst_cnt[3]_i_1 
       (.I0(\rst_cnt_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .I4(\rst_cnt_reg_n_0_[2] ),
        .O(\rst_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \rst_cnt[4]_i_1 
       (.I0(\rst_cnt_reg_n_0_[4] ),
        .I1(\rst_cnt_reg_n_0_[3] ),
        .I2(\rst_cnt_reg_n_0_[2] ),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .I4(\rst_cnt_reg_n_0_[0] ),
        .I5(p_0_in_0),
        .O(\rst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \rst_cnt[5]_i_1 
       (.I0(\rst_cnt_reg_n_0_[5] ),
        .I1(\rst_cnt_reg_n_0_[4] ),
        .I2(\rst_cnt[5]_i_2_n_0 ),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .I4(\rst_cnt_reg_n_0_[2] ),
        .I5(\rst_cnt_reg_n_0_[3] ),
        .O(\rst_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rst_cnt[5]_i_2 
       (.I0(p_0_in_0),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .O(\rst_cnt[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \rst_cnt[6]_i_1 
       (.I0(\rst_cnt_reg_n_0_[6] ),
        .I1(\rst_cnt[7]_i_2_n_0 ),
        .I2(\rst_cnt_reg_n_0_[5] ),
        .O(\rst_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBF400000)) 
    \rst_cnt[7]_i_1 
       (.I0(\rst_cnt[7]_i_2_n_0 ),
        .I1(\rst_cnt_reg_n_0_[5] ),
        .I2(\rst_cnt_reg_n_0_[6] ),
        .I3(\rst_cnt_reg_n_0_[7] ),
        .I4(sys_rst_n),
        .O(\rst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \rst_cnt[7]_i_2 
       (.I0(\rst_cnt_reg_n_0_[3] ),
        .I1(\rst_cnt_reg_n_0_[2] ),
        .I2(\rst_cnt_reg_n_0_[1] ),
        .I3(\rst_cnt_reg_n_0_[0] ),
        .I4(p_0_in_0),
        .I5(\rst_cnt_reg_n_0_[4] ),
        .O(\rst_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \rst_cnt[8]_i_1 
       (.I0(p_0_in_0),
        .I1(\rst_cnt[8]_i_2_n_0 ),
        .I2(\rst_cnt_reg_n_0_[6] ),
        .I3(\rst_cnt_reg_n_0_[0] ),
        .I4(\rst_cnt_reg_n_0_[5] ),
        .I5(\rst_cnt_reg_n_0_[3] ),
        .O(\rst_cnt[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rst_cnt[8]_i_2 
       (.I0(\rst_cnt_reg_n_0_[2] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .I2(\rst_cnt_reg_n_0_[7] ),
        .I3(\rst_cnt_reg_n_0_[4] ),
        .O(\rst_cnt[8]_i_2_n_0 ));
  FDRE \rst_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[0]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[0] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[1]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rst_cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[2]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[2] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[3]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[3] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[4]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[4] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[5]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[5] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[6]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[6] ),
        .R(u_sccb_protocol_n_0));
  FDRE \rst_cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[7]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rst_cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\rst_cnt[8]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(u_sccb_protocol_n_0));
  design_1_ov5640_cfg_top_0_0_sccb_protocol u_sccb_protocol
       (.ADDRARDADDR({u_sccb_protocol_n_5,u_sccb_protocol_n_6,u_sccb_protocol_n_7,u_sccb_protocol_n_8,u_sccb_protocol_n_9,u_sccb_protocol_n_10,u_sccb_protocol_n_11,u_sccb_protocol_n_12}),
        .D(reg_index_1[0]),
        .DOADO({data0,reg_index_reg_rep_n_1,reg_index_reg_rep_n_2,reg_index_reg_rep_n_3,reg_index_reg_rep_n_4,reg_index_reg_rep_n_5,reg_index_reg_rep_n_6,reg_index_reg_rep_n_7,reg_index_reg_rep_n_8,reg_index_reg_rep_n_9,reg_index_reg_rep_n_10,reg_index_reg_rep_n_11,reg_index_reg_rep_n_12,reg_index_reg_rep_n_13,reg_index_reg_rep_n_14,reg_index_reg_rep_n_15}),
        .DOBDO({data7,data6,data5,data4,data3}),
        .DOPADOP({data2,data1}),
        .Q(reg_index),
        .SR(u_sccb_protocol_n_15),
        .p_0_in_0(p_0_in_0),
        .reg_index_reg_rep(reg_index_reg_rep_i_10_n_0),
        .reg_index_reg_rep_0(\reg_index[7]_i_5_n_0 ),
        .sccb_cfg_done_reg_0(sccb_cfg_done_reg),
        .sccb_cfg_done_reg_1(u_sccb_protocol_n_13),
        .sccb_clk(sccb_clk),
        .sccb_data(sccb_data),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(u_sccb_protocol_n_0),
        .sys_rst_n_1(u_sccb_protocol_n_3),
        .w_done(w_done),
        .w_en(w_en));
  FDRE w_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(u_sccb_protocol_n_13),
        .Q(w_en),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sccb_protocol" *) 
module design_1_ov5640_cfg_top_0_0_sccb_protocol
   (sys_rst_n_0,
    sccb_clk,
    sccb_cfg_done_reg_0,
    sys_rst_n_1,
    w_done,
    ADDRARDADDR,
    sccb_cfg_done_reg_1,
    sccb_data,
    SR,
    sys_clk,
    sys_rst_n,
    p_0_in_0,
    Q,
    reg_index_reg_rep,
    reg_index_reg_rep_0,
    D,
    w_en,
    DOBDO,
    DOPADOP,
    DOADO);
  output sys_rst_n_0;
  output sccb_clk;
  output sccb_cfg_done_reg_0;
  output sys_rst_n_1;
  output w_done;
  output [7:0]ADDRARDADDR;
  output sccb_cfg_done_reg_1;
  output sccb_data;
  output [0:0]SR;
  input sys_clk;
  input sys_rst_n;
  input p_0_in_0;
  input [7:0]Q;
  input reg_index_reg_rep;
  input reg_index_reg_rep_0;
  input [0:0]D;
  input w_en;
  input [4:0]DOBDO;
  input [1:0]DOPADOP;
  input [15:0]DOADO;

  wire [7:0]ADDRARDADDR;
  wire [0:0]D;
  wire [15:0]DOADO;
  wire [4:0]DOBDO;
  wire [1:0]DOPADOP;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[3]_i_1_n_0 ;
  wire \cnt_bit[3]_i_3_n_0 ;
  wire cnt_bit__0;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire \cnt_bit_reg_n_0_[3] ;
  wire [9:0]cnt_clk;
  wire \cnt_clk[2]_i_2_n_0 ;
  wire \cnt_clk[2]_i_3_n_0 ;
  wire \cnt_clk[9]_i_1_n_0 ;
  wire \cnt_clk[9]_i_3_n_0 ;
  wire \cnt_clk[9]_i_4_n_0 ;
  wire \cnt_clk_reg_n_0_[0] ;
  wire \cnt_clk_reg_n_0_[1] ;
  wire \cnt_clk_reg_n_0_[2] ;
  wire \cnt_clk_reg_n_0_[3] ;
  wire \cnt_clk_reg_n_0_[4] ;
  wire \cnt_clk_reg_n_0_[5] ;
  wire \cnt_clk_reg_n_0_[6] ;
  wire \cnt_clk_reg_n_0_[7] ;
  wire \cnt_clk_reg_n_0_[8] ;
  wire \cnt_clk_reg_n_0_[9] ;
  wire [6:0]cnt_delay;
  wire \cnt_delay[3]_i_2_n_0 ;
  wire \cnt_delay[4]_i_1_n_0 ;
  wire \cnt_delay[6]_i_1_n_0 ;
  wire \cnt_delay[6]_i_3_n_0 ;
  wire [6:0]cnt_delay__0;
  wire \cnt_reg_wr0_inferred__0/i__carry_n_1 ;
  wire \cnt_reg_wr0_inferred__0/i__carry_n_2 ;
  wire \cnt_reg_wr0_inferred__0/i__carry_n_3 ;
  wire \cnt_reg_wr[0]_i_1_n_0 ;
  wire \cnt_reg_wr[2]_i_1_n_0 ;
  wire \cnt_reg_wr[7]_i_1_n_0 ;
  wire \cnt_reg_wr[7]_i_3_n_0 ;
  wire [7:0]cnt_reg_wr_reg;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire [7:1]p_0_in;
  wire p_0_in4_in;
  wire p_0_in_0;
  wire p_2_in;
  wire \reg_index[7]_i_4_n_0 ;
  wire reg_index_reg_rep;
  wire reg_index_reg_rep_0;
  wire sccb_cfg_done_i_1_n_0;
  wire sccb_cfg_done_reg_0;
  wire sccb_cfg_done_reg_1;
  wire sccb_clk;
  wire sccb_data;
  wire sccb_data_INST_0_i_1_n_0;
  wire sck_i_10_n_0;
  wire sck_i_2_n_0;
  wire sck_i_3_n_0;
  wire sck_i_4_n_0;
  wire sck_i_5_n_0;
  wire sck_i_6_n_0;
  wire sck_i_7_n_0;
  wire sck_i_8_n_0;
  wire sck_i_9_n_0;
  wire sda_out;
  wire sda_out_i_10_n_0;
  wire sda_out_i_11_n_0;
  wire sda_out_i_12_n_0;
  wire sda_out_i_13_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire sda_out_i_7_n_0;
  wire sda_out_i_8_n_0;
  wire sda_out_i_9_n_0;
  wire sda_out_reg_i_2_n_0;
  wire sda_out_reg_n_0;
  wire sys_clk;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire sys_rst_n_1;
  wire w_done;
  wire w_en;
  wire [3:3]\NLW_cnt_reg_wr0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg_wr0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(p_2_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_2_in),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_0_in4_in),
        .I1(w_en),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000FFFFF000F888)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[6]_i_2_n_0 ),
        .I4(w_en),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .I4(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE0A)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(\FSM_onehot_state[8]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state[6]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(cnt_delay[0]),
        .I1(\cnt_delay[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(w_done),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state[8]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(w_en),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .I1(\cnt_clk_reg_n_0_[9] ),
        .I2(\FSM_onehot_state[8]_i_3_n_0 ),
        .I3(\cnt_clk[2]_i_3_n_0 ),
        .I4(\cnt_clk_reg_n_0_[6] ),
        .I5(\cnt_clk_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(\cnt_clk_reg_n_0_[5] ),
        .I1(\cnt_clk_reg_n_0_[4] ),
        .I2(\cnt_clk_reg_n_0_[8] ),
        .I3(\cnt_clk_reg_n_0_[2] ),
        .O(\FSM_onehot_state[8]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_2_in),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_0_in4_in),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .S(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(sys_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \cnt_bit[0]_i_1 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[3] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_bit[1]_i_1 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_bit[2]_i_1 
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \cnt_bit[3]_i_1 
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(sys_rst_n),
        .O(\cnt_bit[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_bit[3]_i_2 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(cnt_bit__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7E80)) 
    \cnt_bit[3]_i_3 
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .O(\cnt_bit[3]_i_3_n_0 ));
  FDRE \cnt_bit_reg[0] 
       (.C(sys_clk),
        .CE(cnt_bit__0),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[0] ),
        .R(\cnt_bit[3]_i_1_n_0 ));
  FDRE \cnt_bit_reg[1] 
       (.C(sys_clk),
        .CE(cnt_bit__0),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[1] ),
        .R(\cnt_bit[3]_i_1_n_0 ));
  FDRE \cnt_bit_reg[2] 
       (.C(sys_clk),
        .CE(cnt_bit__0),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[2] ),
        .R(\cnt_bit[3]_i_1_n_0 ));
  FDRE \cnt_bit_reg[3] 
       (.C(sys_clk),
        .CE(cnt_bit__0),
        .D(\cnt_bit[3]_i_3_n_0 ),
        .Q(\cnt_bit_reg_n_0_[3] ),
        .R(\cnt_bit[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[0]_i_1 
       (.I0(\cnt_clk_reg_n_0_[0] ),
        .O(cnt_clk[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_clk[1]_i_1 
       (.I0(\cnt_clk_reg_n_0_[1] ),
        .I1(\cnt_clk_reg_n_0_[0] ),
        .O(cnt_clk[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA54555555)) 
    \cnt_clk[2]_i_1 
       (.I0(\cnt_clk_reg_n_0_[2] ),
        .I1(\cnt_clk[9]_i_4_n_0 ),
        .I2(\cnt_clk[2]_i_2_n_0 ),
        .I3(\cnt_clk_reg_n_0_[7] ),
        .I4(\cnt_clk_reg_n_0_[8] ),
        .I5(\cnt_clk[2]_i_3_n_0 ),
        .O(cnt_clk[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_clk[2]_i_2 
       (.I0(\cnt_clk_reg_n_0_[9] ),
        .I1(\cnt_clk_reg_n_0_[3] ),
        .O(\cnt_clk[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_clk[2]_i_3 
       (.I0(\cnt_clk_reg_n_0_[1] ),
        .I1(\cnt_clk_reg_n_0_[0] ),
        .O(\cnt_clk[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_clk[3]_i_1 
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .I1(\cnt_clk_reg_n_0_[1] ),
        .I2(\cnt_clk_reg_n_0_[0] ),
        .I3(\cnt_clk_reg_n_0_[2] ),
        .O(cnt_clk[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clk[4]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\cnt_clk_reg_n_0_[3] ),
        .I2(\cnt_clk_reg_n_0_[1] ),
        .I3(\cnt_clk_reg_n_0_[0] ),
        .I4(\cnt_clk_reg_n_0_[2] ),
        .I5(\cnt_clk_reg_n_0_[4] ),
        .O(cnt_clk[4]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_clk[5]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\cnt_clk[9]_i_3_n_0 ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk_reg_n_0_[4] ),
        .I4(\cnt_clk_reg_n_0_[5] ),
        .O(cnt_clk[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clk[6]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\cnt_clk_reg_n_0_[4] ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk[9]_i_3_n_0 ),
        .I4(\cnt_clk_reg_n_0_[5] ),
        .I5(\cnt_clk_reg_n_0_[6] ),
        .O(cnt_clk[6]));
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cnt_clk[7]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\cnt_clk[9]_i_4_n_0 ),
        .I2(\cnt_clk[9]_i_3_n_0 ),
        .I3(\cnt_clk_reg_n_0_[3] ),
        .I4(\cnt_clk_reg_n_0_[7] ),
        .O(cnt_clk[7]));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \cnt_clk[8]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk[9]_i_3_n_0 ),
        .I4(\cnt_clk[9]_i_4_n_0 ),
        .I5(\cnt_clk_reg_n_0_[8] ),
        .O(cnt_clk[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_clk[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(sys_rst_n),
        .O(\cnt_clk[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \cnt_clk[9]_i_2 
       (.I0(\cnt_clk_reg_n_0_[9] ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk[9]_i_3_n_0 ),
        .I4(\cnt_clk[9]_i_4_n_0 ),
        .I5(\cnt_clk_reg_n_0_[8] ),
        .O(cnt_clk[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt_clk[9]_i_3 
       (.I0(\cnt_clk_reg_n_0_[2] ),
        .I1(\cnt_clk_reg_n_0_[0] ),
        .I2(\cnt_clk_reg_n_0_[1] ),
        .O(\cnt_clk[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clk[9]_i_4 
       (.I0(\cnt_clk_reg_n_0_[5] ),
        .I1(\cnt_clk_reg_n_0_[4] ),
        .I2(\cnt_clk_reg_n_0_[6] ),
        .O(\cnt_clk[9]_i_4_n_0 ));
  FDRE \cnt_clk_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[0]),
        .Q(\cnt_clk_reg_n_0_[0] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[1]),
        .Q(\cnt_clk_reg_n_0_[1] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[2]),
        .Q(\cnt_clk_reg_n_0_[2] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[3]),
        .Q(\cnt_clk_reg_n_0_[3] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[4]),
        .Q(\cnt_clk_reg_n_0_[4] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[5]),
        .Q(\cnt_clk_reg_n_0_[5] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[6]),
        .Q(\cnt_clk_reg_n_0_[6] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[7]),
        .Q(\cnt_clk_reg_n_0_[7] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[8]),
        .Q(\cnt_clk_reg_n_0_[8] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  FDRE \cnt_clk_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[9]),
        .Q(\cnt_clk_reg_n_0_[9] ),
        .R(\cnt_clk[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_delay[0]_i_1 
       (.I0(\cnt_delay[3]_i_2_n_0 ),
        .I1(cnt_delay[0]),
        .O(cnt_delay__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_delay[1]_i_1 
       (.I0(\cnt_delay[3]_i_2_n_0 ),
        .I1(cnt_delay[0]),
        .I2(cnt_delay[1]),
        .O(cnt_delay__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_delay[2]_i_1 
       (.I0(cnt_delay[2]),
        .I1(cnt_delay[1]),
        .I2(cnt_delay[0]),
        .O(cnt_delay__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7878F000)) 
    \cnt_delay[3]_i_1 
       (.I0(cnt_delay[1]),
        .I1(cnt_delay[2]),
        .I2(cnt_delay[3]),
        .I3(\cnt_delay[3]_i_2_n_0 ),
        .I4(cnt_delay[0]),
        .O(cnt_delay__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \cnt_delay[3]_i_2 
       (.I0(cnt_delay[6]),
        .I1(cnt_delay[2]),
        .I2(cnt_delay[5]),
        .I3(cnt_delay[1]),
        .I4(cnt_delay[4]),
        .I5(cnt_delay[3]),
        .O(\cnt_delay[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_delay[4]_i_1 
       (.I0(cnt_delay[4]),
        .I1(cnt_delay[3]),
        .I2(cnt_delay[0]),
        .I3(cnt_delay[1]),
        .I4(cnt_delay[2]),
        .O(\cnt_delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_delay[5]_i_1 
       (.I0(cnt_delay[5]),
        .I1(cnt_delay[2]),
        .I2(cnt_delay[1]),
        .I3(cnt_delay[0]),
        .I4(cnt_delay[3]),
        .I5(cnt_delay[4]),
        .O(cnt_delay__0[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_delay[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(sys_rst_n),
        .O(\cnt_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4414444444444444)) 
    \cnt_delay[6]_i_2 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(cnt_delay[6]),
        .I2(cnt_delay[5]),
        .I3(\cnt_delay[6]_i_3_n_0 ),
        .I4(cnt_delay[3]),
        .I5(cnt_delay[4]),
        .O(cnt_delay__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_delay[6]_i_3 
       (.I0(cnt_delay[0]),
        .I1(cnt_delay[1]),
        .I2(cnt_delay[2]),
        .O(\cnt_delay[6]_i_3_n_0 ));
  FDRE \cnt_delay_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[0]),
        .Q(cnt_delay[0]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[1]),
        .Q(cnt_delay[1]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[2]),
        .Q(cnt_delay[2]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[3]),
        .Q(cnt_delay[3]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_delay[4]_i_1_n_0 ),
        .Q(cnt_delay[4]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[5]),
        .Q(cnt_delay[5]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  FDRE \cnt_delay_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[6]),
        .Q(cnt_delay[6]),
        .R(\cnt_delay[6]_i_1_n_0 ));
  CARRY4 \cnt_reg_wr0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_cnt_reg_wr0_inferred__0/i__carry_CO_UNCONNECTED [3],\cnt_reg_wr0_inferred__0/i__carry_n_1 ,\cnt_reg_wr0_inferred__0/i__carry_n_2 ,\cnt_reg_wr0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cnt_reg_wr0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_reg_wr[0]_i_1 
       (.I0(cnt_reg_wr_reg[0]),
        .O(\cnt_reg_wr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_reg_wr[1]_i_1 
       (.I0(cnt_reg_wr_reg[1]),
        .I1(cnt_reg_wr_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_reg_wr[2]_i_1 
       (.I0(cnt_reg_wr_reg[2]),
        .I1(cnt_reg_wr_reg[0]),
        .I2(cnt_reg_wr_reg[1]),
        .O(\cnt_reg_wr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_reg_wr[3]_i_1 
       (.I0(cnt_reg_wr_reg[3]),
        .I1(cnt_reg_wr_reg[0]),
        .I2(cnt_reg_wr_reg[1]),
        .I3(cnt_reg_wr_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_reg_wr[4]_i_1 
       (.I0(cnt_reg_wr_reg[2]),
        .I1(cnt_reg_wr_reg[1]),
        .I2(cnt_reg_wr_reg[0]),
        .I3(cnt_reg_wr_reg[3]),
        .I4(cnt_reg_wr_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_reg_wr[5]_i_1 
       (.I0(cnt_reg_wr_reg[5]),
        .I1(cnt_reg_wr_reg[2]),
        .I2(cnt_reg_wr_reg[1]),
        .I3(cnt_reg_wr_reg[0]),
        .I4(cnt_reg_wr_reg[3]),
        .I5(cnt_reg_wr_reg[4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \cnt_reg_wr[6]_i_1 
       (.I0(\cnt_reg_wr[7]_i_3_n_0 ),
        .I1(cnt_reg_wr_reg[3]),
        .I2(cnt_reg_wr_reg[5]),
        .I3(cnt_reg_wr_reg[4]),
        .I4(cnt_reg_wr_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h8F)) 
    \cnt_reg_wr[7]_i_1 
       (.I0(w_done),
        .I1(\cnt_reg_wr0_inferred__0/i__carry_n_1 ),
        .I2(sys_rst_n),
        .O(\cnt_reg_wr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \cnt_reg_wr[7]_i_2 
       (.I0(cnt_reg_wr_reg[7]),
        .I1(\cnt_reg_wr[7]_i_3_n_0 ),
        .I2(cnt_reg_wr_reg[3]),
        .I3(cnt_reg_wr_reg[5]),
        .I4(cnt_reg_wr_reg[4]),
        .I5(cnt_reg_wr_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_reg_wr[7]_i_3 
       (.I0(cnt_reg_wr_reg[0]),
        .I1(cnt_reg_wr_reg[1]),
        .I2(cnt_reg_wr_reg[2]),
        .O(\cnt_reg_wr[7]_i_3_n_0 ));
  FDRE \cnt_reg_wr_reg[0] 
       (.C(sys_clk),
        .CE(w_done),
        .D(\cnt_reg_wr[0]_i_1_n_0 ),
        .Q(cnt_reg_wr_reg[0]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[1] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[1]),
        .Q(cnt_reg_wr_reg[1]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[2] 
       (.C(sys_clk),
        .CE(w_done),
        .D(\cnt_reg_wr[2]_i_1_n_0 ),
        .Q(cnt_reg_wr_reg[2]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[3] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[3]),
        .Q(cnt_reg_wr_reg[3]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[4] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[4]),
        .Q(cnt_reg_wr_reg[4]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[5] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[5]),
        .Q(cnt_reg_wr_reg[5]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[6] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[6]),
        .Q(cnt_reg_wr_reg[6]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  FDRE \cnt_reg_wr_reg[7] 
       (.C(sys_clk),
        .CE(w_done),
        .D(p_0_in[7]),
        .Q(cnt_reg_wr_reg[7]),
        .R(\cnt_reg_wr[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(cnt_reg_wr_reg[6]),
        .I1(cnt_reg_wr_reg[7]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_2
       (.I0(cnt_reg_wr_reg[4]),
        .I1(cnt_reg_wr_reg[5]),
        .I2(cnt_reg_wr_reg[3]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_3
       (.I0(cnt_reg_wr_reg[2]),
        .I1(cnt_reg_wr_reg[1]),
        .I2(cnt_reg_wr_reg[0]),
        .O(i__carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \reg_index[7]_i_1 
       (.I0(sys_rst_n),
        .I1(p_0_in_0),
        .I2(sccb_cfg_done_reg_0),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \reg_index[7]_i_2 
       (.I0(p_0_in4_in),
        .I1(\cnt_clk_reg_n_0_[0] ),
        .I2(\cnt_clk_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(\reg_index[7]_i_4_n_0 ),
        .I5(\cnt_clk_reg_n_0_[7] ),
        .O(w_done));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \reg_index[7]_i_4 
       (.I0(\cnt_clk[9]_i_4_n_0 ),
        .I1(\cnt_clk_reg_n_0_[8] ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk_reg_n_0_[9] ),
        .I4(\cnt_clk_reg_n_0_[1] ),
        .O(\reg_index[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    reg_index_reg_rep_i_1
       (.I0(w_done),
        .I1(sys_rst_n),
        .I2(p_0_in_0),
        .I3(sccb_cfg_done_reg_0),
        .O(sys_rst_n_1));
  LUT6 #(
    .INIT(64'h0000000078000000)) 
    reg_index_reg_rep_i_2
       (.I0(Q[6]),
        .I1(reg_index_reg_rep),
        .I2(Q[7]),
        .I3(sys_rst_n),
        .I4(p_0_in_0),
        .I5(sccb_cfg_done_reg_0),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    reg_index_reg_rep_i_3
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(reg_index_reg_rep_0),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(sccb_cfg_done_reg_1),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'h7F800000)) 
    reg_index_reg_rep_i_4
       (.I0(Q[4]),
        .I1(reg_index_reg_rep_0),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(sccb_cfg_done_reg_1),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    reg_index_reg_rep_i_5
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(sccb_cfg_done_reg_1),
        .O(ADDRARDADDR[4]));
  LUT5 #(
    .INIT(32'h7F800000)) 
    reg_index_reg_rep_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(sccb_cfg_done_reg_1),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'h000000006A000000)) 
    reg_index_reg_rep_i_7
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sys_rst_n),
        .I4(p_0_in_0),
        .I5(sccb_cfg_done_reg_0),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'h00006000)) 
    reg_index_reg_rep_i_8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sys_rst_n),
        .I3(p_0_in_0),
        .I4(sccb_cfg_done_reg_0),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'h0080)) 
    reg_index_reg_rep_i_9
       (.I0(D),
        .I1(sys_rst_n),
        .I2(p_0_in_0),
        .I3(sccb_cfg_done_reg_0),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    sccb_cfg_done_i_1
       (.I0(\cnt_reg_wr0_inferred__0/i__carry_n_1 ),
        .I1(w_done),
        .I2(sccb_cfg_done_reg_0),
        .O(sccb_cfg_done_i_1_n_0));
  FDRE sccb_cfg_done_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sccb_cfg_done_i_1_n_0),
        .Q(sccb_cfg_done_reg_0),
        .R(sys_rst_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sccb_data_INST_0
       (.I0(sda_out_reg_n_0),
        .I1(sccb_data_INST_0_i_1_n_0),
        .O(sccb_data));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    sccb_data_INST_0_i_1
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .I4(sck_i_5_n_0),
        .O(sccb_data_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sck_i_1
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    sck_i_10
       (.I0(\cnt_clk_reg_n_0_[6] ),
        .I1(\cnt_clk_reg_n_0_[5] ),
        .I2(\cnt_clk_reg_n_0_[3] ),
        .I3(\cnt_clk_reg_n_0_[4] ),
        .O(sck_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    sck_i_2
       (.I0(sck_i_3_n_0),
        .I1(sck_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(sck_i_5_n_0),
        .I5(sccb_clk),
        .O(sck_i_2_n_0));
  LUT6 #(
    .INIT(64'hFAFFFBF3AA0FBB33)) 
    sck_i_3
       (.I0(sck_i_6_n_0),
        .I1(sccb_clk),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(sck_i_5_n_0),
        .I5(sck_i_7_n_0),
        .O(sck_i_3_n_0));
  LUT6 #(
    .INIT(64'h02020202020202AA)) 
    sck_i_4
       (.I0(\cnt_clk_reg_n_0_[2] ),
        .I1(\cnt_clk[9]_i_4_n_0 ),
        .I2(sck_i_8_n_0),
        .I3(\reg_index[7]_i_4_n_0 ),
        .I4(\cnt_clk_reg_n_0_[7] ),
        .I5(\cnt_clk_reg_n_0_[0] ),
        .O(sck_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sck_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_0_in4_in),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(p_2_in),
        .O(sck_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000F1FFFF)) 
    sck_i_6
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .I1(\cnt_clk[9]_i_3_n_0 ),
        .I2(\cnt_clk[9]_i_4_n_0 ),
        .I3(\cnt_clk_reg_n_0_[7] ),
        .I4(\cnt_clk_reg_n_0_[8] ),
        .I5(\cnt_clk_reg_n_0_[9] ),
        .O(sck_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    sck_i_7
       (.I0(sck_i_9_n_0),
        .I1(\cnt_clk_reg_n_0_[2] ),
        .I2(\cnt_clk_reg_n_0_[0] ),
        .I3(\cnt_clk_reg_n_0_[1] ),
        .I4(sck_i_10_n_0),
        .O(sck_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    sck_i_8
       (.I0(\cnt_clk_reg_n_0_[9] ),
        .I1(\cnt_clk_reg_n_0_[8] ),
        .I2(\cnt_clk_reg_n_0_[7] ),
        .I3(\cnt_clk_reg_n_0_[3] ),
        .I4(\cnt_clk_reg_n_0_[1] ),
        .I5(\cnt_clk_reg_n_0_[0] ),
        .O(sck_i_8_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    sck_i_9
       (.I0(\cnt_clk_reg_n_0_[7] ),
        .I1(\cnt_clk_reg_n_0_[8] ),
        .I2(\cnt_clk_reg_n_0_[9] ),
        .O(sck_i_9_n_0));
  FDSE sck_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sck_i_2_n_0),
        .Q(sccb_clk),
        .S(sys_rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    sda_out_i_1
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(sda_out_reg_i_2_n_0),
        .I2(p_0_in4_in),
        .I3(sda_out_i_3_n_0),
        .I4(sda_out_i_4_n_0),
        .I5(sda_out_i_5_n_0),
        .O(sda_out));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_10
       (.I0(DOADO[14]),
        .I1(DOADO[13]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOADO[12]),
        .I5(DOADO[11]),
        .O(sda_out_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    sda_out_i_11
       (.I0(DOBDO[0]),
        .I1(DOPADOP[1]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOPADOP[0]),
        .O(sda_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_12
       (.I0(DOBDO[4]),
        .I1(DOBDO[3]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOBDO[2]),
        .I5(DOBDO[1]),
        .O(sda_out_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA2228)) 
    sda_out_i_13
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\cnt_bit_reg_n_0_[3] ),
        .O(sda_out_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFAC0000)) 
    sda_out_i_3
       (.I0(sda_out_i_9_n_0),
        .I1(sda_out_i_10_n_0),
        .I2(sda_out_i_6_n_0),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sda_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFAC0000)) 
    sda_out_i_4
       (.I0(sda_out_i_11_n_0),
        .I1(sda_out_i_12_n_0),
        .I2(sda_out_i_6_n_0),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .I4(p_2_in),
        .O(sda_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF4744FFFFF7F4)) 
    sda_out_i_5
       (.I0(sck_i_6_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(sck_i_5_n_0),
        .I4(sda_out_i_13_n_0),
        .I5(sck_i_7_n_0),
        .O(sda_out_i_5_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    sda_out_i_6
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .O(sda_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_7
       (.I0(DOADO[6]),
        .I1(DOADO[5]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOADO[4]),
        .I5(DOADO[3]),
        .O(sda_out_i_7_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_8
       (.I0(DOADO[2]),
        .I1(DOADO[1]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOADO[0]),
        .I5(DOADO[7]),
        .O(sda_out_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_9
       (.I0(DOADO[10]),
        .I1(DOADO[9]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(DOADO[8]),
        .I5(DOADO[15]),
        .O(sda_out_i_9_n_0));
  FDSE sda_out_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sda_out),
        .Q(sda_out_reg_n_0),
        .S(sys_rst_n_0));
  MUXF7 sda_out_reg_i_2
       (.I0(sda_out_i_7_n_0),
        .I1(sda_out_i_8_n_0),
        .O(sda_out_reg_i_2_n_0),
        .S(sda_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    w_en_i_1
       (.I0(sccb_cfg_done_reg_0),
        .I1(p_0_in_0),
        .I2(sys_rst_n),
        .O(sccb_cfg_done_reg_1));
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
