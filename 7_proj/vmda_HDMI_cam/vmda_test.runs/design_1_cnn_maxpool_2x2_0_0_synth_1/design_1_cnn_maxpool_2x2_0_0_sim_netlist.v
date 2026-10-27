// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnn_maxpool_2x2_0_0_sim_netlist.v
// Design      : design_1_cnn_maxpool_2x2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2
   (out_valid,
    out_data,
    out_ch,
    in_valid,
    clk,
    in_ch,
    in_data,
    rst_n);
  output out_valid;
  output [15:0]out_data;
  output [4:0]out_ch;
  input in_valid;
  input clk;
  input [4:0]in_ch;
  input [15:0]in_data;
  input rst_n;

  wire clk;
  wire col_max1;
  wire col_max1_carry__0_i_1_n_0;
  wire col_max1_carry__0_i_2_n_0;
  wire col_max1_carry__0_i_3_n_0;
  wire col_max1_carry__0_i_4_n_0;
  wire col_max1_carry__0_i_5_n_0;
  wire col_max1_carry__0_i_6_n_0;
  wire col_max1_carry__0_i_7_n_0;
  wire col_max1_carry__0_i_8_n_0;
  wire col_max1_carry__0_n_1;
  wire col_max1_carry__0_n_2;
  wire col_max1_carry__0_n_3;
  wire col_max1_carry_i_1_n_0;
  wire col_max1_carry_i_2_n_0;
  wire col_max1_carry_i_3_n_0;
  wire col_max1_carry_i_4_n_0;
  wire col_max1_carry_i_5_n_0;
  wire col_max1_carry_i_6_n_0;
  wire col_max1_carry_i_7_n_0;
  wire col_max1_carry_i_8_n_0;
  wire col_max1_carry_n_0;
  wire col_max1_carry_n_1;
  wire col_max1_carry_n_2;
  wire col_max1_carry_n_3;
  wire [15:0]col_max_s;
  wire [15:0]final_max;
  wire final_max1;
  wire final_max1_carry__0_i_1_n_0;
  wire final_max1_carry__0_i_2_n_0;
  wire final_max1_carry__0_i_3_n_0;
  wire final_max1_carry__0_i_4_n_0;
  wire final_max1_carry__0_i_5_n_0;
  wire final_max1_carry__0_i_6_n_0;
  wire final_max1_carry__0_i_7_n_0;
  wire final_max1_carry__0_i_8_n_0;
  wire final_max1_carry__0_n_1;
  wire final_max1_carry__0_n_2;
  wire final_max1_carry__0_n_3;
  wire final_max1_carry_i_1_n_0;
  wire final_max1_carry_i_2_n_0;
  wire final_max1_carry_i_3_n_0;
  wire final_max1_carry_i_4_n_0;
  wire final_max1_carry_i_5_n_0;
  wire final_max1_carry_i_6_n_0;
  wire final_max1_carry_i_7_n_0;
  wire final_max1_carry_i_8_n_0;
  wire final_max1_carry_n_0;
  wire final_max1_carry_n_1;
  wire final_max1_carry_n_2;
  wire final_max1_carry_n_3;
  wire [4:0]in_ch;
  wire [4:0]in_ch_d1;
  wire [15:0]in_data;
  wire [15:0]in_data_d1;
  wire in_valid;
  wire in_valid_d1;
  wire [4:0]out_ch;
  wire [15:0]out_data;
  wire out_valid;
  wire out_valid0;
  wire out_valid_i_2_n_0;
  wire pixel_we;
  wire [15:0]prev_col_max_s;
  wire [9:3]row_addr0;
  wire row_addr0__0_carry__0_i_1_n_0;
  wire row_addr0__0_carry__0_i_2_n_0;
  wire row_addr0__0_carry__0_i_3_n_0;
  wire row_addr0__0_carry__0_i_4_n_0;
  wire row_addr0__0_carry__0_i_5_n_0;
  wire row_addr0__0_carry__0_n_2;
  wire row_addr0__0_carry__0_n_3;
  wire row_addr0__0_carry_i_1_n_0;
  wire row_addr0__0_carry_i_2_n_0;
  wire row_addr0__0_carry_i_3_n_0;
  wire row_addr0__0_carry_i_4_n_0;
  wire row_addr0__0_carry_i_5_n_0;
  wire row_addr0__0_carry_i_6_n_0;
  wire row_addr0__0_carry_i_7_n_0;
  wire row_addr0__0_carry_n_0;
  wire row_addr0__0_carry_n_1;
  wire row_addr0__0_carry_n_2;
  wire row_addr0__0_carry_n_3;
  wire [9:1]row_addr__0;
  wire row_buf_reg_i_10_n_0;
  wire row_buf_reg_i_2_n_0;
  wire row_buf_reg_i_2_n_1;
  wire row_buf_reg_i_2_n_2;
  wire row_buf_reg_i_2_n_3;
  wire row_buf_reg_i_3_n_0;
  wire row_buf_reg_i_3_n_1;
  wire row_buf_reg_i_3_n_2;
  wire row_buf_reg_i_3_n_3;
  wire row_buf_reg_i_5_n_0;
  wire row_buf_reg_i_6_n_0;
  wire row_buf_reg_i_7_n_0;
  wire row_buf_reg_i_8_n_0;
  wire row_buf_reg_i_9_n_0;
  wire [15:0]row_rdata;
  wire rst_n;
  wire x_cnt;
  wire \x_cnt[0]_i_1_n_0 ;
  wire \x_cnt[1]_i_1_n_0 ;
  wire \x_cnt[2]_i_1_n_0 ;
  wire \x_cnt[3]_i_1_n_0 ;
  wire \x_cnt[4]_i_2_n_0 ;
  wire \x_cnt_d1_reg_n_0_[0] ;
  wire \x_cnt_reg_n_0_[0] ;
  wire \x_cnt_reg_n_0_[1] ;
  wire \x_cnt_reg_n_0_[2] ;
  wire \x_cnt_reg_n_0_[3] ;
  wire \x_cnt_reg_n_0_[4] ;
  wire y_cnt;
  wire \y_cnt[0]_i_2_n_0 ;
  wire \y_cnt[0]_i_3_n_0 ;
  wire \y_cnt_d1_reg_n_0_[0] ;
  wire \y_cnt_reg_n_0_[0] ;
  wire [3:0]NLW_col_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_col_max1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_final_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_final_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_row_addr0__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_row_addr0__0_carry__0_O_UNCONNECTED;
  wire [15:0]NLW_row_buf_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]NLW_row_buf_reg_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_row_buf_reg_i_1_O_UNCONNECTED;
  wire [0:0]NLW_row_buf_reg_i_3_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 col_max1_carry
       (.CI(1'b0),
        .CO({col_max1_carry_n_0,col_max1_carry_n_1,col_max1_carry_n_2,col_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({col_max1_carry_i_1_n_0,col_max1_carry_i_2_n_0,col_max1_carry_i_3_n_0,col_max1_carry_i_4_n_0}),
        .O(NLW_col_max1_carry_O_UNCONNECTED[3:0]),
        .S({col_max1_carry_i_5_n_0,col_max1_carry_i_6_n_0,col_max1_carry_i_7_n_0,col_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 col_max1_carry__0
       (.CI(col_max1_carry_n_0),
        .CO({col_max1,col_max1_carry__0_n_1,col_max1_carry__0_n_2,col_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({col_max1_carry__0_i_1_n_0,col_max1_carry__0_i_2_n_0,col_max1_carry__0_i_3_n_0,col_max1_carry__0_i_4_n_0}),
        .O(NLW_col_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({col_max1_carry__0_i_5_n_0,col_max1_carry__0_i_6_n_0,col_max1_carry__0_i_7_n_0,col_max1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry__0_i_1
       (.I0(in_data_d1[14]),
        .I1(row_rdata[14]),
        .I2(in_data_d1[15]),
        .I3(row_rdata[15]),
        .O(col_max1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry__0_i_2
       (.I0(in_data_d1[12]),
        .I1(row_rdata[12]),
        .I2(row_rdata[13]),
        .I3(in_data_d1[13]),
        .O(col_max1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry__0_i_3
       (.I0(in_data_d1[10]),
        .I1(row_rdata[10]),
        .I2(row_rdata[11]),
        .I3(in_data_d1[11]),
        .O(col_max1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry__0_i_4
       (.I0(in_data_d1[8]),
        .I1(row_rdata[8]),
        .I2(row_rdata[9]),
        .I3(in_data_d1[9]),
        .O(col_max1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry__0_i_5
       (.I0(in_data_d1[14]),
        .I1(row_rdata[14]),
        .I2(row_rdata[15]),
        .I3(in_data_d1[15]),
        .O(col_max1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry__0_i_6
       (.I0(in_data_d1[12]),
        .I1(row_rdata[12]),
        .I2(in_data_d1[13]),
        .I3(row_rdata[13]),
        .O(col_max1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry__0_i_7
       (.I0(in_data_d1[10]),
        .I1(row_rdata[10]),
        .I2(in_data_d1[11]),
        .I3(row_rdata[11]),
        .O(col_max1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry__0_i_8
       (.I0(in_data_d1[8]),
        .I1(row_rdata[8]),
        .I2(in_data_d1[9]),
        .I3(row_rdata[9]),
        .O(col_max1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry_i_1
       (.I0(in_data_d1[6]),
        .I1(row_rdata[6]),
        .I2(row_rdata[7]),
        .I3(in_data_d1[7]),
        .O(col_max1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry_i_2
       (.I0(in_data_d1[4]),
        .I1(row_rdata[4]),
        .I2(row_rdata[5]),
        .I3(in_data_d1[5]),
        .O(col_max1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry_i_3
       (.I0(in_data_d1[2]),
        .I1(row_rdata[2]),
        .I2(row_rdata[3]),
        .I3(in_data_d1[3]),
        .O(col_max1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    col_max1_carry_i_4
       (.I0(in_data_d1[0]),
        .I1(row_rdata[0]),
        .I2(row_rdata[1]),
        .I3(in_data_d1[1]),
        .O(col_max1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry_i_5
       (.I0(in_data_d1[6]),
        .I1(row_rdata[6]),
        .I2(in_data_d1[7]),
        .I3(row_rdata[7]),
        .O(col_max1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry_i_6
       (.I0(in_data_d1[4]),
        .I1(row_rdata[4]),
        .I2(in_data_d1[5]),
        .I3(row_rdata[5]),
        .O(col_max1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry_i_7
       (.I0(in_data_d1[2]),
        .I1(row_rdata[2]),
        .I2(in_data_d1[3]),
        .I3(row_rdata[3]),
        .O(col_max1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    col_max1_carry_i_8
       (.I0(in_data_d1[0]),
        .I1(row_rdata[0]),
        .I2(in_data_d1[1]),
        .I3(row_rdata[1]),
        .O(col_max1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 final_max1_carry
       (.CI(1'b0),
        .CO({final_max1_carry_n_0,final_max1_carry_n_1,final_max1_carry_n_2,final_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({final_max1_carry_i_1_n_0,final_max1_carry_i_2_n_0,final_max1_carry_i_3_n_0,final_max1_carry_i_4_n_0}),
        .O(NLW_final_max1_carry_O_UNCONNECTED[3:0]),
        .S({final_max1_carry_i_5_n_0,final_max1_carry_i_6_n_0,final_max1_carry_i_7_n_0,final_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 final_max1_carry__0
       (.CI(final_max1_carry_n_0),
        .CO({final_max1,final_max1_carry__0_n_1,final_max1_carry__0_n_2,final_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({final_max1_carry__0_i_1_n_0,final_max1_carry__0_i_2_n_0,final_max1_carry__0_i_3_n_0,final_max1_carry__0_i_4_n_0}),
        .O(NLW_final_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({final_max1_carry__0_i_5_n_0,final_max1_carry__0_i_6_n_0,final_max1_carry__0_i_7_n_0,final_max1_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry__0_i_1
       (.I0(col_max1),
        .I1(row_rdata[14]),
        .I2(in_data_d1[14]),
        .I3(prev_col_max_s[14]),
        .I4(col_max_s[15]),
        .I5(prev_col_max_s[15]),
        .O(final_max1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry__0_i_2
       (.I0(col_max1),
        .I1(row_rdata[12]),
        .I2(in_data_d1[12]),
        .I3(prev_col_max_s[12]),
        .I4(prev_col_max_s[13]),
        .I5(col_max_s[13]),
        .O(final_max1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry__0_i_3
       (.I0(col_max1),
        .I1(row_rdata[10]),
        .I2(in_data_d1[10]),
        .I3(prev_col_max_s[10]),
        .I4(prev_col_max_s[11]),
        .I5(col_max_s[11]),
        .O(final_max1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry__0_i_4
       (.I0(col_max1),
        .I1(row_rdata[8]),
        .I2(in_data_d1[8]),
        .I3(prev_col_max_s[8]),
        .I4(prev_col_max_s[9]),
        .I5(col_max_s[9]),
        .O(final_max1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry__0_i_5
       (.I0(in_data_d1[14]),
        .I1(row_rdata[14]),
        .I2(col_max1),
        .I3(prev_col_max_s[14]),
        .I4(prev_col_max_s[15]),
        .I5(col_max_s[15]),
        .O(final_max1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry__0_i_6
       (.I0(in_data_d1[12]),
        .I1(row_rdata[12]),
        .I2(col_max1),
        .I3(prev_col_max_s[12]),
        .I4(col_max_s[13]),
        .I5(prev_col_max_s[13]),
        .O(final_max1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry__0_i_7
       (.I0(in_data_d1[10]),
        .I1(row_rdata[10]),
        .I2(col_max1),
        .I3(prev_col_max_s[10]),
        .I4(col_max_s[11]),
        .I5(prev_col_max_s[11]),
        .O(final_max1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry__0_i_8
       (.I0(in_data_d1[8]),
        .I1(row_rdata[8]),
        .I2(col_max1),
        .I3(prev_col_max_s[8]),
        .I4(col_max_s[9]),
        .I5(prev_col_max_s[9]),
        .O(final_max1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry_i_1
       (.I0(col_max1),
        .I1(row_rdata[6]),
        .I2(in_data_d1[6]),
        .I3(prev_col_max_s[6]),
        .I4(prev_col_max_s[7]),
        .I5(col_max_s[7]),
        .O(final_max1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry_i_2
       (.I0(col_max1),
        .I1(row_rdata[4]),
        .I2(in_data_d1[4]),
        .I3(prev_col_max_s[4]),
        .I4(prev_col_max_s[5]),
        .I5(col_max_s[5]),
        .O(final_max1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry_i_3
       (.I0(col_max1),
        .I1(row_rdata[2]),
        .I2(in_data_d1[2]),
        .I3(prev_col_max_s[2]),
        .I4(prev_col_max_s[3]),
        .I5(col_max_s[3]),
        .O(final_max1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    final_max1_carry_i_4
       (.I0(col_max1),
        .I1(row_rdata[0]),
        .I2(in_data_d1[0]),
        .I3(prev_col_max_s[0]),
        .I4(prev_col_max_s[1]),
        .I5(col_max_s[1]),
        .O(final_max1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry_i_5
       (.I0(in_data_d1[6]),
        .I1(row_rdata[6]),
        .I2(col_max1),
        .I3(prev_col_max_s[6]),
        .I4(col_max_s[7]),
        .I5(prev_col_max_s[7]),
        .O(final_max1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry_i_6
       (.I0(in_data_d1[4]),
        .I1(row_rdata[4]),
        .I2(col_max1),
        .I3(prev_col_max_s[4]),
        .I4(col_max_s[5]),
        .I5(prev_col_max_s[5]),
        .O(final_max1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry_i_7
       (.I0(in_data_d1[2]),
        .I1(row_rdata[2]),
        .I2(col_max1),
        .I3(prev_col_max_s[2]),
        .I4(col_max_s[3]),
        .I5(prev_col_max_s[3]),
        .O(final_max1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    final_max1_carry_i_8
       (.I0(in_data_d1[0]),
        .I1(row_rdata[0]),
        .I2(col_max1),
        .I3(prev_col_max_s[0]),
        .I4(col_max_s[1]),
        .I5(prev_col_max_s[1]),
        .O(final_max1_carry_i_8_n_0));
  FDCE \in_ch_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch[0]),
        .Q(in_ch_d1[0]));
  FDCE \in_ch_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch[1]),
        .Q(in_ch_d1[1]));
  FDCE \in_ch_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch[2]),
        .Q(in_ch_d1[2]));
  FDCE \in_ch_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch[3]),
        .Q(in_ch_d1[3]));
  FDCE \in_ch_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch[4]),
        .Q(in_ch_d1[4]));
  FDCE \in_data_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[0]),
        .Q(in_data_d1[0]));
  FDCE \in_data_d1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[10]),
        .Q(in_data_d1[10]));
  FDCE \in_data_d1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[11]),
        .Q(in_data_d1[11]));
  FDCE \in_data_d1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[12]),
        .Q(in_data_d1[12]));
  FDCE \in_data_d1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[13]),
        .Q(in_data_d1[13]));
  FDCE \in_data_d1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[14]),
        .Q(in_data_d1[14]));
  FDCE \in_data_d1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[15]),
        .Q(in_data_d1[15]));
  FDCE \in_data_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[1]),
        .Q(in_data_d1[1]));
  FDCE \in_data_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[2]),
        .Q(in_data_d1[2]));
  FDCE \in_data_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[3]),
        .Q(in_data_d1[3]));
  FDCE \in_data_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[4]),
        .Q(in_data_d1[4]));
  FDCE \in_data_d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[5]),
        .Q(in_data_d1[5]));
  FDCE \in_data_d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[6]),
        .Q(in_data_d1[6]));
  FDCE \in_data_d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[7]),
        .Q(in_data_d1[7]));
  FDCE \in_data_d1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[8]),
        .Q(in_data_d1[8]));
  FDCE \in_data_d1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_data[9]),
        .Q(in_data_d1[9]));
  FDCE in_valid_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(in_valid),
        .Q(in_valid_d1));
  FDCE \out_ch_reg[0] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch_d1[0]),
        .Q(out_ch[0]));
  FDCE \out_ch_reg[1] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch_d1[1]),
        .Q(out_ch[1]));
  FDCE \out_ch_reg[2] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch_d1[2]),
        .Q(out_ch[2]));
  FDCE \out_ch_reg[3] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch_d1[3]),
        .Q(out_ch[3]));
  FDCE \out_ch_reg[4] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(in_ch_d1[4]),
        .Q(out_ch[4]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[0]_i_1 
       (.I0(in_data_d1[0]),
        .I1(row_rdata[0]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[0]),
        .O(final_max[0]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[10]_i_1 
       (.I0(in_data_d1[10]),
        .I1(row_rdata[10]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[10]),
        .O(final_max[10]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[11]_i_1 
       (.I0(in_data_d1[11]),
        .I1(row_rdata[11]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[11]),
        .O(final_max[11]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[12]_i_1 
       (.I0(in_data_d1[12]),
        .I1(row_rdata[12]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[12]),
        .O(final_max[12]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[13]_i_1 
       (.I0(in_data_d1[13]),
        .I1(row_rdata[13]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[13]),
        .O(final_max[13]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[14]_i_1 
       (.I0(in_data_d1[14]),
        .I1(row_rdata[14]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[14]),
        .O(final_max[14]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[15]_i_1 
       (.I0(in_data_d1[15]),
        .I1(row_rdata[15]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[15]),
        .O(final_max[15]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[1]_i_1 
       (.I0(in_data_d1[1]),
        .I1(row_rdata[1]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[1]),
        .O(final_max[1]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[2]_i_1 
       (.I0(in_data_d1[2]),
        .I1(row_rdata[2]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[2]),
        .O(final_max[2]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[3]_i_1 
       (.I0(in_data_d1[3]),
        .I1(row_rdata[3]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[3]),
        .O(final_max[3]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[4]_i_1 
       (.I0(in_data_d1[4]),
        .I1(row_rdata[4]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[4]),
        .O(final_max[4]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[5]_i_1 
       (.I0(in_data_d1[5]),
        .I1(row_rdata[5]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[5]),
        .O(final_max[5]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[6]_i_1 
       (.I0(in_data_d1[6]),
        .I1(row_rdata[6]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[6]),
        .O(final_max[6]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[7]_i_1 
       (.I0(in_data_d1[7]),
        .I1(row_rdata[7]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[7]),
        .O(final_max[7]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[8]_i_1 
       (.I0(in_data_d1[8]),
        .I1(row_rdata[8]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[8]),
        .O(final_max[8]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \out_data[9]_i_1 
       (.I0(in_data_d1[9]),
        .I1(row_rdata[9]),
        .I2(col_max1),
        .I3(final_max1),
        .I4(prev_col_max_s[9]),
        .O(final_max[9]));
  FDCE \out_data_reg[0] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[0]),
        .Q(out_data[0]));
  FDCE \out_data_reg[10] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[10]),
        .Q(out_data[10]));
  FDCE \out_data_reg[11] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[11]),
        .Q(out_data[11]));
  FDCE \out_data_reg[12] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[12]),
        .Q(out_data[12]));
  FDCE \out_data_reg[13] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[13]),
        .Q(out_data[13]));
  FDCE \out_data_reg[14] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[14]),
        .Q(out_data[14]));
  FDCE \out_data_reg[15] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[15]),
        .Q(out_data[15]));
  FDCE \out_data_reg[1] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[1]),
        .Q(out_data[1]));
  FDCE \out_data_reg[2] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[2]),
        .Q(out_data[2]));
  FDCE \out_data_reg[3] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[3]),
        .Q(out_data[3]));
  FDCE \out_data_reg[4] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[4]),
        .Q(out_data[4]));
  FDCE \out_data_reg[5] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[5]),
        .Q(out_data[5]));
  FDCE \out_data_reg[6] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[6]),
        .Q(out_data[6]));
  FDCE \out_data_reg[7] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[7]),
        .Q(out_data[7]));
  FDCE \out_data_reg[8] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[8]),
        .Q(out_data[8]));
  FDCE \out_data_reg[9] 
       (.C(clk),
        .CE(out_valid0),
        .CLR(out_valid_i_2_n_0),
        .D(final_max[9]),
        .Q(out_data[9]));
  LUT3 #(
    .INIT(8'h80)) 
    out_valid_i_1
       (.I0(\y_cnt_d1_reg_n_0_[0] ),
        .I1(in_valid_d1),
        .I2(\x_cnt_d1_reg_n_0_[0] ),
        .O(out_valid0));
  LUT1 #(
    .INIT(2'h1)) 
    out_valid_i_2
       (.I0(rst_n),
        .O(out_valid_i_2_n_0));
  FDCE out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(out_valid0),
        .Q(out_valid));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S pixel_buf_reg_0_31_0_0
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[0]),
        .O(prev_col_max_s[0]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_0_0_i_1
       (.I0(in_data_d1[0]),
        .I1(row_rdata[0]),
        .I2(col_max1),
        .O(col_max_s[0]));
  LUT3 #(
    .INIT(8'h08)) 
    pixel_buf_reg_0_31_0_0_i_2
       (.I0(\y_cnt_d1_reg_n_0_[0] ),
        .I1(in_valid_d1),
        .I2(\x_cnt_d1_reg_n_0_[0] ),
        .O(pixel_we));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1S pixel_buf_reg_0_31_10_10
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[10]),
        .O(prev_col_max_s[10]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_10_10_i_1
       (.I0(in_data_d1[10]),
        .I1(row_rdata[10]),
        .I2(col_max1),
        .O(col_max_s[10]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1S pixel_buf_reg_0_31_11_11
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[11]),
        .O(prev_col_max_s[11]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_11_11_i_1
       (.I0(in_data_d1[11]),
        .I1(row_rdata[11]),
        .I2(col_max1),
        .O(col_max_s[11]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1S pixel_buf_reg_0_31_12_12
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[12]),
        .O(prev_col_max_s[12]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_12_12_i_1
       (.I0(in_data_d1[12]),
        .I1(row_rdata[12]),
        .I2(col_max1),
        .O(col_max_s[12]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1S pixel_buf_reg_0_31_13_13
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[13]),
        .O(prev_col_max_s[13]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_13_13_i_1
       (.I0(in_data_d1[13]),
        .I1(row_rdata[13]),
        .I2(col_max1),
        .O(col_max_s[13]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1S pixel_buf_reg_0_31_14_14
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[14]),
        .O(prev_col_max_s[14]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_14_14_i_1
       (.I0(in_data_d1[14]),
        .I1(row_rdata[14]),
        .I2(col_max1),
        .O(col_max_s[14]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1S pixel_buf_reg_0_31_15_15
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[15]),
        .O(prev_col_max_s[15]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_15_15_i_1
       (.I0(in_data_d1[15]),
        .I1(row_rdata[15]),
        .I2(col_max1),
        .O(col_max_s[15]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S pixel_buf_reg_0_31_1_1
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[1]),
        .O(prev_col_max_s[1]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_1_1_i_1
       (.I0(in_data_d1[1]),
        .I1(row_rdata[1]),
        .I2(col_max1),
        .O(col_max_s[1]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S pixel_buf_reg_0_31_2_2
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[2]),
        .O(prev_col_max_s[2]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_2_2_i_1
       (.I0(in_data_d1[2]),
        .I1(row_rdata[2]),
        .I2(col_max1),
        .O(col_max_s[2]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S pixel_buf_reg_0_31_3_3
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[3]),
        .O(prev_col_max_s[3]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_3_3_i_1
       (.I0(in_data_d1[3]),
        .I1(row_rdata[3]),
        .I2(col_max1),
        .O(col_max_s[3]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S pixel_buf_reg_0_31_4_4
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[4]),
        .O(prev_col_max_s[4]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_4_4_i_1
       (.I0(in_data_d1[4]),
        .I1(row_rdata[4]),
        .I2(col_max1),
        .O(col_max_s[4]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S pixel_buf_reg_0_31_5_5
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[5]),
        .O(prev_col_max_s[5]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_5_5_i_1
       (.I0(in_data_d1[5]),
        .I1(row_rdata[5]),
        .I2(col_max1),
        .O(col_max_s[5]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S pixel_buf_reg_0_31_6_6
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[6]),
        .O(prev_col_max_s[6]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_6_6_i_1
       (.I0(in_data_d1[6]),
        .I1(row_rdata[6]),
        .I2(col_max1),
        .O(col_max_s[6]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S pixel_buf_reg_0_31_7_7
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[7]),
        .O(prev_col_max_s[7]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_7_7_i_1
       (.I0(in_data_d1[7]),
        .I1(row_rdata[7]),
        .I2(col_max1),
        .O(col_max_s[7]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S pixel_buf_reg_0_31_8_8
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[8]),
        .O(prev_col_max_s[8]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_8_8_i_1
       (.I0(in_data_d1[8]),
        .I1(row_rdata[8]),
        .I2(col_max1),
        .O(col_max_s[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/pixel_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1S pixel_buf_reg_0_31_9_9
       (.A0(in_ch_d1[0]),
        .A1(in_ch_d1[1]),
        .A2(in_ch_d1[2]),
        .A3(in_ch_d1[3]),
        .A4(in_ch_d1[4]),
        .D(col_max_s[9]),
        .O(prev_col_max_s[9]),
        .WCLK(clk),
        .WE(pixel_we));
  LUT3 #(
    .INIT(8'hAC)) 
    pixel_buf_reg_0_31_9_9_i_1
       (.I0(in_data_d1[9]),
        .I1(row_rdata[9]),
        .I2(col_max1),
        .O(col_max_s[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_addr0__0_carry
       (.CI(1'b0),
        .CO({row_addr0__0_carry_n_0,row_addr0__0_carry_n_1,row_addr0__0_carry_n_2,row_addr0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({row_addr0__0_carry_i_1_n_0,row_addr0__0_carry_i_2_n_0,row_addr0__0_carry_i_3_n_0,1'b0}),
        .O(row_addr0[6:3]),
        .S({row_addr0__0_carry_i_4_n_0,row_addr0__0_carry_i_5_n_0,row_addr0__0_carry_i_6_n_0,row_addr0__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_addr0__0_carry__0
       (.CI(row_addr0__0_carry_n_0),
        .CO({NLW_row_addr0__0_carry__0_CO_UNCONNECTED[3:2],row_addr0__0_carry__0_n_2,row_addr0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,row_addr0__0_carry__0_i_1_n_0,row_addr0__0_carry__0_i_2_n_0}),
        .O({NLW_row_addr0__0_carry__0_O_UNCONNECTED[3],row_addr0[9:7]}),
        .S({1'b0,row_addr0__0_carry__0_i_3_n_0,row_addr0__0_carry__0_i_4_n_0,row_addr0__0_carry__0_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    row_addr0__0_carry__0_i_1
       (.I0(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h54FF00AA)) 
    row_addr0__0_carry__0_i_2
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[2] ),
        .I2(\x_cnt_reg_n_0_[0] ),
        .I3(\x_cnt_reg_n_0_[3] ),
        .I4(\x_cnt_reg_n_0_[1] ),
        .O(row_addr0__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    row_addr0__0_carry__0_i_3
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA5D)) 
    row_addr0__0_carry__0_i_4
       (.I0(\x_cnt_reg_n_0_[2] ),
        .I1(\x_cnt_reg_n_0_[4] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h3D33FC33)) 
    row_addr0__0_carry__0_i_5
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(\x_cnt_reg_n_0_[2] ),
        .I2(\x_cnt_reg_n_0_[4] ),
        .I3(\x_cnt_reg_n_0_[1] ),
        .I4(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h9AFF0066)) 
    row_addr0__0_carry_i_1
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[2] ),
        .I4(\x_cnt_reg_n_0_[0] ),
        .O(row_addr0__0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h65A69A99)) 
    row_addr0__0_carry_i_2
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[2] ),
        .I4(\x_cnt_reg_n_0_[0] ),
        .O(row_addr0__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    row_addr0__0_carry_i_3
       (.I0(\x_cnt_reg_n_0_[2] ),
        .I1(\x_cnt_reg_n_0_[0] ),
        .O(row_addr0__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h585975E5)) 
    row_addr0__0_carry_i_4
       (.I0(\x_cnt_reg_n_0_[1] ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .I2(\x_cnt_reg_n_0_[0] ),
        .I3(\x_cnt_reg_n_0_[2] ),
        .I4(\x_cnt_reg_n_0_[4] ),
        .O(row_addr0__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h66C99999)) 
    row_addr0__0_carry_i_5
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(\x_cnt_reg_n_0_[4] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[2] ),
        .I4(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    row_addr0__0_carry_i_6
       (.I0(\x_cnt_reg_n_0_[2] ),
        .I1(\x_cnt_reg_n_0_[0] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[3] ),
        .O(row_addr0__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    row_addr0__0_carry_i_7
       (.I0(\x_cnt_reg_n_0_[1] ),
        .I1(\x_cnt_reg_n_0_[0] ),
        .I2(\x_cnt_reg_n_0_[2] ),
        .O(row_addr0__0_carry_i_7_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "inst/row_buf" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    row_buf_reg
       (.ADDRARDADDR({row_addr__0,in_ch[0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI(in_data),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(row_rdata),
        .DOBDO(NLW_row_buf_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_row_buf_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_row_buf_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({row_buf_reg_i_5_n_0,row_buf_reg_i_5_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_i_1
       (.CI(row_buf_reg_i_2_n_0),
        .CO(NLW_row_buf_reg_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_row_buf_reg_i_1_O_UNCONNECTED[3:1],row_addr__0[9]}),
        .S({1'b0,1'b0,1'b0,row_addr0[9]}));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_i_10
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(in_ch[1]),
        .O(row_buf_reg_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_i_2
       (.CI(row_buf_reg_i_3_n_0),
        .CO({row_buf_reg_i_2_n_0,row_buf_reg_i_2_n_1,row_buf_reg_i_2_n_2,row_buf_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_addr__0[8:5]),
        .S(row_addr0[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_i_3
       (.CI(1'b0),
        .CO({row_buf_reg_i_3_n_0,row_buf_reg_i_3_n_1,row_buf_reg_i_3_n_2,row_buf_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({row_addr0[4:3],row_buf_reg_i_6_n_0,\x_cnt_reg_n_0_[0] }),
        .O({row_addr__0[4:2],NLW_row_buf_reg_i_3_O_UNCONNECTED[0]}),
        .S({row_buf_reg_i_7_n_0,row_buf_reg_i_8_n_0,row_buf_reg_i_9_n_0,row_buf_reg_i_10_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_i_4
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(in_ch[1]),
        .O(row_addr__0[1]));
  LUT2 #(
    .INIT(4'h2)) 
    row_buf_reg_i_5
       (.I0(in_valid),
        .I1(\y_cnt_reg_n_0_[0] ),
        .O(row_buf_reg_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_i_6
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(\x_cnt_reg_n_0_[1] ),
        .O(row_buf_reg_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_i_7
       (.I0(row_addr0[4]),
        .I1(in_ch[4]),
        .O(row_buf_reg_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_i_8
       (.I0(row_addr0[3]),
        .I1(in_ch[3]),
        .O(row_buf_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    row_buf_reg_i_9
       (.I0(\x_cnt_reg_n_0_[1] ),
        .I1(\x_cnt_reg_n_0_[0] ),
        .I2(in_ch[2]),
        .O(row_buf_reg_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[0]_i_1 
       (.I0(\x_cnt_reg_n_0_[0] ),
        .O(\x_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_cnt[1]_i_1 
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(\x_cnt_reg_n_0_[1] ),
        .O(\x_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x_cnt[2]_i_1 
       (.I0(\x_cnt_reg_n_0_[2] ),
        .I1(\x_cnt_reg_n_0_[0] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .O(\x_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1CCCCCCC)) 
    \x_cnt[3]_i_1 
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .I2(\x_cnt_reg_n_0_[0] ),
        .I3(\x_cnt_reg_n_0_[1] ),
        .I4(\x_cnt_reg_n_0_[2] ),
        .O(\x_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \x_cnt[4]_i_1 
       (.I0(in_ch[1]),
        .I1(in_ch[0]),
        .I2(in_ch[3]),
        .I3(in_ch[2]),
        .I4(in_ch[4]),
        .I5(in_valid),
        .O(x_cnt));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \x_cnt[4]_i_2 
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(\x_cnt_reg_n_0_[2] ),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[0] ),
        .I4(\x_cnt_reg_n_0_[3] ),
        .O(\x_cnt[4]_i_2_n_0 ));
  FDCE \x_cnt_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt_reg_n_0_[0] ),
        .Q(\x_cnt_d1_reg_n_0_[0] ));
  FDCE \x_cnt_reg[0] 
       (.C(clk),
        .CE(x_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt[0]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[0] ));
  FDCE \x_cnt_reg[1] 
       (.C(clk),
        .CE(x_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt[1]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[1] ));
  FDCE \x_cnt_reg[2] 
       (.C(clk),
        .CE(x_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt[2]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[2] ));
  FDCE \x_cnt_reg[3] 
       (.C(clk),
        .CE(x_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt[3]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[3] ));
  FDCE \x_cnt_reg[4] 
       (.C(clk),
        .CE(x_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\x_cnt[4]_i_2_n_0 ),
        .Q(\x_cnt_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \y_cnt[0]_i_1 
       (.I0(\x_cnt_reg_n_0_[4] ),
        .I1(in_ch[1]),
        .I2(\y_cnt[0]_i_3_n_0 ),
        .I3(in_ch[4]),
        .I4(\x_cnt_reg_n_0_[3] ),
        .I5(in_valid),
        .O(y_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \y_cnt[0]_i_2 
       (.I0(\y_cnt_reg_n_0_[0] ),
        .O(\y_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \y_cnt[0]_i_3 
       (.I0(\x_cnt_reg_n_0_[0] ),
        .I1(in_ch[0]),
        .I2(in_ch[3]),
        .I3(in_ch[2]),
        .I4(\x_cnt_reg_n_0_[1] ),
        .I5(\x_cnt_reg_n_0_[2] ),
        .O(\y_cnt[0]_i_3_n_0 ));
  FDCE \y_cnt_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(out_valid_i_2_n_0),
        .D(\y_cnt_reg_n_0_[0] ),
        .Q(\y_cnt_d1_reg_n_0_[0] ));
  FDCE \y_cnt_reg[0] 
       (.C(clk),
        .CE(y_cnt),
        .CLR(out_valid_i_2_n_0),
        .D(\y_cnt[0]_i_2_n_0 ),
        .Q(\y_cnt_reg_n_0_[0] ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cnn_maxpool_2x2_0_0,cnn_maxpool_2x2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cnn_maxpool_2x2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    in_valid,
    in_data,
    in_ch,
    out_valid,
    out_data,
    out_ch);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input in_valid;
  input [15:0]in_data;
  input [4:0]in_ch;
  output out_valid;
  output [15:0]out_data;
  output [4:0]out_ch;

  wire clk;
  wire [4:0]in_ch;
  wire [15:0]in_data;
  wire in_valid;
  wire [4:0]out_ch;
  wire [15:0]out_data;
  wire out_valid;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2 inst
       (.clk(clk),
        .in_ch(in_ch),
        .in_data(in_data),
        .in_valid(in_valid),
        .out_ch(out_ch),
        .out_data(out_data),
        .out_valid(out_valid),
        .rst_n(rst_n));
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
