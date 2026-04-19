// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 31 17:03:35 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_cfg_top_0_0/ov5640_hdmi_ov5640_cfg_top_0_0_sim_netlist.v
// Design      : ov5640_hdmi_ov5640_cfg_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ov5640_hdmi_ov5640_cfg_top_0_0,ov5640_cfg_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ov5640_cfg_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ov5640_hdmi_ov5640_cfg_top_0_0
   (sys_clk,
    sys_rst_n,
    sccb_scl,
    sccb_sda);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ov5640_hdmi_sys_clk_0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  output sccb_scl;
  inout sccb_sda;

  wire sccb_scl;
  wire sccb_sda;
  wire sys_clk;
  wire sys_rst_n;

  ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top inst
       (.sccb_scl(sccb_scl),
        .sccb_sda(sccb_sda),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule

(* ORIG_REF_NAME = "ov5640_cfg_top" *) 
module ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top
   (sccb_sda,
    sccb_scl,
    sys_rst_n,
    sys_clk);
  output sccb_sda;
  output sccb_scl;
  input sys_rst_n;
  input sys_clk;

  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data8;
  wire data9;
  wire [14:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [8:0]p_1_in;
  wire \reg_addr_reg_n_0_[0] ;
  wire [8:0]reg_index;
  wire \reg_index[4]_i_2_n_0 ;
  wire \reg_index[5]_i_2_n_0 ;
  wire \reg_index[8]_i_3_n_0 ;
  wire \reg_index_reg_rep_n_0_[0] ;
  wire \reg_index_reg_rep_n_0_[1] ;
  wire \reg_index_reg_rep_n_0_[2] ;
  wire \reg_index_reg_rep_n_0_[3] ;
  wire \reg_index_reg_rep_n_0_[4] ;
  wire \reg_index_reg_rep_n_0_[5] ;
  wire \reg_index_reg_rep_n_0_[6] ;
  wire \reg_index_reg_rep_n_0_[7] ;
  wire \rst_cnt[6]_i_2_n_0 ;
  wire \rst_cnt_reg_n_0_[0] ;
  wire \rst_cnt_reg_n_0_[1] ;
  wire \rst_cnt_reg_n_0_[2] ;
  wire \rst_cnt_reg_n_0_[3] ;
  wire \rst_cnt_reg_n_0_[4] ;
  wire \rst_cnt_reg_n_0_[5] ;
  wire \rst_cnt_reg_n_0_[6] ;
  wire sccb_scl;
  wire sccb_sda;
  wire sel;
  wire sys_clk;
  wire sys_rst_n;
  wire u_sccb_protocol_n_0;
  wire u_sccb_protocol_n_10;
  wire u_sccb_protocol_n_25;
  wire u_sccb_protocol_n_3;
  wire u_sccb_protocol_n_4;
  wire u_sccb_protocol_n_5;
  wire u_sccb_protocol_n_6;
  wire u_sccb_protocol_n_7;
  wire u_sccb_protocol_n_8;
  wire u_sccb_protocol_n_9;
  wire u_ui5640reg_n_0;
  wire u_ui5640reg_n_1;
  wire u_ui5640reg_n_10;
  wire u_ui5640reg_n_11;
  wire u_ui5640reg_n_12;
  wire u_ui5640reg_n_13;
  wire u_ui5640reg_n_14;
  wire u_ui5640reg_n_15;
  wire u_ui5640reg_n_16;
  wire u_ui5640reg_n_17;
  wire u_ui5640reg_n_18;
  wire u_ui5640reg_n_19;
  wire u_ui5640reg_n_2;
  wire u_ui5640reg_n_20;
  wire u_ui5640reg_n_21;
  wire u_ui5640reg_n_22;
  wire u_ui5640reg_n_23;
  wire u_ui5640reg_n_24;
  wire u_ui5640reg_n_25;
  wire u_ui5640reg_n_26;
  wire u_ui5640reg_n_27;
  wire u_ui5640reg_n_28;
  wire u_ui5640reg_n_29;
  wire u_ui5640reg_n_3;
  wire u_ui5640reg_n_30;
  wire u_ui5640reg_n_31;
  wire u_ui5640reg_n_32;
  wire u_ui5640reg_n_33;
  wire u_ui5640reg_n_34;
  wire u_ui5640reg_n_35;
  wire u_ui5640reg_n_36;
  wire u_ui5640reg_n_37;
  wire u_ui5640reg_n_38;
  wire u_ui5640reg_n_39;
  wire u_ui5640reg_n_4;
  wire u_ui5640reg_n_40;
  wire u_ui5640reg_n_41;
  wire u_ui5640reg_n_42;
  wire u_ui5640reg_n_43;
  wire u_ui5640reg_n_44;
  wire u_ui5640reg_n_45;
  wire u_ui5640reg_n_46;
  wire u_ui5640reg_n_47;
  wire u_ui5640reg_n_48;
  wire u_ui5640reg_n_49;
  wire u_ui5640reg_n_5;
  wire u_ui5640reg_n_50;
  wire u_ui5640reg_n_51;
  wire u_ui5640reg_n_52;
  wire u_ui5640reg_n_53;
  wire u_ui5640reg_n_54;
  wire u_ui5640reg_n_55;
  wire u_ui5640reg_n_56;
  wire u_ui5640reg_n_57;
  wire u_ui5640reg_n_58;
  wire u_ui5640reg_n_59;
  wire u_ui5640reg_n_6;
  wire u_ui5640reg_n_60;
  wire u_ui5640reg_n_7;
  wire u_ui5640reg_n_8;
  wire u_ui5640reg_n_9;
  wire [7:0]write_data;
  wire write_en;
  wire write_en_reg_n_0;

  FDCE \reg_addr_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[0]),
        .Q(\reg_addr_reg_n_0_[0] ));
  FDCE \reg_addr_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[10]),
        .Q(data11));
  FDCE \reg_addr_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[11]),
        .Q(data12));
  FDCE \reg_addr_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[12]),
        .Q(data13));
  FDCE \reg_addr_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[13]),
        .Q(data14));
  FDCE \reg_addr_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[14]),
        .Q(data15));
  FDCE \reg_addr_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[1]),
        .Q(data2));
  FDCE \reg_addr_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[2]),
        .Q(data3));
  FDCE \reg_addr_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[3]),
        .Q(data4));
  FDCE \reg_addr_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[4]),
        .Q(data5));
  FDCE \reg_addr_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[5]),
        .Q(data6));
  FDCE \reg_addr_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[7]),
        .Q(data8));
  FDCE \reg_addr_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[8]),
        .Q(data9));
  FDCE \reg_addr_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in[9]),
        .Q(data10));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \reg_index[4]_i_2 
       (.I0(reg_index[2]),
        .I1(reg_index[0]),
        .I2(reg_index[1]),
        .I3(reg_index[3]),
        .O(\reg_index[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \reg_index[5]_i_2 
       (.I0(reg_index[3]),
        .I1(reg_index[1]),
        .I2(reg_index[0]),
        .I3(reg_index[2]),
        .I4(reg_index[4]),
        .O(\reg_index[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \reg_index[8]_i_3 
       (.I0(reg_index[4]),
        .I1(reg_index[2]),
        .I2(reg_index[0]),
        .I3(reg_index[1]),
        .I4(reg_index[3]),
        .I5(reg_index[5]),
        .O(\reg_index[8]_i_3_n_0 ));
  FDCE \reg_index_reg[0] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[0]),
        .Q(reg_index[0]));
  FDCE \reg_index_reg[1] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[1]),
        .Q(reg_index[1]));
  FDCE \reg_index_reg[2] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[2]),
        .Q(reg_index[2]));
  FDCE \reg_index_reg[3] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[3]),
        .Q(reg_index[3]));
  FDCE \reg_index_reg[4] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[4]),
        .Q(reg_index[4]));
  FDCE \reg_index_reg[5] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[5]),
        .Q(reg_index[5]));
  FDCE \reg_index_reg[6] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[6]),
        .Q(reg_index[6]));
  FDCE \reg_index_reg[7] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[7]),
        .Q(reg_index[7]));
  FDCE \reg_index_reg[8] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[8]),
        .Q(reg_index[8]));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[0] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[0]),
        .Q(\reg_index_reg_rep_n_0_[0] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[1] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[1]),
        .Q(\reg_index_reg_rep_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[2] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[2]),
        .Q(\reg_index_reg_rep_n_0_[2] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[3] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[3]),
        .Q(\reg_index_reg_rep_n_0_[3] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[4] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[4]),
        .Q(\reg_index_reg_rep_n_0_[4] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[5] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[5]),
        .Q(\reg_index_reg_rep_n_0_[5] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[6] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[6]),
        .Q(\reg_index_reg_rep_n_0_[6] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \reg_index_reg_rep[7] 
       (.C(sys_clk),
        .CE(u_sccb_protocol_n_25),
        .CLR(u_sccb_protocol_n_0),
        .D(p_1_in[7]),
        .Q(\reg_index_reg_rep_n_0_[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_cnt[0]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rst_cnt[1]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rst_cnt[2]_i_1 
       (.I0(\rst_cnt_reg_n_0_[2] ),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(\rst_cnt_reg_n_0_[1] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rst_cnt[3]_i_1 
       (.I0(\rst_cnt_reg_n_0_[3] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rst_cnt[4]_i_1 
       (.I0(\rst_cnt_reg_n_0_[4] ),
        .I1(\rst_cnt_reg_n_0_[2] ),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .I4(\rst_cnt_reg_n_0_[3] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rst_cnt[5]_i_1 
       (.I0(\rst_cnt_reg_n_0_[3] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[2] ),
        .I4(\rst_cnt_reg_n_0_[4] ),
        .I5(\rst_cnt_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \rst_cnt[6]_i_1 
       (.I0(\rst_cnt_reg_n_0_[6] ),
        .I1(\rst_cnt[6]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rst_cnt[6]_i_2 
       (.I0(\rst_cnt_reg_n_0_[5] ),
        .I1(\rst_cnt_reg_n_0_[4] ),
        .I2(\rst_cnt_reg_n_0_[2] ),
        .I3(\rst_cnt_reg_n_0_[0] ),
        .I4(\rst_cnt_reg_n_0_[1] ),
        .I5(\rst_cnt_reg_n_0_[3] ),
        .O(\rst_cnt[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rst_cnt[7]_inv_i_1 
       (.I0(\rst_cnt[6]_i_2_n_0 ),
        .I1(\rst_cnt_reg_n_0_[6] ),
        .O(p_0_in__0[7]));
  FDCE \rst_cnt_reg[0] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[0]),
        .Q(\rst_cnt_reg_n_0_[0] ));
  FDCE \rst_cnt_reg[1] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[1]),
        .Q(\rst_cnt_reg_n_0_[1] ));
  FDCE \rst_cnt_reg[2] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[2]),
        .Q(\rst_cnt_reg_n_0_[2] ));
  FDCE \rst_cnt_reg[3] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[3]),
        .Q(\rst_cnt_reg_n_0_[3] ));
  FDCE \rst_cnt_reg[4] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[4]),
        .Q(\rst_cnt_reg_n_0_[4] ));
  FDCE \rst_cnt_reg[5] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[5]),
        .Q(\rst_cnt_reg_n_0_[5] ));
  FDCE \rst_cnt_reg[6] 
       (.C(sys_clk),
        .CE(sel),
        .CLR(u_sccb_protocol_n_0),
        .D(p_0_in__0[6]),
        .Q(\rst_cnt_reg_n_0_[6] ));
  (* inverted = "yes" *) 
  FDPE \rst_cnt_reg[7]_inv 
       (.C(sys_clk),
        .CE(sel),
        .D(p_0_in__0[7]),
        .PRE(u_sccb_protocol_n_0),
        .Q(sel));
  ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol u_sccb_protocol
       (.D({u_sccb_protocol_n_3,u_sccb_protocol_n_4,u_sccb_protocol_n_5,u_sccb_protocol_n_6,u_sccb_protocol_n_7,u_sccb_protocol_n_8,u_sccb_protocol_n_9,u_sccb_protocol_n_10}),
        .E(u_sccb_protocol_n_25),
        .Q({\reg_index_reg_rep_n_0_[7] ,\reg_index_reg_rep_n_0_[6] ,\reg_index_reg_rep_n_0_[4] ,\reg_index_reg_rep_n_0_[3] }),
        .\reg_addr_reg[0] (u_ui5640reg_n_8),
        .\reg_addr_reg[0]_0 (u_ui5640reg_n_57),
        .\reg_addr_reg[0]_1 (u_ui5640reg_n_9),
        .\reg_addr_reg[10] (u_ui5640reg_n_29),
        .\reg_addr_reg[10]_0 (u_ui5640reg_n_52),
        .\reg_addr_reg[10]_1 (u_ui5640reg_n_30),
        .\reg_addr_reg[11] (u_ui5640reg_n_33),
        .\reg_addr_reg[11]_0 (u_ui5640reg_n_15),
        .\reg_addr_reg[12] (u_ui5640reg_n_16),
        .\reg_addr_reg[12]_0 (u_ui5640reg_n_43),
        .\reg_addr_reg[13] (u_ui5640reg_n_17),
        .\reg_addr_reg[13]_0 (u_ui5640reg_n_44),
        .\reg_addr_reg[14] (u_ui5640reg_n_37),
        .\reg_addr_reg[14]_0 (u_ui5640reg_n_56),
        .\reg_addr_reg[14]_1 (u_ui5640reg_n_42),
        .\reg_addr_reg[1] (u_ui5640reg_n_2),
        .\reg_addr_reg[1]_0 (u_ui5640reg_n_60),
        .\reg_addr_reg[1]_1 (u_ui5640reg_n_11),
        .\reg_addr_reg[2] (u_ui5640reg_n_12),
        .\reg_addr_reg[2]_0 (u_ui5640reg_n_22),
        .\reg_addr_reg[2]_1 (u_ui5640reg_n_48),
        .\reg_addr_reg[3] (u_ui5640reg_n_23),
        .\reg_addr_reg[3]_0 (u_ui5640reg_n_40),
        .\reg_addr_reg[3]_1 (u_ui5640reg_n_24),
        .\reg_addr_reg[4] (u_ui5640reg_n_54),
        .\reg_addr_reg[4]_0 (u_ui5640reg_n_51),
        .\reg_addr_reg[4]_1 (u_ui5640reg_n_32),
        .\reg_addr_reg[5] (u_ui5640reg_n_26),
        .\reg_addr_reg[5]_0 (u_ui5640reg_n_53),
        .\reg_addr_reg[5]_1 (u_ui5640reg_n_41),
        .\reg_addr_reg[7] (u_ui5640reg_n_58),
        .\reg_addr_reg[8] (u_ui5640reg_n_45),
        .\reg_addr_reg[8]_0 (u_ui5640reg_n_55),
        .\reg_addr_reg[8]_1 (u_ui5640reg_n_35),
        .\reg_addr_reg[9] (u_ui5640reg_n_13),
        .\reg_addr_reg[9]_0 (u_ui5640reg_n_59),
        .\reg_addr_reg[9]_1 (u_ui5640reg_n_31),
        .\reg_index_reg[8] (reg_index),
        .\reg_index_reg_rep[4] (\reg_index[4]_i_2_n_0 ),
        .\reg_index_reg_rep[5] (\reg_index[5]_i_2_n_0 ),
        .\reg_index_reg_rep[6] (\reg_index[8]_i_3_n_0 ),
        .\reg_index_reg_rep[7] ({p_0_in[14:7],p_0_in[5:0]}),
        .\rst_cnt_reg[7]_inv (p_1_in),
        .sccb_scl(sccb_scl),
        .sccb_sda(sccb_sda),
        .sda_out_i_6_0(write_data),
        .sda_out_reg_i_4_0({data15,data14,data13,data12,data11,data10,data9,data8,data6,data5,data4,data3,data2,\reg_addr_reg_n_0_[0] }),
        .sel(sel),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(u_sccb_protocol_n_0),
        .wr_flag_reg_0(write_en_reg_n_0),
        .\write_data_reg[0] (u_ui5640reg_n_0),
        .\write_data_reg[0]_0 (u_ui5640reg_n_38),
        .\write_data_reg[0]_1 (u_ui5640reg_n_1),
        .\write_data_reg[1] (u_ui5640reg_n_28),
        .\write_data_reg[1]_0 (u_ui5640reg_n_14),
        .\write_data_reg[1]_1 (u_ui5640reg_n_19),
        .\write_data_reg[2] (u_ui5640reg_n_5),
        .\write_data_reg[2]_0 (u_ui5640reg_n_3),
        .\write_data_reg[2]_1 (u_ui5640reg_n_46),
        .\write_data_reg[3] (u_ui5640reg_n_25),
        .\write_data_reg[3]_0 (u_ui5640reg_n_18),
        .\write_data_reg[3]_1 (u_ui5640reg_n_39),
        .\write_data_reg[4] (u_ui5640reg_n_20),
        .\write_data_reg[4]_0 (u_ui5640reg_n_49),
        .\write_data_reg[4]_1 (u_ui5640reg_n_47),
        .\write_data_reg[5] (u_ui5640reg_n_4),
        .\write_data_reg[5]_0 (u_ui5640reg_n_27),
        .\write_data_reg[5]_1 (u_ui5640reg_n_10),
        .\write_data_reg[6] (u_ui5640reg_n_6),
        .\write_data_reg[6]_0 (u_ui5640reg_n_34),
        .\write_data_reg[6]_1 (u_ui5640reg_n_21),
        .\write_data_reg[7] (u_ui5640reg_n_7),
        .\write_data_reg[7]_0 (u_ui5640reg_n_50),
        .\write_data_reg[7]_1 (u_ui5640reg_n_36),
        .write_en(write_en));
  ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg u_ui5640reg
       (.Q({\reg_index_reg_rep_n_0_[7] ,\reg_index_reg_rep_n_0_[5] ,\reg_index_reg_rep_n_0_[4] ,\reg_index_reg_rep_n_0_[3] ,\reg_index_reg_rep_n_0_[2] ,\reg_index_reg_rep_n_0_[1] ,\reg_index_reg_rep_n_0_[0] }),
        .\reg_index_reg_rep[0] (u_ui5640reg_n_15),
        .\reg_index_reg_rep[0]_0 (u_ui5640reg_n_31),
        .\reg_index_reg_rep[0]_1 (u_ui5640reg_n_55),
        .\reg_index_reg_rep[1] (u_ui5640reg_n_1),
        .\reg_index_reg_rep[1]_0 (u_ui5640reg_n_16),
        .\reg_index_reg_rep[1]_1 (u_ui5640reg_n_17),
        .\reg_index_reg_rep[1]_2 (u_ui5640reg_n_37),
        .\reg_index_reg_rep[1]_3 (u_ui5640reg_n_58),
        .\reg_index_reg_rep[2] (u_ui5640reg_n_52),
        .\reg_index_reg_rep[3] (u_ui5640reg_n_49),
        .\reg_index_reg_rep[3]_0 (u_ui5640reg_n_50),
        .\reg_index_reg_rep[3]_1 (u_ui5640reg_n_56),
        .\reg_index_reg_rep[3]_2 (u_ui5640reg_n_59),
        .\reg_index_reg_rep[4] (u_ui5640reg_n_3),
        .\reg_index_reg_rep[4]_0 (u_ui5640reg_n_9),
        .\reg_index_reg_rep[4]_1 (u_ui5640reg_n_10),
        .\reg_index_reg_rep[4]_10 (u_ui5640reg_n_27),
        .\reg_index_reg_rep[4]_11 (u_ui5640reg_n_29),
        .\reg_index_reg_rep[4]_12 (u_ui5640reg_n_30),
        .\reg_index_reg_rep[4]_13 (u_ui5640reg_n_33),
        .\reg_index_reg_rep[4]_14 (u_ui5640reg_n_34),
        .\reg_index_reg_rep[4]_15 (u_ui5640reg_n_35),
        .\reg_index_reg_rep[4]_16 (u_ui5640reg_n_36),
        .\reg_index_reg_rep[4]_17 (u_ui5640reg_n_38),
        .\reg_index_reg_rep[4]_18 (u_ui5640reg_n_39),
        .\reg_index_reg_rep[4]_19 (u_ui5640reg_n_40),
        .\reg_index_reg_rep[4]_2 (u_ui5640reg_n_11),
        .\reg_index_reg_rep[4]_20 (u_ui5640reg_n_41),
        .\reg_index_reg_rep[4]_21 (u_ui5640reg_n_42),
        .\reg_index_reg_rep[4]_22 (u_ui5640reg_n_44),
        .\reg_index_reg_rep[4]_23 (u_ui5640reg_n_45),
        .\reg_index_reg_rep[4]_24 (u_ui5640reg_n_46),
        .\reg_index_reg_rep[4]_25 (u_ui5640reg_n_47),
        .\reg_index_reg_rep[4]_26 (u_ui5640reg_n_48),
        .\reg_index_reg_rep[4]_27 (u_ui5640reg_n_51),
        .\reg_index_reg_rep[4]_28 (u_ui5640reg_n_53),
        .\reg_index_reg_rep[4]_29 (u_ui5640reg_n_54),
        .\reg_index_reg_rep[4]_3 (u_ui5640reg_n_14),
        .\reg_index_reg_rep[4]_30 (u_ui5640reg_n_57),
        .\reg_index_reg_rep[4]_31 (u_ui5640reg_n_60),
        .\reg_index_reg_rep[4]_4 (u_ui5640reg_n_18),
        .\reg_index_reg_rep[4]_5 (u_ui5640reg_n_19),
        .\reg_index_reg_rep[4]_6 (u_ui5640reg_n_21),
        .\reg_index_reg_rep[4]_7 (u_ui5640reg_n_22),
        .\reg_index_reg_rep[4]_8 (u_ui5640reg_n_24),
        .\reg_index_reg_rep[4]_9 (u_ui5640reg_n_26),
        .\reg_index_reg_rep[5] (u_ui5640reg_n_43),
        .\reg_index_reg_rep[7] (u_ui5640reg_n_0),
        .\reg_index_reg_rep[7]_0 (u_ui5640reg_n_2),
        .\reg_index_reg_rep[7]_1 (u_ui5640reg_n_4),
        .\reg_index_reg_rep[7]_10 (u_ui5640reg_n_25),
        .\reg_index_reg_rep[7]_11 (u_ui5640reg_n_28),
        .\reg_index_reg_rep[7]_12 (u_ui5640reg_n_32),
        .\reg_index_reg_rep[7]_2 (u_ui5640reg_n_5),
        .\reg_index_reg_rep[7]_3 (u_ui5640reg_n_6),
        .\reg_index_reg_rep[7]_4 (u_ui5640reg_n_7),
        .\reg_index_reg_rep[7]_5 (u_ui5640reg_n_8),
        .\reg_index_reg_rep[7]_6 (u_ui5640reg_n_12),
        .\reg_index_reg_rep[7]_7 (u_ui5640reg_n_13),
        .\reg_index_reg_rep[7]_8 (u_ui5640reg_n_20),
        .\reg_index_reg_rep[7]_9 (u_ui5640reg_n_23));
  FDCE \write_data_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_10),
        .Q(write_data[0]));
  FDCE \write_data_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_9),
        .Q(write_data[1]));
  FDCE \write_data_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_8),
        .Q(write_data[2]));
  FDCE \write_data_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_7),
        .Q(write_data[3]));
  FDCE \write_data_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_6),
        .Q(write_data[4]));
  FDCE \write_data_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_5),
        .Q(write_data[5]));
  FDCE \write_data_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_4),
        .Q(write_data[6]));
  FDCE \write_data_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(u_sccb_protocol_n_3),
        .Q(write_data[7]));
  FDCE write_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(u_sccb_protocol_n_0),
        .D(write_en),
        .Q(write_en_reg_n_0));
endmodule

(* ORIG_REF_NAME = "sccb_protocol" *) 
module ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol
   (sys_rst_n_0,
    sccb_scl,
    sccb_sda,
    D,
    \reg_index_reg_rep[7] ,
    E,
    \rst_cnt_reg[7]_inv ,
    write_en,
    sys_clk,
    wr_flag_reg_0,
    sys_rst_n,
    \write_data_reg[0] ,
    Q,
    \write_data_reg[0]_0 ,
    \write_data_reg[0]_1 ,
    \reg_addr_reg[1] ,
    \reg_addr_reg[1]_0 ,
    \reg_addr_reg[1]_1 ,
    \write_data_reg[2] ,
    \write_data_reg[2]_0 ,
    \write_data_reg[2]_1 ,
    \write_data_reg[5] ,
    \write_data_reg[5]_0 ,
    \write_data_reg[5]_1 ,
    \write_data_reg[6] ,
    \write_data_reg[6]_0 ,
    \write_data_reg[6]_1 ,
    \write_data_reg[7] ,
    \write_data_reg[7]_0 ,
    \write_data_reg[7]_1 ,
    \reg_addr_reg[0] ,
    \reg_addr_reg[0]_0 ,
    \reg_addr_reg[0]_1 ,
    \reg_addr_reg[2] ,
    \reg_addr_reg[2]_0 ,
    \reg_addr_reg[2]_1 ,
    \reg_addr_reg[9] ,
    \reg_addr_reg[9]_0 ,
    \reg_addr_reg[9]_1 ,
    \write_data_reg[1] ,
    \write_data_reg[1]_0 ,
    \write_data_reg[1]_1 ,
    \reg_addr_reg[11] ,
    \reg_addr_reg[11]_0 ,
    \reg_addr_reg[12] ,
    \reg_addr_reg[12]_0 ,
    \reg_addr_reg[13] ,
    \reg_addr_reg[13]_0 ,
    \write_data_reg[3] ,
    \write_data_reg[3]_0 ,
    \write_data_reg[3]_1 ,
    \write_data_reg[4] ,
    \write_data_reg[4]_0 ,
    \write_data_reg[4]_1 ,
    \reg_addr_reg[3] ,
    \reg_addr_reg[3]_0 ,
    \reg_addr_reg[3]_1 ,
    \reg_addr_reg[5] ,
    \reg_addr_reg[5]_0 ,
    \reg_addr_reg[5]_1 ,
    \reg_addr_reg[10] ,
    \reg_addr_reg[10]_0 ,
    \reg_addr_reg[10]_1 ,
    \reg_addr_reg[4] ,
    \reg_addr_reg[4]_0 ,
    \reg_addr_reg[4]_1 ,
    \reg_addr_reg[8] ,
    \reg_addr_reg[8]_0 ,
    \reg_addr_reg[8]_1 ,
    \reg_addr_reg[14] ,
    \reg_addr_reg[14]_0 ,
    \reg_addr_reg[14]_1 ,
    \reg_addr_reg[7] ,
    sel,
    \reg_index_reg[8] ,
    sda_out_reg_i_4_0,
    sda_out_i_6_0,
    \reg_index_reg_rep[4] ,
    \reg_index_reg_rep[5] ,
    \reg_index_reg_rep[6] );
  output sys_rst_n_0;
  output sccb_scl;
  output sccb_sda;
  output [7:0]D;
  output [13:0]\reg_index_reg_rep[7] ;
  output [0:0]E;
  output [8:0]\rst_cnt_reg[7]_inv ;
  output write_en;
  input sys_clk;
  input wr_flag_reg_0;
  input sys_rst_n;
  input \write_data_reg[0] ;
  input [3:0]Q;
  input \write_data_reg[0]_0 ;
  input \write_data_reg[0]_1 ;
  input \reg_addr_reg[1] ;
  input \reg_addr_reg[1]_0 ;
  input \reg_addr_reg[1]_1 ;
  input \write_data_reg[2] ;
  input \write_data_reg[2]_0 ;
  input \write_data_reg[2]_1 ;
  input \write_data_reg[5] ;
  input \write_data_reg[5]_0 ;
  input \write_data_reg[5]_1 ;
  input \write_data_reg[6] ;
  input \write_data_reg[6]_0 ;
  input \write_data_reg[6]_1 ;
  input \write_data_reg[7] ;
  input \write_data_reg[7]_0 ;
  input \write_data_reg[7]_1 ;
  input \reg_addr_reg[0] ;
  input \reg_addr_reg[0]_0 ;
  input \reg_addr_reg[0]_1 ;
  input \reg_addr_reg[2] ;
  input \reg_addr_reg[2]_0 ;
  input \reg_addr_reg[2]_1 ;
  input \reg_addr_reg[9] ;
  input \reg_addr_reg[9]_0 ;
  input \reg_addr_reg[9]_1 ;
  input \write_data_reg[1] ;
  input \write_data_reg[1]_0 ;
  input \write_data_reg[1]_1 ;
  input \reg_addr_reg[11] ;
  input \reg_addr_reg[11]_0 ;
  input \reg_addr_reg[12] ;
  input \reg_addr_reg[12]_0 ;
  input \reg_addr_reg[13] ;
  input \reg_addr_reg[13]_0 ;
  input \write_data_reg[3] ;
  input \write_data_reg[3]_0 ;
  input \write_data_reg[3]_1 ;
  input \write_data_reg[4] ;
  input \write_data_reg[4]_0 ;
  input \write_data_reg[4]_1 ;
  input \reg_addr_reg[3] ;
  input \reg_addr_reg[3]_0 ;
  input \reg_addr_reg[3]_1 ;
  input \reg_addr_reg[5] ;
  input \reg_addr_reg[5]_0 ;
  input \reg_addr_reg[5]_1 ;
  input \reg_addr_reg[10] ;
  input \reg_addr_reg[10]_0 ;
  input \reg_addr_reg[10]_1 ;
  input \reg_addr_reg[4] ;
  input \reg_addr_reg[4]_0 ;
  input \reg_addr_reg[4]_1 ;
  input \reg_addr_reg[8] ;
  input \reg_addr_reg[8]_0 ;
  input \reg_addr_reg[8]_1 ;
  input \reg_addr_reg[14] ;
  input \reg_addr_reg[14]_0 ;
  input \reg_addr_reg[14]_1 ;
  input \reg_addr_reg[7] ;
  input sel;
  input [8:0]\reg_index_reg[8] ;
  input [13:0]sda_out_reg_i_4_0;
  input [7:0]sda_out_i_6_0;
  input \reg_index_reg_rep[4] ;
  input \reg_index_reg_rep[5] ;
  input \reg_index_reg_rep[6] ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_7_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [3:0]Q;
  wire cnt_bit;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[3]_i_1_n_0 ;
  wire \cnt_bit[4]_i_2_n_0 ;
  wire \cnt_bit[4]_i_3_n_0 ;
  wire \cnt_bit[4]_i_4_n_0 ;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire \cnt_bit_reg_n_0_[3] ;
  wire \cnt_bit_reg_n_0_[4] ;
  wire [15:0]cnt_clk;
  wire \cnt_clk[15]_i_1_n_0 ;
  wire \cnt_clk_reg[12]_i_2_n_0 ;
  wire \cnt_clk_reg[12]_i_2_n_1 ;
  wire \cnt_clk_reg[12]_i_2_n_2 ;
  wire \cnt_clk_reg[12]_i_2_n_3 ;
  wire \cnt_clk_reg[12]_i_2_n_4 ;
  wire \cnt_clk_reg[12]_i_2_n_5 ;
  wire \cnt_clk_reg[12]_i_2_n_6 ;
  wire \cnt_clk_reg[12]_i_2_n_7 ;
  wire \cnt_clk_reg[15]_i_3_n_2 ;
  wire \cnt_clk_reg[15]_i_3_n_3 ;
  wire \cnt_clk_reg[15]_i_3_n_5 ;
  wire \cnt_clk_reg[15]_i_3_n_6 ;
  wire \cnt_clk_reg[15]_i_3_n_7 ;
  wire \cnt_clk_reg[4]_i_2_n_0 ;
  wire \cnt_clk_reg[4]_i_2_n_1 ;
  wire \cnt_clk_reg[4]_i_2_n_2 ;
  wire \cnt_clk_reg[4]_i_2_n_3 ;
  wire \cnt_clk_reg[4]_i_2_n_4 ;
  wire \cnt_clk_reg[4]_i_2_n_5 ;
  wire \cnt_clk_reg[4]_i_2_n_6 ;
  wire \cnt_clk_reg[4]_i_2_n_7 ;
  wire \cnt_clk_reg[8]_i_2_n_0 ;
  wire \cnt_clk_reg[8]_i_2_n_1 ;
  wire \cnt_clk_reg[8]_i_2_n_2 ;
  wire \cnt_clk_reg[8]_i_2_n_3 ;
  wire \cnt_clk_reg[8]_i_2_n_4 ;
  wire \cnt_clk_reg[8]_i_2_n_5 ;
  wire \cnt_clk_reg[8]_i_2_n_6 ;
  wire \cnt_clk_reg[8]_i_2_n_7 ;
  wire \cnt_clk_reg_n_0_[0] ;
  wire \cnt_clk_reg_n_0_[10] ;
  wire \cnt_clk_reg_n_0_[11] ;
  wire \cnt_clk_reg_n_0_[12] ;
  wire \cnt_clk_reg_n_0_[13] ;
  wire \cnt_clk_reg_n_0_[14] ;
  wire \cnt_clk_reg_n_0_[15] ;
  wire \cnt_clk_reg_n_0_[1] ;
  wire \cnt_clk_reg_n_0_[2] ;
  wire \cnt_clk_reg_n_0_[3] ;
  wire \cnt_clk_reg_n_0_[4] ;
  wire \cnt_clk_reg_n_0_[5] ;
  wire \cnt_clk_reg_n_0_[6] ;
  wire \cnt_clk_reg_n_0_[7] ;
  wire \cnt_clk_reg_n_0_[8] ;
  wire \cnt_clk_reg_n_0_[9] ;
  wire [7:0]cnt_delay;
  wire \cnt_delay[7]_i_1_n_0 ;
  wire \cnt_delay[7]_i_3_n_0 ;
  wire [7:0]cnt_delay__0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire [7:0]p_0_in__1;
  wire \reg_addr[14]_i_5_n_0 ;
  wire \reg_addr_reg[0] ;
  wire \reg_addr_reg[0]_0 ;
  wire \reg_addr_reg[0]_1 ;
  wire \reg_addr_reg[10] ;
  wire \reg_addr_reg[10]_0 ;
  wire \reg_addr_reg[10]_1 ;
  wire \reg_addr_reg[11] ;
  wire \reg_addr_reg[11]_0 ;
  wire \reg_addr_reg[12] ;
  wire \reg_addr_reg[12]_0 ;
  wire \reg_addr_reg[13] ;
  wire \reg_addr_reg[13]_0 ;
  wire \reg_addr_reg[14] ;
  wire \reg_addr_reg[14]_0 ;
  wire \reg_addr_reg[14]_1 ;
  wire \reg_addr_reg[1] ;
  wire \reg_addr_reg[1]_0 ;
  wire \reg_addr_reg[1]_1 ;
  wire \reg_addr_reg[2] ;
  wire \reg_addr_reg[2]_0 ;
  wire \reg_addr_reg[2]_1 ;
  wire \reg_addr_reg[3] ;
  wire \reg_addr_reg[3]_0 ;
  wire \reg_addr_reg[3]_1 ;
  wire \reg_addr_reg[4] ;
  wire \reg_addr_reg[4]_0 ;
  wire \reg_addr_reg[4]_1 ;
  wire \reg_addr_reg[5] ;
  wire \reg_addr_reg[5]_0 ;
  wire \reg_addr_reg[5]_1 ;
  wire \reg_addr_reg[7] ;
  wire \reg_addr_reg[8] ;
  wire \reg_addr_reg[8]_0 ;
  wire \reg_addr_reg[8]_1 ;
  wire \reg_addr_reg[9] ;
  wire \reg_addr_reg[9]_0 ;
  wire \reg_addr_reg[9]_1 ;
  wire [8:0]\reg_index_reg[8] ;
  wire \reg_index_reg_rep[4] ;
  wire \reg_index_reg_rep[5] ;
  wire \reg_index_reg_rep[6] ;
  wire [13:0]\reg_index_reg_rep[7] ;
  wire [8:0]\rst_cnt_reg[7]_inv ;
  wire sccb_cfg_done;
  wire sccb_cfg_done_i_1_n_0;
  wire sccb_clk_i_10_n_0;
  wire sccb_clk_i_11_n_0;
  wire sccb_clk_i_12_n_0;
  wire sccb_clk_i_13_n_0;
  wire sccb_clk_i_14_n_0;
  wire sccb_clk_i_2_n_0;
  wire sccb_clk_i_3_n_0;
  wire sccb_clk_i_4_n_0;
  wire sccb_clk_i_5_n_0;
  wire sccb_clk_i_6_n_0;
  wire sccb_clk_i_7_n_0;
  wire sccb_clk_i_8_n_0;
  wire sccb_clk_i_9_n_0;
  wire sccb_scl;
  wire sda_out;
  wire sda_out_i_10_n_0;
  wire sda_out_i_11_n_0;
  wire sda_out_i_12_n_0;
  wire sda_out_i_13_n_0;
  wire sda_out_i_14_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire [7:0]sda_out_i_6_0;
  wire sda_out_i_6_n_0;
  wire sda_out_i_7_n_0;
  wire sda_out_i_8_n_0;
  wire sda_out_i_9_n_0;
  wire [13:0]sda_out_reg_i_4_0;
  wire sda_out_reg_i_4_n_0;
  wire sda_out_reg_i_5_n_0;
  wire sda_out_reg_n_0;
  wire sel;
  wire sys_clk;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire w_byte_cnt0;
  wire \w_byte_cnt0_inferred__0/i__carry__0_n_0 ;
  wire \w_byte_cnt0_inferred__0/i__carry__0_n_1 ;
  wire \w_byte_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \w_byte_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \w_byte_cnt0_inferred__0/i__carry__1_n_2 ;
  wire \w_byte_cnt0_inferred__0/i__carry__1_n_3 ;
  wire \w_byte_cnt0_inferred__0/i__carry_n_0 ;
  wire \w_byte_cnt0_inferred__0/i__carry_n_1 ;
  wire \w_byte_cnt0_inferred__0/i__carry_n_2 ;
  wire \w_byte_cnt0_inferred__0/i__carry_n_3 ;
  wire \w_byte_cnt[7]_i_1_n_0 ;
  wire \w_byte_cnt[7]_i_2_n_0 ;
  wire \w_byte_cnt[7]_i_4_n_0 ;
  wire \w_byte_cnt[7]_i_5_n_0 ;
  wire \w_byte_cnt[7]_i_6_n_0 ;
  wire \w_byte_cnt[7]_i_7_n_0 ;
  wire \w_byte_cnt[7]_i_8_n_0 ;
  wire [7:0]w_byte_cnt_reg;
  wire wr_flag;
  wire wr_flag_0;
  wire wr_flag_i_1_n_0;
  wire wr_flag_reg_0;
  wire \write_data_reg[0] ;
  wire \write_data_reg[0]_0 ;
  wire \write_data_reg[0]_1 ;
  wire \write_data_reg[1] ;
  wire \write_data_reg[1]_0 ;
  wire \write_data_reg[1]_1 ;
  wire \write_data_reg[2] ;
  wire \write_data_reg[2]_0 ;
  wire \write_data_reg[2]_1 ;
  wire \write_data_reg[3] ;
  wire \write_data_reg[3]_0 ;
  wire \write_data_reg[3]_1 ;
  wire \write_data_reg[4] ;
  wire \write_data_reg[4]_0 ;
  wire \write_data_reg[4]_1 ;
  wire \write_data_reg[5] ;
  wire \write_data_reg[5]_0 ;
  wire \write_data_reg[5]_1 ;
  wire \write_data_reg[6] ;
  wire \write_data_reg[6]_0 ;
  wire \write_data_reg[6]_1 ;
  wire \write_data_reg[7] ;
  wire \write_data_reg[7]_0 ;
  wire \write_data_reg[7]_1 ;
  wire write_en;
  wire [3:2]\NLW_cnt_clk_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_clk_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_w_byte_cnt0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_w_byte_cnt0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_w_byte_cnt0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_w_byte_cnt0_inferred__0/i__carry__1_O_UNCONNECTED ;

  assign sccb_sda = sda_out_reg_n_0;
  LUT4 #(
    .INIT(16'hBAAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(wr_flag),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[0]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(wr_flag_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\w_byte_cnt[7]_i_6_n_0 ),
        .I1(\w_byte_cnt[7]_i_5_n_0 ),
        .I2(\cnt_clk_reg_n_0_[1] ),
        .I3(\cnt_clk_reg_n_0_[8] ),
        .I4(\cnt_clk_reg_n_0_[3] ),
        .I5(\FSM_onehot_state[4]_i_5_n_0 ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[9]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(wr_flag_reg_0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD00FF00FF00)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_3_n_0 ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[9]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[3] ),
        .I2(\cnt_bit_reg_n_0_[4] ),
        .I3(\w_byte_cnt[7]_i_4_n_0 ),
        .I4(\w_byte_cnt[7]_i_5_n_0 ),
        .I5(\w_byte_cnt[7]_i_6_n_0 ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFF0000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[9]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_state[4]_i_4_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(\FSM_onehot_state[4]_i_5_n_0 ),
        .I1(\w_byte_cnt[7]_i_4_n_0 ),
        .I2(\w_byte_cnt[7]_i_5_n_0 ),
        .I3(\w_byte_cnt[7]_i_6_n_0 ),
        .I4(wr_flag),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\w_byte_cnt[7]_i_2_n_0 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .I2(wr_flag_0),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(wr_flag_0),
        .I3(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(cnt_delay[7]),
        .I1(cnt_delay[6]),
        .I2(cnt_delay[2]),
        .I3(cnt_delay[4]),
        .I4(\FSM_onehot_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(\FSM_onehot_state[9]_i_5_n_0 ),
        .I1(\cnt_clk_reg_n_0_[15] ),
        .I2(\cnt_clk_reg_n_0_[13] ),
        .I3(\cnt_clk_reg_n_0_[2] ),
        .I4(\cnt_clk_reg_n_0_[3] ),
        .I5(\FSM_onehot_state[9]_i_6_n_0 ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(cnt_delay[1]),
        .I1(cnt_delay[3]),
        .I2(cnt_delay[5]),
        .I3(cnt_delay[0]),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\cnt_clk_reg_n_0_[9] ),
        .I1(\cnt_clk_reg_n_0_[10] ),
        .I2(\cnt_clk_reg_n_0_[12] ),
        .I3(\cnt_clk_reg_n_0_[11] ),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(\cnt_clk_reg_n_0_[14] ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(\cnt_clk_reg_n_0_[5] ),
        .I3(\cnt_clk_reg_n_0_[6] ),
        .I4(\FSM_onehot_state[9]_i_7_n_0 ),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[9]_i_7 
       (.I0(\cnt_clk_reg_n_0_[1] ),
        .I1(\cnt_clk_reg_n_0_[4] ),
        .I2(\cnt_clk_reg_n_0_[0] ),
        .I3(\cnt_clk_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(wr_flag_0),
        .R(sys_rst_n_0));
  (* FSM_ENCODED_STATES = "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(sys_rst_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_bit[0]_i_1 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit[4]_i_3_n_0 ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h66666660)) 
    \cnt_bit[1]_i_1 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFEFEFE000000)) 
    \cnt_bit[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\cnt_bit_reg_n_0_[1] ),
        .I5(\cnt_bit_reg_n_0_[2] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnt_bit[3]_i_1 
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[3] ),
        .I4(\cnt_bit[4]_i_3_n_0 ),
        .O(\cnt_bit[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \cnt_bit[4]_i_1 
       (.I0(\FSM_onehot_state[9]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(cnt_bit));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \cnt_bit[4]_i_2 
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(\cnt_bit_reg_n_0_[2] ),
        .I4(\cnt_bit_reg_n_0_[4] ),
        .I5(\cnt_bit[4]_i_3_n_0 ),
        .O(\cnt_bit[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000100010005D55)) 
    \cnt_bit[4]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[4] ),
        .I2(\cnt_bit_reg_n_0_[3] ),
        .I3(\cnt_bit[4]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\cnt_bit[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_bit[4]_i_4 
       (.I0(\cnt_bit_reg_n_0_[1] ),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .O(\cnt_bit[4]_i_4_n_0 ));
  FDRE \cnt_bit_reg[0] 
       (.C(sys_clk),
        .CE(cnt_bit),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[0] ),
        .R(sys_rst_n_0));
  FDRE \cnt_bit_reg[1] 
       (.C(sys_clk),
        .CE(cnt_bit),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[1] ),
        .R(sys_rst_n_0));
  FDRE \cnt_bit_reg[2] 
       (.C(sys_clk),
        .CE(cnt_bit),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[2] ),
        .R(sys_rst_n_0));
  FDRE \cnt_bit_reg[3] 
       (.C(sys_clk),
        .CE(cnt_bit),
        .D(\cnt_bit[3]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[3] ),
        .R(sys_rst_n_0));
  FDRE \cnt_bit_reg[4] 
       (.C(sys_clk),
        .CE(cnt_bit),
        .D(\cnt_bit[4]_i_2_n_0 ),
        .Q(\cnt_bit_reg_n_0_[4] ),
        .R(sys_rst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[0]_i_1 
       (.I0(\cnt_clk_reg_n_0_[0] ),
        .O(cnt_clk[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[10]_i_1 
       (.I0(\cnt_clk_reg[12]_i_2_n_6 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[11]_i_1 
       (.I0(\cnt_clk_reg[12]_i_2_n_5 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[12]_i_1 
       (.I0(\cnt_clk_reg[12]_i_2_n_4 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[13]_i_1 
       (.I0(\cnt_clk_reg[15]_i_3_n_7 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[14]_i_1 
       (.I0(\cnt_clk_reg[15]_i_3_n_6 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[14]));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_clk[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sys_rst_n),
        .O(\cnt_clk[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[15]_i_2 
       (.I0(\cnt_clk_reg[15]_i_3_n_5 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[1]_i_1 
       (.I0(\cnt_clk_reg[4]_i_2_n_7 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[2]_i_1 
       (.I0(\cnt_clk_reg[4]_i_2_n_6 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[3]_i_1 
       (.I0(\cnt_clk_reg[4]_i_2_n_5 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[4]_i_1 
       (.I0(\cnt_clk_reg[4]_i_2_n_4 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[5]_i_1 
       (.I0(\cnt_clk_reg[8]_i_2_n_7 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[6]_i_1 
       (.I0(\cnt_clk_reg[8]_i_2_n_6 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[7]_i_1 
       (.I0(\cnt_clk_reg[8]_i_2_n_5 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[8]_i_1 
       (.I0(\cnt_clk_reg[8]_i_2_n_4 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[9]_i_1 
       (.I0(\cnt_clk_reg[12]_i_2_n_7 ),
        .I1(\FSM_onehot_state[9]_i_3_n_0 ),
        .O(cnt_clk[9]));
  FDRE \cnt_clk_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[0]),
        .Q(\cnt_clk_reg_n_0_[0] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[10]),
        .Q(\cnt_clk_reg_n_0_[10] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[11]),
        .Q(\cnt_clk_reg_n_0_[11] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[12]),
        .Q(\cnt_clk_reg_n_0_[12] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_clk_reg[12]_i_2 
       (.CI(\cnt_clk_reg[8]_i_2_n_0 ),
        .CO({\cnt_clk_reg[12]_i_2_n_0 ,\cnt_clk_reg[12]_i_2_n_1 ,\cnt_clk_reg[12]_i_2_n_2 ,\cnt_clk_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[12]_i_2_n_4 ,\cnt_clk_reg[12]_i_2_n_5 ,\cnt_clk_reg[12]_i_2_n_6 ,\cnt_clk_reg[12]_i_2_n_7 }),
        .S({\cnt_clk_reg_n_0_[12] ,\cnt_clk_reg_n_0_[11] ,\cnt_clk_reg_n_0_[10] ,\cnt_clk_reg_n_0_[9] }));
  FDRE \cnt_clk_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[13]),
        .Q(\cnt_clk_reg_n_0_[13] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[14]),
        .Q(\cnt_clk_reg_n_0_[14] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[15]),
        .Q(\cnt_clk_reg_n_0_[15] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_clk_reg[15]_i_3 
       (.CI(\cnt_clk_reg[12]_i_2_n_0 ),
        .CO({\NLW_cnt_clk_reg[15]_i_3_CO_UNCONNECTED [3:2],\cnt_clk_reg[15]_i_3_n_2 ,\cnt_clk_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_clk_reg[15]_i_3_O_UNCONNECTED [3],\cnt_clk_reg[15]_i_3_n_5 ,\cnt_clk_reg[15]_i_3_n_6 ,\cnt_clk_reg[15]_i_3_n_7 }),
        .S({1'b0,\cnt_clk_reg_n_0_[15] ,\cnt_clk_reg_n_0_[14] ,\cnt_clk_reg_n_0_[13] }));
  FDRE \cnt_clk_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[1]),
        .Q(\cnt_clk_reg_n_0_[1] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[2]),
        .Q(\cnt_clk_reg_n_0_[2] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[3]),
        .Q(\cnt_clk_reg_n_0_[3] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[4]),
        .Q(\cnt_clk_reg_n_0_[4] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_clk_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_clk_reg[4]_i_2_n_0 ,\cnt_clk_reg[4]_i_2_n_1 ,\cnt_clk_reg[4]_i_2_n_2 ,\cnt_clk_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_clk_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[4]_i_2_n_4 ,\cnt_clk_reg[4]_i_2_n_5 ,\cnt_clk_reg[4]_i_2_n_6 ,\cnt_clk_reg[4]_i_2_n_7 }),
        .S({\cnt_clk_reg_n_0_[4] ,\cnt_clk_reg_n_0_[3] ,\cnt_clk_reg_n_0_[2] ,\cnt_clk_reg_n_0_[1] }));
  FDRE \cnt_clk_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[5]),
        .Q(\cnt_clk_reg_n_0_[5] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[6]),
        .Q(\cnt_clk_reg_n_0_[6] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[7]),
        .Q(\cnt_clk_reg_n_0_[7] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  FDRE \cnt_clk_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[8]),
        .Q(\cnt_clk_reg_n_0_[8] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_clk_reg[8]_i_2 
       (.CI(\cnt_clk_reg[4]_i_2_n_0 ),
        .CO({\cnt_clk_reg[8]_i_2_n_0 ,\cnt_clk_reg[8]_i_2_n_1 ,\cnt_clk_reg[8]_i_2_n_2 ,\cnt_clk_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[8]_i_2_n_4 ,\cnt_clk_reg[8]_i_2_n_5 ,\cnt_clk_reg[8]_i_2_n_6 ,\cnt_clk_reg[8]_i_2_n_7 }),
        .S({\cnt_clk_reg_n_0_[8] ,\cnt_clk_reg_n_0_[7] ,\cnt_clk_reg_n_0_[6] ,\cnt_clk_reg_n_0_[5] }));
  FDRE \cnt_clk_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_clk[9]),
        .Q(\cnt_clk_reg_n_0_[9] ),
        .R(\cnt_clk[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_delay[0]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(cnt_delay[0]),
        .O(cnt_delay__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_delay[1]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(cnt_delay[0]),
        .I2(cnt_delay[1]),
        .O(cnt_delay__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_delay[2]_i_1 
       (.I0(cnt_delay[2]),
        .I1(cnt_delay[1]),
        .I2(cnt_delay[0]),
        .O(cnt_delay__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_delay[3]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(cnt_delay[0]),
        .I2(cnt_delay[1]),
        .I3(cnt_delay[2]),
        .I4(cnt_delay[3]),
        .O(cnt_delay__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_delay[4]_i_1 
       (.I0(cnt_delay[4]),
        .I1(cnt_delay[2]),
        .I2(cnt_delay[1]),
        .I3(cnt_delay[0]),
        .I4(cnt_delay[3]),
        .O(cnt_delay__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_delay[5]_i_1 
       (.I0(cnt_delay[3]),
        .I1(cnt_delay[0]),
        .I2(cnt_delay[1]),
        .I3(cnt_delay[2]),
        .I4(cnt_delay[4]),
        .I5(cnt_delay[5]),
        .O(cnt_delay__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_delay[6]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(\cnt_delay[7]_i_3_n_0 ),
        .I2(cnt_delay[6]),
        .O(cnt_delay__0[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_delay[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(sys_rst_n),
        .O(\cnt_delay[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_delay[7]_i_2 
       (.I0(cnt_delay[7]),
        .I1(cnt_delay[6]),
        .I2(\cnt_delay[7]_i_3_n_0 ),
        .O(cnt_delay__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_delay[7]_i_3 
       (.I0(cnt_delay[5]),
        .I1(cnt_delay[4]),
        .I2(cnt_delay[2]),
        .I3(cnt_delay[1]),
        .I4(cnt_delay[0]),
        .I5(cnt_delay[3]),
        .O(\cnt_delay[7]_i_3_n_0 ));
  FDRE \cnt_delay_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[0]),
        .Q(cnt_delay[0]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[1]),
        .Q(cnt_delay[1]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[2]),
        .Q(cnt_delay[2]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[3]),
        .Q(cnt_delay[3]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[4]),
        .Q(cnt_delay[4]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[5]),
        .Q(cnt_delay[5]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[6]),
        .Q(cnt_delay[6]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  FDRE \cnt_delay_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_delay__0[7]),
        .Q(cnt_delay[7]),
        .R(\cnt_delay[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_1
       (.I0(w_byte_cnt_reg[6]),
        .I1(w_byte_cnt_reg[7]),
        .I2(wr_flag_reg_0),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    i__carry_i_2
       (.I0(w_byte_cnt_reg[4]),
        .I1(w_byte_cnt_reg[5]),
        .I2(w_byte_cnt_reg[3]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0480)) 
    i__carry_i_3
       (.I0(w_byte_cnt_reg[2]),
        .I1(w_byte_cnt_reg[1]),
        .I2(w_byte_cnt_reg[0]),
        .I3(wr_flag_reg_0),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \reg_addr[0]_i_1 
       (.I0(\reg_addr_reg[0] ),
        .I1(Q[2]),
        .I2(\reg_addr_reg[0]_0 ),
        .I3(Q[3]),
        .I4(\reg_addr_reg[0]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [0]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \reg_addr[10]_i_1 
       (.I0(\reg_addr_reg[10] ),
        .I1(Q[3]),
        .I2(\reg_addr_reg[10]_0 ),
        .I3(Q[2]),
        .I4(\reg_addr_reg[10]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [9]));
  LUT5 #(
    .INIT(32'h0000F454)) 
    \reg_addr[11]_i_1 
       (.I0(Q[3]),
        .I1(\reg_addr_reg[11] ),
        .I2(Q[2]),
        .I3(\reg_addr_reg[11]_0 ),
        .I4(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [10]));
  LUT5 #(
    .INIT(32'h0000FE5E)) 
    \reg_addr[12]_i_1 
       (.I0(Q[3]),
        .I1(\reg_addr_reg[12] ),
        .I2(Q[2]),
        .I3(\reg_addr_reg[12]_0 ),
        .I4(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [11]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \reg_addr[13]_i_1 
       (.I0(Q[3]),
        .I1(\reg_addr_reg[13] ),
        .I2(Q[2]),
        .I3(\reg_addr_reg[9]_0 ),
        .I4(\reg_addr_reg[13]_0 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [12]));
  LUT6 #(
    .INIT(64'h00000000FEAE5E0E)) 
    \reg_addr[14]_i_1 
       (.I0(Q[3]),
        .I1(\reg_addr_reg[14] ),
        .I2(Q[2]),
        .I3(\reg_addr_reg[14]_0 ),
        .I4(\reg_addr_reg[14]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_addr[14]_i_5 
       (.I0(\reg_index_reg[8] [8]),
        .I1(sccb_cfg_done),
        .I2(sel),
        .O(\reg_addr[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \reg_addr[1]_i_1 
       (.I0(\reg_addr_reg[1] ),
        .I1(Q[2]),
        .I2(\reg_addr_reg[1]_0 ),
        .I3(Q[3]),
        .I4(\reg_addr_reg[1]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [1]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \reg_addr[2]_i_1 
       (.I0(\reg_addr_reg[2] ),
        .I1(Q[2]),
        .I2(\reg_addr_reg[2]_0 ),
        .I3(Q[3]),
        .I4(\reg_addr_reg[2]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \reg_addr[3]_i_1 
       (.I0(\reg_addr_reg[3] ),
        .I1(Q[2]),
        .I2(\reg_addr_reg[3]_0 ),
        .I3(Q[3]),
        .I4(\reg_addr_reg[3]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [3]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \reg_addr[4]_i_1 
       (.I0(\reg_addr_reg[4] ),
        .I1(Q[3]),
        .I2(\reg_addr_reg[4]_0 ),
        .I3(Q[2]),
        .I4(\reg_addr_reg[4]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [4]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \reg_addr[5]_i_1 
       (.I0(Q[3]),
        .I1(\reg_addr_reg[5] ),
        .I2(Q[2]),
        .I3(\reg_addr_reg[5]_0 ),
        .I4(\reg_addr_reg[5]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [5]));
  LUT6 #(
    .INIT(64'h0000000022222A22)) 
    \reg_addr[7]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg_addr_reg[7] ),
        .I4(Q[1]),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [6]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \reg_addr[8]_i_1 
       (.I0(\reg_addr_reg[8] ),
        .I1(Q[3]),
        .I2(\reg_addr_reg[8]_0 ),
        .I3(Q[2]),
        .I4(\reg_addr_reg[8]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [7]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \reg_addr[9]_i_1 
       (.I0(\reg_addr_reg[9] ),
        .I1(Q[2]),
        .I2(\reg_addr_reg[9]_0 ),
        .I3(Q[3]),
        .I4(\reg_addr_reg[9]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg_index[0]_i_1 
       (.I0(sccb_cfg_done),
        .I1(sel),
        .I2(\reg_index_reg[8] [0]),
        .O(\rst_cnt_reg[7]_inv [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \reg_index[1]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [0]),
        .I2(\reg_index_reg[8] [1]),
        .I3(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00001444)) 
    \reg_index[2]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [2]),
        .I2(\reg_index_reg[8] [1]),
        .I3(\reg_index_reg[8] [0]),
        .I4(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [2]));
  LUT6 #(
    .INIT(64'h0000000014444444)) 
    \reg_index[3]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [3]),
        .I2(\reg_index_reg[8] [2]),
        .I3(\reg_index_reg[8] [0]),
        .I4(\reg_index_reg[8] [1]),
        .I5(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \reg_index[4]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [4]),
        .I2(\reg_index_reg_rep[4] ),
        .I3(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \reg_index[5]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [5]),
        .I2(\reg_index_reg_rep[5] ),
        .I3(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \reg_index[6]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [6]),
        .I2(\reg_index_reg_rep[6] ),
        .I3(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00004144)) 
    \reg_index[7]_i_1 
       (.I0(sel),
        .I1(\reg_index_reg[8] [7]),
        .I2(\reg_index_reg_rep[6] ),
        .I3(\reg_index_reg[8] [6]),
        .I4(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_index[8]_i_1 
       (.I0(\w_byte_cnt[7]_i_2_n_0 ),
        .I1(sccb_cfg_done),
        .I2(sel),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000044441444)) 
    \reg_index[8]_i_2 
       (.I0(sel),
        .I1(\reg_index_reg[8] [8]),
        .I2(\reg_index_reg[8] [7]),
        .I3(\reg_index_reg[8] [6]),
        .I4(\reg_index_reg_rep[6] ),
        .I5(sccb_cfg_done),
        .O(\rst_cnt_reg[7]_inv [8]));
  LUT3 #(
    .INIT(8'hF8)) 
    sccb_cfg_done_i_1
       (.I0(\w_byte_cnt[7]_i_2_n_0 ),
        .I1(w_byte_cnt0),
        .I2(sccb_cfg_done),
        .O(sccb_cfg_done_i_1_n_0));
  FDRE sccb_cfg_done_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sccb_cfg_done_i_1_n_0),
        .Q(sccb_cfg_done),
        .R(sys_rst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sccb_clk_i_1
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    sccb_clk_i_10
       (.I0(\cnt_clk_reg_n_0_[7] ),
        .I1(\cnt_clk_reg_n_0_[2] ),
        .I2(\cnt_clk_reg_n_0_[0] ),
        .O(sccb_clk_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sccb_clk_i_11
       (.I0(wr_flag_0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sccb_clk_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    sccb_clk_i_12
       (.I0(\cnt_clk_reg_n_0_[0] ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(\cnt_clk_reg_n_0_[2] ),
        .I3(\cnt_clk_reg_n_0_[8] ),
        .I4(\cnt_clk_reg_n_0_[3] ),
        .I5(\cnt_clk_reg_n_0_[1] ),
        .O(sccb_clk_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sccb_clk_i_13
       (.I0(\cnt_clk_reg_n_0_[11] ),
        .I1(\cnt_clk_reg_n_0_[9] ),
        .I2(\cnt_clk_reg_n_0_[10] ),
        .O(sccb_clk_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    sccb_clk_i_14
       (.I0(\cnt_clk_reg_n_0_[0] ),
        .I1(\cnt_clk_reg_n_0_[1] ),
        .I2(\cnt_clk_reg_n_0_[2] ),
        .I3(\cnt_clk_reg_n_0_[3] ),
        .O(sccb_clk_i_14_n_0));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    sccb_clk_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(sccb_clk_i_3_n_0),
        .I2(sccb_clk_i_4_n_0),
        .I3(sccb_clk_i_5_n_0),
        .I4(sccb_scl),
        .O(sccb_clk_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000010001)) 
    sccb_clk_i_3
       (.I0(\cnt_clk_reg_n_0_[11] ),
        .I1(\cnt_clk_reg_n_0_[9] ),
        .I2(\cnt_clk_reg_n_0_[10] ),
        .I3(sccb_clk_i_6_n_0),
        .I4(sccb_clk_i_7_n_0),
        .I5(\cnt_clk_reg_n_0_[8] ),
        .O(sccb_clk_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABAB03F3)) 
    sccb_clk_i_4
       (.I0(sccb_clk_i_8_n_0),
        .I1(sccb_scl),
        .I2(sccb_clk_i_9_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(wr_flag_0),
        .O(sccb_clk_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFF1FFF0FFFFFFF0)) 
    sccb_clk_i_5
       (.I0(sccb_clk_i_10_n_0),
        .I1(\w_byte_cnt[7]_i_4_n_0 ),
        .I2(sccb_clk_i_9_n_0),
        .I3(sccb_clk_i_11_n_0),
        .I4(\w_byte_cnt[7]_i_5_n_0 ),
        .I5(sccb_clk_i_12_n_0),
        .O(sccb_clk_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sccb_clk_i_6
       (.I0(\cnt_clk_reg_n_0_[15] ),
        .I1(\cnt_clk_reg_n_0_[13] ),
        .I2(\cnt_clk_reg_n_0_[14] ),
        .I3(\cnt_clk_reg_n_0_[12] ),
        .O(sccb_clk_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000000FF15FF55)) 
    sccb_clk_i_7
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .I1(\cnt_clk_reg_n_0_[0] ),
        .I2(\cnt_clk_reg_n_0_[1] ),
        .I3(\w_byte_cnt[7]_i_8_n_0 ),
        .I4(\cnt_clk_reg_n_0_[2] ),
        .I5(\cnt_clk_reg_n_0_[7] ),
        .O(sccb_clk_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFF)) 
    sccb_clk_i_8
       (.I0(\cnt_clk_reg_n_0_[8] ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(sccb_clk_i_6_n_0),
        .I3(sccb_clk_i_13_n_0),
        .I4(sccb_clk_i_14_n_0),
        .I5(\w_byte_cnt[7]_i_8_n_0 ),
        .O(sccb_clk_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    sccb_clk_i_9
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(sccb_clk_i_9_n_0));
  FDSE sccb_clk_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sccb_clk_i_2_n_0),
        .Q(sccb_scl),
        .S(sys_rst_n_0));
  LUT6 #(
    .INIT(64'hFF40FF40FFFFFF40)) 
    sda_out_i_1
       (.I0(\cnt_bit_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sda_out_i_2_n_0),
        .I3(sda_out_i_3_n_0),
        .I4(wr_flag_0),
        .I5(sccb_clk_i_3_n_0),
        .O(sda_out));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_10
       (.I0(sda_out_reg_i_4_0[9]),
        .I1(sda_out_reg_i_4_0[8]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_reg_i_4_0[7]),
        .I5(sda_out_reg_i_4_0[6]),
        .O(sda_out_i_10_n_0));
  LUT5 #(
    .INIT(32'hE323E020)) 
    sda_out_i_11
       (.I0(sda_out_reg_i_4_0[5]),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .I2(\cnt_bit_reg_n_0_[1] ),
        .I3(sda_out_reg_i_4_0[4]),
        .I4(sda_out_reg_i_4_0[3]),
        .O(sda_out_i_11_n_0));
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    sda_out_i_12
       (.I0(sda_out_reg_i_4_0[2]),
        .I1(sda_out_reg_i_4_0[1]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_reg_i_4_0[0]),
        .O(sda_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_13
       (.I0(sda_out_i_6_0[2]),
        .I1(sda_out_i_6_0[1]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_i_6_0[0]),
        .I5(sda_out_i_6_0[7]),
        .O(sda_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_14
       (.I0(sda_out_i_6_0[6]),
        .I1(sda_out_i_6_0[5]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_i_6_0[4]),
        .I5(sda_out_i_6_0[3]),
        .O(sda_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAA955560000)) 
    sda_out_i_2
       (.I0(\cnt_bit_reg_n_0_[3] ),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_reg_i_4_n_0),
        .I5(sda_out_reg_i_5_n_0),
        .O(sda_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEBFAEAE)) 
    sda_out_i_3
       (.I0(sda_out_i_6_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(sccb_clk_i_8_n_0),
        .I3(wr_flag_0),
        .I4(sccb_clk_i_9_n_0),
        .I5(sda_out_i_7_n_0),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008A80)) 
    sda_out_i_6
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(sda_out_i_13_n_0),
        .I2(sda_out_i_8_n_0),
        .I3(sda_out_i_14_n_0),
        .I4(\cnt_bit_reg_n_0_[4] ),
        .I5(\cnt_bit_reg_n_0_[3] ),
        .O(sda_out_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000001010101000)) 
    sda_out_i_7
       (.I0(\cnt_bit_reg_n_0_[4] ),
        .I1(\cnt_bit_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[0] ),
        .I4(\cnt_bit_reg_n_0_[1] ),
        .I5(\cnt_bit_reg_n_0_[2] ),
        .O(sda_out_i_7_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    sda_out_i_8
       (.I0(\cnt_bit_reg_n_0_[2] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .O(sda_out_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_out_i_9
       (.I0(sda_out_reg_i_4_0[13]),
        .I1(sda_out_reg_i_4_0[12]),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(sda_out_reg_i_4_0[11]),
        .I5(sda_out_reg_i_4_0[10]),
        .O(sda_out_i_9_n_0));
  FDSE sda_out_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sda_out),
        .Q(sda_out_reg_n_0),
        .S(sys_rst_n_0));
  MUXF7 sda_out_reg_i_4
       (.I0(sda_out_i_9_n_0),
        .I1(sda_out_i_10_n_0),
        .O(sda_out_reg_i_4_n_0),
        .S(sda_out_i_8_n_0));
  MUXF7 sda_out_reg_i_5
       (.I0(sda_out_i_11_n_0),
        .I1(sda_out_i_12_n_0),
        .O(sda_out_reg_i_5_n_0),
        .S(sda_out_i_8_n_0));
  CARRY4 \w_byte_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\w_byte_cnt0_inferred__0/i__carry_n_0 ,\w_byte_cnt0_inferred__0/i__carry_n_1 ,\w_byte_cnt0_inferred__0/i__carry_n_2 ,\w_byte_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_w_byte_cnt0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({wr_flag_reg_0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  CARRY4 \w_byte_cnt0_inferred__0/i__carry__0 
       (.CI(\w_byte_cnt0_inferred__0/i__carry_n_0 ),
        .CO({\w_byte_cnt0_inferred__0/i__carry__0_n_0 ,\w_byte_cnt0_inferred__0/i__carry__0_n_1 ,\w_byte_cnt0_inferred__0/i__carry__0_n_2 ,\w_byte_cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_w_byte_cnt0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({wr_flag_reg_0,wr_flag_reg_0,wr_flag_reg_0,wr_flag_reg_0}));
  CARRY4 \w_byte_cnt0_inferred__0/i__carry__1 
       (.CI(\w_byte_cnt0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_w_byte_cnt0_inferred__0/i__carry__1_CO_UNCONNECTED [3],w_byte_cnt0,\w_byte_cnt0_inferred__0/i__carry__1_n_2 ,\w_byte_cnt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_w_byte_cnt0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,wr_flag_reg_0,wr_flag_reg_0,wr_flag_reg_0}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_byte_cnt[0]_i_1 
       (.I0(w_byte_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_byte_cnt[1]_i_1 
       (.I0(w_byte_cnt_reg[0]),
        .I1(w_byte_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_byte_cnt[2]_i_1 
       (.I0(w_byte_cnt_reg[2]),
        .I1(w_byte_cnt_reg[0]),
        .I2(w_byte_cnt_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \w_byte_cnt[3]_i_1 
       (.I0(w_byte_cnt_reg[3]),
        .I1(w_byte_cnt_reg[1]),
        .I2(w_byte_cnt_reg[0]),
        .I3(w_byte_cnt_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_byte_cnt[4]_i_1 
       (.I0(w_byte_cnt_reg[2]),
        .I1(w_byte_cnt_reg[0]),
        .I2(w_byte_cnt_reg[1]),
        .I3(w_byte_cnt_reg[3]),
        .I4(w_byte_cnt_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \w_byte_cnt[5]_i_1 
       (.I0(w_byte_cnt_reg[5]),
        .I1(w_byte_cnt_reg[2]),
        .I2(w_byte_cnt_reg[0]),
        .I3(w_byte_cnt_reg[1]),
        .I4(w_byte_cnt_reg[3]),
        .I5(w_byte_cnt_reg[4]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \w_byte_cnt[6]_i_1 
       (.I0(w_byte_cnt_reg[6]),
        .I1(\w_byte_cnt[7]_i_7_n_0 ),
        .I2(w_byte_cnt_reg[4]),
        .I3(w_byte_cnt_reg[5]),
        .I4(w_byte_cnt_reg[3]),
        .O(p_0_in__1[6]));
  LUT3 #(
    .INIT(8'h8F)) 
    \w_byte_cnt[7]_i_1 
       (.I0(\w_byte_cnt[7]_i_2_n_0 ),
        .I1(w_byte_cnt0),
        .I2(sys_rst_n),
        .O(\w_byte_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \w_byte_cnt[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\w_byte_cnt[7]_i_4_n_0 ),
        .I2(\w_byte_cnt[7]_i_5_n_0 ),
        .I3(\w_byte_cnt[7]_i_6_n_0 ),
        .I4(\cnt_bit_reg_n_0_[3] ),
        .I5(\cnt_bit_reg_n_0_[4] ),
        .O(\w_byte_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \w_byte_cnt[7]_i_3 
       (.I0(w_byte_cnt_reg[7]),
        .I1(w_byte_cnt_reg[3]),
        .I2(w_byte_cnt_reg[5]),
        .I3(w_byte_cnt_reg[4]),
        .I4(\w_byte_cnt[7]_i_7_n_0 ),
        .I5(w_byte_cnt_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \w_byte_cnt[7]_i_4 
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .I1(\cnt_clk_reg_n_0_[8] ),
        .I2(\cnt_clk_reg_n_0_[1] ),
        .O(\w_byte_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \w_byte_cnt[7]_i_5 
       (.I0(\cnt_clk_reg_n_0_[11] ),
        .I1(\cnt_clk_reg_n_0_[9] ),
        .I2(\cnt_clk_reg_n_0_[10] ),
        .I3(\w_byte_cnt[7]_i_8_n_0 ),
        .I4(sccb_clk_i_6_n_0),
        .O(\w_byte_cnt[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \w_byte_cnt[7]_i_6 
       (.I0(\cnt_clk_reg_n_0_[0] ),
        .I1(\cnt_clk_reg_n_0_[7] ),
        .I2(\cnt_clk_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[2] ),
        .I4(\cnt_bit_reg_n_0_[0] ),
        .I5(\cnt_bit_reg_n_0_[1] ),
        .O(\w_byte_cnt[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \w_byte_cnt[7]_i_7 
       (.I0(w_byte_cnt_reg[1]),
        .I1(w_byte_cnt_reg[0]),
        .I2(w_byte_cnt_reg[2]),
        .O(\w_byte_cnt[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \w_byte_cnt[7]_i_8 
       (.I0(\cnt_clk_reg_n_0_[6] ),
        .I1(\cnt_clk_reg_n_0_[5] ),
        .I2(\cnt_clk_reg_n_0_[4] ),
        .O(\w_byte_cnt[7]_i_8_n_0 ));
  FDRE \w_byte_cnt_reg[0] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(w_byte_cnt_reg[0]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[1] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(w_byte_cnt_reg[1]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[2] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(w_byte_cnt_reg[2]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[3] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(w_byte_cnt_reg[3]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[4] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(w_byte_cnt_reg[4]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[5] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(w_byte_cnt_reg[5]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[6] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(w_byte_cnt_reg[6]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  FDRE \w_byte_cnt_reg[7] 
       (.C(sys_clk),
        .CE(\w_byte_cnt[7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(w_byte_cnt_reg[7]),
        .R(\w_byte_cnt[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    wr_flag_i_1
       (.I0(wr_flag_0),
        .I1(wr_flag_reg_0),
        .I2(wr_flag),
        .O(wr_flag_i_1_n_0));
  FDRE wr_flag_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_flag_i_1_n_0),
        .Q(wr_flag),
        .R(sys_rst_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[0]_i_1 
       (.I0(\write_data_reg[0] ),
        .I1(Q[2]),
        .I2(\write_data_reg[0]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[0]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[1]_i_1 
       (.I0(\write_data_reg[1] ),
        .I1(Q[2]),
        .I2(\write_data_reg[1]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[1]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[2]_i_1 
       (.I0(\write_data_reg[2] ),
        .I1(Q[2]),
        .I2(\write_data_reg[2]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[2]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[3]_i_1 
       (.I0(\write_data_reg[3] ),
        .I1(Q[2]),
        .I2(\write_data_reg[3]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[3]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[4]_i_1 
       (.I0(\write_data_reg[4] ),
        .I1(Q[2]),
        .I2(\write_data_reg[4]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[4]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[5]_i_1 
       (.I0(\write_data_reg[5] ),
        .I1(Q[2]),
        .I2(\write_data_reg[5]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[5]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[6]_i_1 
       (.I0(\write_data_reg[6] ),
        .I1(Q[2]),
        .I2(\write_data_reg[6]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[6]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \write_data[7]_i_1 
       (.I0(\write_data_reg[7] ),
        .I1(Q[2]),
        .I2(\write_data_reg[7]_0 ),
        .I3(Q[3]),
        .I4(\write_data_reg[7]_1 ),
        .I5(\reg_addr[14]_i_5_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    write_en_i_1
       (.I0(sel),
        .I1(sccb_cfg_done),
        .O(write_en));
endmodule

(* ORIG_REF_NAME = "ui5640reg" *) 
module ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg
   (\reg_index_reg_rep[7] ,
    \reg_index_reg_rep[1] ,
    \reg_index_reg_rep[7]_0 ,
    \reg_index_reg_rep[4] ,
    \reg_index_reg_rep[7]_1 ,
    \reg_index_reg_rep[7]_2 ,
    \reg_index_reg_rep[7]_3 ,
    \reg_index_reg_rep[7]_4 ,
    \reg_index_reg_rep[7]_5 ,
    \reg_index_reg_rep[4]_0 ,
    \reg_index_reg_rep[4]_1 ,
    \reg_index_reg_rep[4]_2 ,
    \reg_index_reg_rep[7]_6 ,
    \reg_index_reg_rep[7]_7 ,
    \reg_index_reg_rep[4]_3 ,
    \reg_index_reg_rep[0] ,
    \reg_index_reg_rep[1]_0 ,
    \reg_index_reg_rep[1]_1 ,
    \reg_index_reg_rep[4]_4 ,
    \reg_index_reg_rep[4]_5 ,
    \reg_index_reg_rep[7]_8 ,
    \reg_index_reg_rep[4]_6 ,
    \reg_index_reg_rep[4]_7 ,
    \reg_index_reg_rep[7]_9 ,
    \reg_index_reg_rep[4]_8 ,
    \reg_index_reg_rep[7]_10 ,
    \reg_index_reg_rep[4]_9 ,
    \reg_index_reg_rep[4]_10 ,
    \reg_index_reg_rep[7]_11 ,
    \reg_index_reg_rep[4]_11 ,
    \reg_index_reg_rep[4]_12 ,
    \reg_index_reg_rep[0]_0 ,
    \reg_index_reg_rep[7]_12 ,
    \reg_index_reg_rep[4]_13 ,
    \reg_index_reg_rep[4]_14 ,
    \reg_index_reg_rep[4]_15 ,
    \reg_index_reg_rep[4]_16 ,
    \reg_index_reg_rep[1]_2 ,
    \reg_index_reg_rep[4]_17 ,
    \reg_index_reg_rep[4]_18 ,
    \reg_index_reg_rep[4]_19 ,
    \reg_index_reg_rep[4]_20 ,
    \reg_index_reg_rep[4]_21 ,
    \reg_index_reg_rep[5] ,
    \reg_index_reg_rep[4]_22 ,
    \reg_index_reg_rep[4]_23 ,
    \reg_index_reg_rep[4]_24 ,
    \reg_index_reg_rep[4]_25 ,
    \reg_index_reg_rep[4]_26 ,
    \reg_index_reg_rep[3] ,
    \reg_index_reg_rep[3]_0 ,
    \reg_index_reg_rep[4]_27 ,
    \reg_index_reg_rep[2] ,
    \reg_index_reg_rep[4]_28 ,
    \reg_index_reg_rep[4]_29 ,
    \reg_index_reg_rep[0]_1 ,
    \reg_index_reg_rep[3]_1 ,
    \reg_index_reg_rep[4]_30 ,
    \reg_index_reg_rep[1]_3 ,
    \reg_index_reg_rep[3]_2 ,
    \reg_index_reg_rep[4]_31 ,
    Q);
  output \reg_index_reg_rep[7] ;
  output \reg_index_reg_rep[1] ;
  output \reg_index_reg_rep[7]_0 ;
  output \reg_index_reg_rep[4] ;
  output \reg_index_reg_rep[7]_1 ;
  output \reg_index_reg_rep[7]_2 ;
  output \reg_index_reg_rep[7]_3 ;
  output \reg_index_reg_rep[7]_4 ;
  output \reg_index_reg_rep[7]_5 ;
  output \reg_index_reg_rep[4]_0 ;
  output \reg_index_reg_rep[4]_1 ;
  output \reg_index_reg_rep[4]_2 ;
  output \reg_index_reg_rep[7]_6 ;
  output \reg_index_reg_rep[7]_7 ;
  output \reg_index_reg_rep[4]_3 ;
  output \reg_index_reg_rep[0] ;
  output \reg_index_reg_rep[1]_0 ;
  output \reg_index_reg_rep[1]_1 ;
  output \reg_index_reg_rep[4]_4 ;
  output \reg_index_reg_rep[4]_5 ;
  output \reg_index_reg_rep[7]_8 ;
  output \reg_index_reg_rep[4]_6 ;
  output \reg_index_reg_rep[4]_7 ;
  output \reg_index_reg_rep[7]_9 ;
  output \reg_index_reg_rep[4]_8 ;
  output \reg_index_reg_rep[7]_10 ;
  output \reg_index_reg_rep[4]_9 ;
  output \reg_index_reg_rep[4]_10 ;
  output \reg_index_reg_rep[7]_11 ;
  output \reg_index_reg_rep[4]_11 ;
  output \reg_index_reg_rep[4]_12 ;
  output \reg_index_reg_rep[0]_0 ;
  output \reg_index_reg_rep[7]_12 ;
  output \reg_index_reg_rep[4]_13 ;
  output \reg_index_reg_rep[4]_14 ;
  output \reg_index_reg_rep[4]_15 ;
  output \reg_index_reg_rep[4]_16 ;
  output \reg_index_reg_rep[1]_2 ;
  output \reg_index_reg_rep[4]_17 ;
  output \reg_index_reg_rep[4]_18 ;
  output \reg_index_reg_rep[4]_19 ;
  output \reg_index_reg_rep[4]_20 ;
  output \reg_index_reg_rep[4]_21 ;
  output \reg_index_reg_rep[5] ;
  output \reg_index_reg_rep[4]_22 ;
  output \reg_index_reg_rep[4]_23 ;
  output \reg_index_reg_rep[4]_24 ;
  output \reg_index_reg_rep[4]_25 ;
  output \reg_index_reg_rep[4]_26 ;
  output \reg_index_reg_rep[3] ;
  output \reg_index_reg_rep[3]_0 ;
  output \reg_index_reg_rep[4]_27 ;
  output \reg_index_reg_rep[2] ;
  output \reg_index_reg_rep[4]_28 ;
  output \reg_index_reg_rep[4]_29 ;
  output \reg_index_reg_rep[0]_1 ;
  output \reg_index_reg_rep[3]_1 ;
  output \reg_index_reg_rep[4]_30 ;
  output \reg_index_reg_rep[1]_3 ;
  output \reg_index_reg_rep[3]_2 ;
  output \reg_index_reg_rep[4]_31 ;
  input [6:0]Q;

  wire [6:0]Q;
  wire \reg_addr[0]_i_5_n_0 ;
  wire \reg_addr[0]_i_6_n_0 ;
  wire \reg_addr[1]_i_5_n_0 ;
  wire \reg_addr[1]_i_6_n_0 ;
  wire \reg_addr[2]_i_5_n_0 ;
  wire \reg_addr[2]_i_6_n_0 ;
  wire \reg_addr[3]_i_5_n_0 ;
  wire \reg_addr[3]_i_6_n_0 ;
  wire \reg_addr[4]_i_5_n_0 ;
  wire \reg_addr[9]_i_4_n_0 ;
  wire \reg_addr[9]_i_5_n_0 ;
  wire \reg_index_reg_rep[0] ;
  wire \reg_index_reg_rep[0]_0 ;
  wire \reg_index_reg_rep[0]_1 ;
  wire \reg_index_reg_rep[1] ;
  wire \reg_index_reg_rep[1]_0 ;
  wire \reg_index_reg_rep[1]_1 ;
  wire \reg_index_reg_rep[1]_2 ;
  wire \reg_index_reg_rep[1]_3 ;
  wire \reg_index_reg_rep[2] ;
  wire \reg_index_reg_rep[3] ;
  wire \reg_index_reg_rep[3]_0 ;
  wire \reg_index_reg_rep[3]_1 ;
  wire \reg_index_reg_rep[3]_2 ;
  wire \reg_index_reg_rep[4] ;
  wire \reg_index_reg_rep[4]_0 ;
  wire \reg_index_reg_rep[4]_1 ;
  wire \reg_index_reg_rep[4]_10 ;
  wire \reg_index_reg_rep[4]_11 ;
  wire \reg_index_reg_rep[4]_12 ;
  wire \reg_index_reg_rep[4]_13 ;
  wire \reg_index_reg_rep[4]_14 ;
  wire \reg_index_reg_rep[4]_15 ;
  wire \reg_index_reg_rep[4]_16 ;
  wire \reg_index_reg_rep[4]_17 ;
  wire \reg_index_reg_rep[4]_18 ;
  wire \reg_index_reg_rep[4]_19 ;
  wire \reg_index_reg_rep[4]_2 ;
  wire \reg_index_reg_rep[4]_20 ;
  wire \reg_index_reg_rep[4]_21 ;
  wire \reg_index_reg_rep[4]_22 ;
  wire \reg_index_reg_rep[4]_23 ;
  wire \reg_index_reg_rep[4]_24 ;
  wire \reg_index_reg_rep[4]_25 ;
  wire \reg_index_reg_rep[4]_26 ;
  wire \reg_index_reg_rep[4]_27 ;
  wire \reg_index_reg_rep[4]_28 ;
  wire \reg_index_reg_rep[4]_29 ;
  wire \reg_index_reg_rep[4]_3 ;
  wire \reg_index_reg_rep[4]_30 ;
  wire \reg_index_reg_rep[4]_31 ;
  wire \reg_index_reg_rep[4]_4 ;
  wire \reg_index_reg_rep[4]_5 ;
  wire \reg_index_reg_rep[4]_6 ;
  wire \reg_index_reg_rep[4]_7 ;
  wire \reg_index_reg_rep[4]_8 ;
  wire \reg_index_reg_rep[4]_9 ;
  wire \reg_index_reg_rep[5] ;
  wire \reg_index_reg_rep[7] ;
  wire \reg_index_reg_rep[7]_0 ;
  wire \reg_index_reg_rep[7]_1 ;
  wire \reg_index_reg_rep[7]_10 ;
  wire \reg_index_reg_rep[7]_11 ;
  wire \reg_index_reg_rep[7]_12 ;
  wire \reg_index_reg_rep[7]_2 ;
  wire \reg_index_reg_rep[7]_3 ;
  wire \reg_index_reg_rep[7]_4 ;
  wire \reg_index_reg_rep[7]_5 ;
  wire \reg_index_reg_rep[7]_6 ;
  wire \reg_index_reg_rep[7]_7 ;
  wire \reg_index_reg_rep[7]_8 ;
  wire \reg_index_reg_rep[7]_9 ;
  wire \write_data[0]_i_5_n_0 ;
  wire \write_data[0]_i_6_n_0 ;
  wire \write_data[1]_i_5_n_0 ;
  wire \write_data[1]_i_6_n_0 ;
  wire \write_data[2]_i_5_n_0 ;
  wire \write_data[2]_i_6_n_0 ;
  wire \write_data[3]_i_5_n_0 ;
  wire \write_data[3]_i_6_n_0 ;
  wire \write_data[4]_i_5_n_0 ;
  wire \write_data[4]_i_6_n_0 ;
  wire \write_data[5]_i_5_n_0 ;
  wire \write_data[5]_i_6_n_0 ;
  wire \write_data[6]_i_5_n_0 ;
  wire \write_data[6]_i_6_n_0 ;
  wire \write_data[7]_i_5_n_0 ;
  wire \write_data[7]_i_6_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \reg_addr[0]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_30 ));
  LUT6 #(
    .INIT(64'h71631E1E2D811E5B)) 
    \reg_addr[0]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_0 ));
  LUT6 #(
    .INIT(64'h587A623E584FD1A3)) 
    \reg_addr[0]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\reg_addr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF7FFF0000)) 
    \reg_addr[0]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\reg_addr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h115564CC5D74E6EA)) 
    \reg_addr[10]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_11 ));
  LUT6 #(
    .INIT(64'hEA00FFFF80000000)) 
    \reg_addr[10]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[2] ));
  LUT6 #(
    .INIT(64'h020064002200C421)) 
    \reg_addr[10]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_12 ));
  LUT6 #(
    .INIT(64'hDDDC8A2244470000)) 
    \reg_addr[11]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_13 ));
  LUT6 #(
    .INIT(64'h0F108F0FF0F0F0C0)) 
    \reg_addr[11]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[0] ));
  LUT6 #(
    .INIT(64'hFBDFCFDFFFFFFFFF)) 
    \reg_addr[12]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[1]_0 ));
  LUT6 #(
    .INIT(64'h575F575DFFFFFFFF)) 
    \reg_addr[12]_i_3 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[5] ));
  LUT6 #(
    .INIT(64'hCBDFCFDFFFFFFFFF)) 
    \reg_addr[13]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[1]_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_addr[13]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\reg_index_reg_rep[3]_2 ));
  LUT6 #(
    .INIT(64'h55775775EAAAAAAA)) 
    \reg_addr[13]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_22 ));
  LUT6 #(
    .INIT(64'h1C080C0800000000)) 
    \reg_addr[14]_i_2 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg_addr[14]_i_3 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\reg_index_reg_rep[3]_1 ));
  LUT6 #(
    .INIT(64'h0200A88A15555555)) 
    \reg_addr[14]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_21 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \reg_addr[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\reg_index_reg_rep[4]_31 ));
  LUT6 #(
    .INIT(64'h321B7760048A9E55)) 
    \reg_addr[1]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_2 ));
  LUT6 #(
    .INIT(64'hAA4D582D09C65221)) 
    \reg_addr[1]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_addr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h807F7FFF7F008000)) 
    \reg_addr[1]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\reg_addr[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0000FF00FE)) 
    \reg_addr[2]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_7 ));
  LUT6 #(
    .INIT(64'h67131FE8520A8276)) 
    \reg_addr[2]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_26 ));
  LUT6 #(
    .INIT(64'hB32839D415A32822)) 
    \reg_addr[2]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_addr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h07FF7F7F70000000)) 
    \reg_addr[2]_i_6 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\reg_addr[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCC33CC32)) 
    \reg_addr[3]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\reg_index_reg_rep[4]_19 ));
  LUT6 #(
    .INIT(64'h0331C04455154411)) 
    \reg_addr[3]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_8 ));
  LUT6 #(
    .INIT(64'hAA4C80984CA10B14)) 
    \reg_addr[3]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_addr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB44C4CCCC4CCCCCC)) 
    \reg_addr[3]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\reg_addr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF8000857ABD5540A)) 
    \reg_addr[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_29 ));
  LUT6 #(
    .INIT(64'h402A00AA00AA00AA)) 
    \reg_addr[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\reg_index_reg_rep[4]_27 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \reg_addr[4]_i_4 
       (.I0(\reg_addr[4]_i_5_n_0 ),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\reg_index_reg_rep[7]_12 ));
  LUT6 #(
    .INIT(64'h7200042340200402)) 
    \reg_addr[4]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\reg_addr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h200131441110CC40)) 
    \reg_addr[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \reg_addr[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .O(\reg_index_reg_rep[4]_28 ));
  LUT6 #(
    .INIT(64'h010000208008020A)) 
    \reg_addr[5]_i_4 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\reg_index_reg_rep[4]_20 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \reg_addr[7]_i_2 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\reg_index_reg_rep[1]_3 ));
  LUT6 #(
    .INIT(64'h000066320028AA27)) 
    \reg_addr[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\reg_index_reg_rep[4]_23 ));
  LUT6 #(
    .INIT(64'hFFFF00007FFFFFFF)) 
    \reg_addr[8]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[0]_1 ));
  LUT6 #(
    .INIT(64'h006000C015541555)) 
    \reg_addr[8]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_15 ));
  LUT6 #(
    .INIT(64'h3438383003333330)) 
    \reg_addr[9]_i_3 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[0]_0 ));
  LUT6 #(
    .INIT(64'h88118939ECE6CCEA)) 
    \reg_addr[9]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(\reg_addr[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h222A2A2A00000000)) 
    \reg_addr[9]_i_5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\reg_addr[9]_i_5_n_0 ));
  MUXF7 \reg_addr_reg[0]_i_2 
       (.I0(\reg_addr[0]_i_5_n_0 ),
        .I1(\reg_addr[0]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_5 ),
        .S(Q[6]));
  MUXF7 \reg_addr_reg[1]_i_2 
       (.I0(\reg_addr[1]_i_5_n_0 ),
        .I1(\reg_addr[1]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_0 ),
        .S(Q[6]));
  MUXF7 \reg_addr_reg[2]_i_2 
       (.I0(\reg_addr[2]_i_5_n_0 ),
        .I1(\reg_addr[2]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_6 ),
        .S(Q[6]));
  MUXF7 \reg_addr_reg[3]_i_2 
       (.I0(\reg_addr[3]_i_5_n_0 ),
        .I1(\reg_addr[3]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_9 ),
        .S(Q[6]));
  MUXF7 \reg_addr_reg[9]_i_2 
       (.I0(\reg_addr[9]_i_4_n_0 ),
        .I1(\reg_addr[9]_i_5_n_0 ),
        .O(\reg_index_reg_rep[7]_7 ),
        .S(Q[6]));
  LUT6 #(
    .INIT(64'h00011111607B6F08)) 
    \write_data[0]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_17 ));
  LUT6 #(
    .INIT(64'h047B04043008CC0C)) 
    \write_data[0]_i_4 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[1] ));
  LUT6 #(
    .INIT(64'h00211811819810A5)) 
    \write_data[0]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\write_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55151A0490710615)) 
    \write_data[0]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB96860FAD1B30308)) 
    \write_data[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_3 ));
  LUT6 #(
    .INIT(64'h27C838C4460A4A80)) 
    \write_data[1]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_5 ));
  LUT6 #(
    .INIT(64'h8020A3107B17F5D0)) 
    \write_data[1]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h14A462000262CCA3)) 
    \write_data[1]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\write_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD7902FDBCC5CD214)) 
    \write_data[2]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4] ));
  LUT6 #(
    .INIT(64'h32570C0C12000420)) 
    \write_data[2]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_24 ));
  LUT6 #(
    .INIT(64'h8000C00434112040)) 
    \write_data[2]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\write_data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7347801244190C6B)) 
    \write_data[2]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h808C00A8905505C4)) 
    \write_data[3]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\reg_index_reg_rep[4]_4 ));
  LUT6 #(
    .INIT(64'h00080602009D0085)) 
    \write_data[3]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_18 ));
  LUT6 #(
    .INIT(64'h13A460414311240A)) 
    \write_data[3]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h671566006F006335)) 
    \write_data[3]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\write_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001105444)) 
    \write_data[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[3] ));
  LUT6 #(
    .INIT(64'h485015280A401885)) 
    \write_data[4]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\reg_index_reg_rep[4]_25 ));
  LUT6 #(
    .INIT(64'h5A3C601171B5A0C3)) 
    \write_data[4]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4BD24426587E35F1)) 
    \write_data[4]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\write_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7610FE00C401E901)) 
    \write_data[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\reg_index_reg_rep[4]_10 ));
  LUT6 #(
    .INIT(64'h036101401A285821)) 
    \write_data[5]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_1 ));
  LUT6 #(
    .INIT(64'h89B8802904594AC2)) 
    \write_data[5]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2713450004376061)) 
    \write_data[5]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h820000009E000001)) 
    \write_data[6]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_14 ));
  LUT6 #(
    .INIT(64'h0141070000002833)) 
    \write_data[6]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\reg_index_reg_rep[4]_6 ));
  LUT6 #(
    .INIT(64'h0260102948D1CB02)) 
    \write_data[6]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h275F102040626473)) 
    \write_data[6]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\write_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_data[7]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\reg_index_reg_rep[3]_0 ));
  LUT6 #(
    .INIT(64'h0048000013018801)) 
    \write_data[7]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[0]),
        .O(\reg_index_reg_rep[4]_16 ));
  LUT6 #(
    .INIT(64'h1004804024510110)) 
    \write_data[7]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\write_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h144C00706444A621)) 
    \write_data[7]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\write_data[7]_i_6_n_0 ));
  MUXF7 \write_data_reg[0]_i_2 
       (.I0(\write_data[0]_i_5_n_0 ),
        .I1(\write_data[0]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7] ),
        .S(Q[6]));
  MUXF7 \write_data_reg[1]_i_2 
       (.I0(\write_data[1]_i_5_n_0 ),
        .I1(\write_data[1]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_11 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[2]_i_2 
       (.I0(\write_data[2]_i_5_n_0 ),
        .I1(\write_data[2]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_2 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[3]_i_2 
       (.I0(\write_data[3]_i_5_n_0 ),
        .I1(\write_data[3]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_10 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[4]_i_2 
       (.I0(\write_data[4]_i_5_n_0 ),
        .I1(\write_data[4]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_8 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[5]_i_2 
       (.I0(\write_data[5]_i_5_n_0 ),
        .I1(\write_data[5]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_1 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[6]_i_2 
       (.I0(\write_data[6]_i_5_n_0 ),
        .I1(\write_data[6]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_3 ),
        .S(Q[6]));
  MUXF7 \write_data_reg[7]_i_2 
       (.I0(\write_data[7]_i_5_n_0 ),
        .I1(\write_data[7]_i_6_n_0 ),
        .O(\reg_index_reg_rep[7]_4 ),
        .S(Q[6]));
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
