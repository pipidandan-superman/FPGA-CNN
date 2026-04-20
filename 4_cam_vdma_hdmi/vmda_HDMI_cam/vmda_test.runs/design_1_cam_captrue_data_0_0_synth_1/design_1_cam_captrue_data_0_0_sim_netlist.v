// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 19 18:27:28 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cam_captrue_data_0_0_sim_netlist.v
// Design      : design_1_cam_captrue_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* WAIT_FRAME = "10" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data
   (i_xclk,
    rst_n,
    cam_pclk,
    cam_href,
    cam_vsync,
    cam_data,
    cam_xclk,
    vid_clk,
    vid_ce,
    vid_vsync,
    vid_active_video,
    vid_data);
  input i_xclk;
  input rst_n;
  input cam_pclk;
  (* mark_debug = "true" *) input cam_href;
  (* mark_debug = "true" *) input cam_vsync;
  (* mark_debug = "true" *) input [7:0]cam_data;
  (* mark_debug = "true" *) output cam_xclk;
  output vid_clk;
  (* mark_debug = "true" *) output vid_ce;
  (* mark_debug = "true" *) output vid_vsync;
  (* mark_debug = "true" *) output vid_active_video;
  (* mark_debug = "true" *) output [23:0]vid_data;

  (* MARK_DEBUG *) wire [7:0]cam_data;
  wire [7:0]cam_data_d0;
  wire \cam_data_d0[0]_i_1_n_0 ;
  wire \cam_data_d0[1]_i_1_n_0 ;
  wire \cam_data_d0[2]_i_1_n_0 ;
  wire \cam_data_d0[3]_i_1_n_0 ;
  wire \cam_data_d0[4]_i_1_n_0 ;
  wire \cam_data_d0[5]_i_1_n_0 ;
  wire \cam_data_d0[6]_i_1_n_0 ;
  wire \cam_data_d0[7]_i_1_n_0 ;
  (* MARK_DEBUG *) wire cam_href;
  wire cam_href_d0;
  wire cam_href_d0_i_1_n_0;
  wire cam_href_d1;
  wire cam_pclk;
  (* MARK_DEBUG *) wire cam_vsync;
  wire cam_vsync_d0;
  wire cam_vsync_d1;
  (* MARK_DEBUG *) wire cam_xclk;
  wire data_flag;
  wire data_flag_d0;
  wire data_flag_reg_n_0;
  wire [3:0]frame_cnt;
  wire \frame_cnt[0]_i_1_n_0 ;
  wire \frame_cnt[1]_i_1_n_0 ;
  wire \frame_cnt[2]_i_1_n_0 ;
  wire \frame_cnt[3]_i_2_n_0 ;
  wire pos_vsync;
  wire rgb565_data;
  wire \rgb565_data_reg_n_0_[0] ;
  wire \rgb565_data_reg_n_0_[10] ;
  wire \rgb565_data_reg_n_0_[11] ;
  wire \rgb565_data_reg_n_0_[12] ;
  wire \rgb565_data_reg_n_0_[13] ;
  wire \rgb565_data_reg_n_0_[14] ;
  wire \rgb565_data_reg_n_0_[15] ;
  wire \rgb565_data_reg_n_0_[1] ;
  wire \rgb565_data_reg_n_0_[2] ;
  wire \rgb565_data_reg_n_0_[3] ;
  wire \rgb565_data_reg_n_0_[4] ;
  wire \rgb565_data_reg_n_0_[5] ;
  wire \rgb565_data_reg_n_0_[6] ;
  wire \rgb565_data_reg_n_0_[7] ;
  wire \rgb565_data_reg_n_0_[8] ;
  wire \rgb565_data_reg_n_0_[9] ;
  wire rst_n;
  wire rst_n_d0;
  wire rst_n_d0_i_1_n_0;
  wire rst_n_sync;
  (* MARK_DEBUG *) wire vid_active_video;
  (* MARK_DEBUG *) wire vid_ce;
  (* MARK_DEBUG *) wire [23:0]vid_data;
  (* MARK_DEBUG *) wire vid_vsync;
  wire wait_done;
  wire wait_done_i_1_n_0;

  assign cam_xclk = i_xclk;
  assign vid_clk = cam_pclk;
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[0]_i_1 
       (.I0(cam_href),
        .I1(cam_data[0]),
        .O(\cam_data_d0[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[1]_i_1 
       (.I0(cam_href),
        .I1(cam_data[1]),
        .O(\cam_data_d0[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[2]_i_1 
       (.I0(cam_href),
        .I1(cam_data[2]),
        .O(\cam_data_d0[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[3]_i_1 
       (.I0(cam_href),
        .I1(cam_data[3]),
        .O(\cam_data_d0[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[4]_i_1 
       (.I0(cam_href),
        .I1(cam_data[4]),
        .O(\cam_data_d0[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[5]_i_1 
       (.I0(cam_href),
        .I1(cam_data[5]),
        .O(\cam_data_d0[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[6]_i_1 
       (.I0(cam_href),
        .I1(cam_data[6]),
        .O(\cam_data_d0[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cam_data_d0[7]_i_1 
       (.I0(cam_href),
        .I1(cam_data[7]),
        .O(\cam_data_d0[7]_i_1_n_0 ));
  FDCE \cam_data_d0_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[0]_i_1_n_0 ),
        .Q(cam_data_d0[0]));
  FDCE \cam_data_d0_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[1]_i_1_n_0 ),
        .Q(cam_data_d0[1]));
  FDCE \cam_data_d0_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[2]_i_1_n_0 ),
        .Q(cam_data_d0[2]));
  FDCE \cam_data_d0_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[3]_i_1_n_0 ),
        .Q(cam_data_d0[3]));
  FDCE \cam_data_d0_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[4]_i_1_n_0 ),
        .Q(cam_data_d0[4]));
  FDCE \cam_data_d0_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[5]_i_1_n_0 ),
        .Q(cam_data_d0[5]));
  FDCE \cam_data_d0_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[6]_i_1_n_0 ),
        .Q(cam_data_d0[6]));
  FDCE \cam_data_d0_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\cam_data_d0[7]_i_1_n_0 ),
        .Q(cam_data_d0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    cam_href_d0_i_1
       (.I0(rst_n_sync),
        .O(cam_href_d0_i_1_n_0));
  FDCE cam_href_d0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_href),
        .Q(cam_href_d0));
  FDCE cam_href_d1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_href_d0),
        .Q(cam_href_d1));
  FDCE cam_vsync_d0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_vsync),
        .Q(cam_vsync_d0));
  FDCE cam_vsync_d1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_vsync_d0),
        .Q(cam_vsync_d1));
  FDCE data_flag_d0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(data_flag_reg_n_0),
        .Q(data_flag_d0));
  LUT2 #(
    .INIT(4'h2)) 
    data_flag_i_1
       (.I0(cam_href),
        .I1(data_flag_reg_n_0),
        .O(data_flag));
  FDCE data_flag_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(data_flag),
        .Q(data_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h02FF)) 
    \frame_cnt[0]_i_1 
       (.I0(frame_cnt[3]),
        .I1(frame_cnt[2]),
        .I2(frame_cnt[1]),
        .I3(frame_cnt[0]),
        .O(\frame_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \frame_cnt[1]_i_1 
       (.I0(frame_cnt[2]),
        .I1(frame_cnt[1]),
        .I2(frame_cnt[0]),
        .I3(frame_cnt[3]),
        .O(\frame_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \frame_cnt[2]_i_1 
       (.I0(frame_cnt[2]),
        .I1(frame_cnt[1]),
        .I2(frame_cnt[0]),
        .O(\frame_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \frame_cnt[3]_i_1 
       (.I0(cam_vsync_d1),
        .I1(cam_vsync_d0),
        .O(pos_vsync));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \frame_cnt[3]_i_2 
       (.I0(frame_cnt[3]),
        .I1(frame_cnt[0]),
        .I2(frame_cnt[2]),
        .I3(frame_cnt[1]),
        .O(\frame_cnt[3]_i_2_n_0 ));
  FDCE \frame_cnt_reg[0] 
       (.C(cam_pclk),
        .CE(pos_vsync),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\frame_cnt[0]_i_1_n_0 ),
        .Q(frame_cnt[0]));
  FDCE \frame_cnt_reg[1] 
       (.C(cam_pclk),
        .CE(pos_vsync),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\frame_cnt[1]_i_1_n_0 ),
        .Q(frame_cnt[1]));
  FDCE \frame_cnt_reg[2] 
       (.C(cam_pclk),
        .CE(pos_vsync),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\frame_cnt[2]_i_1_n_0 ),
        .Q(frame_cnt[2]));
  FDCE \frame_cnt_reg[3] 
       (.C(cam_pclk),
        .CE(pos_vsync),
        .CLR(cam_href_d0_i_1_n_0),
        .D(\frame_cnt[3]_i_2_n_0 ),
        .Q(frame_cnt[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(vid_data[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(vid_data[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(vid_data[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(vid_data[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(vid_data[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(vid_data[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(vid_data[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(vid_data[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \rgb565_data[15]_i_1 
       (.I0(cam_href),
        .I1(data_flag_reg_n_0),
        .O(rgb565_data));
  FDCE \rgb565_data_reg[0] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[0]),
        .Q(\rgb565_data_reg_n_0_[0] ));
  FDCE \rgb565_data_reg[10] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[2]),
        .Q(\rgb565_data_reg_n_0_[10] ));
  FDCE \rgb565_data_reg[11] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[3]),
        .Q(\rgb565_data_reg_n_0_[11] ));
  FDCE \rgb565_data_reg[12] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[4]),
        .Q(\rgb565_data_reg_n_0_[12] ));
  FDCE \rgb565_data_reg[13] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[5]),
        .Q(\rgb565_data_reg_n_0_[13] ));
  FDCE \rgb565_data_reg[14] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[6]),
        .Q(\rgb565_data_reg_n_0_[14] ));
  FDCE \rgb565_data_reg[15] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[7]),
        .Q(\rgb565_data_reg_n_0_[15] ));
  FDCE \rgb565_data_reg[1] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[1]),
        .Q(\rgb565_data_reg_n_0_[1] ));
  FDCE \rgb565_data_reg[2] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[2]),
        .Q(\rgb565_data_reg_n_0_[2] ));
  FDCE \rgb565_data_reg[3] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[3]),
        .Q(\rgb565_data_reg_n_0_[3] ));
  FDCE \rgb565_data_reg[4] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[4]),
        .Q(\rgb565_data_reg_n_0_[4] ));
  FDCE \rgb565_data_reg[5] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[5]),
        .Q(\rgb565_data_reg_n_0_[5] ));
  FDCE \rgb565_data_reg[6] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[6]),
        .Q(\rgb565_data_reg_n_0_[6] ));
  FDCE \rgb565_data_reg[7] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data[7]),
        .Q(\rgb565_data_reg_n_0_[7] ));
  FDCE \rgb565_data_reg[8] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[0]),
        .Q(\rgb565_data_reg_n_0_[8] ));
  FDCE \rgb565_data_reg[9] 
       (.C(cam_pclk),
        .CE(rgb565_data),
        .CLR(cam_href_d0_i_1_n_0),
        .D(cam_data_d0[1]),
        .Q(\rgb565_data_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    rst_n_d0_i_1
       (.I0(rst_n),
        .O(rst_n_d0_i_1_n_0));
  FDCE rst_n_d0_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(rst_n_d0_i_1_n_0),
        .D(1'b1),
        .Q(rst_n_d0));
  FDCE rst_n_sync_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(rst_n_d0_i_1_n_0),
        .D(rst_n_d0),
        .Q(rst_n_sync));
  LUT2 #(
    .INIT(4'h8)) 
    vid_active_video_inferred_i_1
       (.I0(wait_done),
        .I1(cam_href_d1),
        .O(vid_active_video));
  LUT3 #(
    .INIT(8'hA2)) 
    vid_ce_inferred_i_1
       (.I0(wait_done),
        .I1(vid_active_video),
        .I2(data_flag_d0),
        .O(vid_ce));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_1
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[15] ),
        .O(vid_data[23]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_10
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[6] ),
        .O(vid_data[11]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_11
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[5] ),
        .O(vid_data[10]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_12
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[4] ),
        .O(vid_data[7]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_13
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[3] ),
        .O(vid_data[6]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_14
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[2] ),
        .O(vid_data[5]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_15
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[1] ),
        .O(vid_data[4]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_16
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[0] ),
        .O(vid_data[3]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_2
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[14] ),
        .O(vid_data[22]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_3
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[13] ),
        .O(vid_data[21]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_4
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[12] ),
        .O(vid_data[20]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_5
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[11] ),
        .O(vid_data[19]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_6
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[10] ),
        .O(vid_data[15]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_7
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[9] ),
        .O(vid_data[14]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_8
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[8] ),
        .O(vid_data[13]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_data_inferred_i_9
       (.I0(wait_done),
        .I1(\rgb565_data_reg_n_0_[7] ),
        .O(vid_data[12]));
  LUT2 #(
    .INIT(4'h8)) 
    vid_vsync_inferred_i_1
       (.I0(wait_done),
        .I1(cam_vsync_d1),
        .O(vid_vsync));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    wait_done_i_1
       (.I0(frame_cnt[1]),
        .I1(frame_cnt[2]),
        .I2(frame_cnt[0]),
        .I3(frame_cnt[3]),
        .I4(pos_vsync),
        .I5(wait_done),
        .O(wait_done_i_1_n_0));
  FDCE wait_done_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(cam_href_d0_i_1_n_0),
        .D(wait_done_i_1_n_0),
        .Q(wait_done));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_cam_captrue_data_0_0,cam_captrue_data,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cam_captrue_data,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_xclk,
    rst_n,
    cam_pclk,
    cam_href,
    cam_vsync,
    cam_data,
    cam_xclk,
    vid_clk,
    vid_ce,
    vid_vsync,
    vid_active_video,
    vid_data);
  input i_xclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input cam_pclk;
  input cam_href;
  input cam_vsync;
  input [7:0]cam_data;
  output cam_xclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0" *) output vid_clk;
  output vid_ce;
  output vid_vsync;
  output vid_active_video;
  output [23:0]vid_data;

  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire cam_xclk;
  wire i_xclk;
  wire rst_n;
  wire vid_active_video;
  wire vid_ce;
  wire vid_clk;
  wire [23:0]vid_data;
  wire vid_vsync;

  (* KEEP_HIERARCHY = "soft" *) 
  (* WAIT_FRAME = "10" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data inst
       (.cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .i_xclk(i_xclk),
        .rst_n(rst_n),
        .vid_active_video(vid_active_video),
        .vid_ce(vid_ce),
        .vid_clk(vid_clk),
        .vid_data(vid_data),
        .vid_vsync(vid_vsync));
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
