-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 13:52:38 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_cam_captrue_data_0_0/design_1_cam_captrue_data_0_0_sim_netlist.vhdl
-- Design      : design_1_cam_captrue_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cam_captrue_data_0_0_cam_captrue_data is
  port (
    vid_ce : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cam_captrue_data_0_0_cam_captrue_data : entity is "cam_captrue_data";
end design_1_cam_captrue_data_0_0_cam_captrue_data;

architecture STRUCTURE of design_1_cam_captrue_data_0_0_cam_captrue_data is
  signal cam_data_d0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cam_data_d0[0]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[1]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[2]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[3]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[4]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[5]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[6]_i_1_n_0\ : STD_LOGIC;
  signal \cam_data_d0[7]_i_1_n_0\ : STD_LOGIC;
  signal cam_href_d0 : STD_LOGIC;
  signal cam_href_d0_i_1_n_0 : STD_LOGIC;
  signal cam_href_d1 : STD_LOGIC;
  signal cam_vsync_d0 : STD_LOGIC;
  signal cam_vsync_d1 : STD_LOGIC;
  signal data_flag : STD_LOGIC;
  signal data_flag_d0 : STD_LOGIC;
  signal data_flag_reg_n_0 : STD_LOGIC;
  signal frame_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \frame_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal pos_vsync : STD_LOGIC;
  signal rgb565_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rgb565_data_0 : STD_LOGIC;
  signal rst_n_d0 : STD_LOGIC;
  signal rst_n_d0_i_1_n_0 : STD_LOGIC;
  signal rst_n_sync : STD_LOGIC;
  signal wait_done : STD_LOGIC;
  signal wait_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cam_data_d0[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cam_data_d0[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cam_data_d0[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cam_data_d0[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cam_data_d0[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cam_data_d0[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cam_data_d0[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cam_data_d0[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \frame_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vid_active_video_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vid_data[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vid_data[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vid_data[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vid_data[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vid_data[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vid_data[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vid_data[19]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vid_data[20]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vid_data[21]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vid_data[22]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vid_data[23]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vid_data[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vid_data[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vid_data[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vid_data[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vid_data[7]_INST_0\ : label is "soft_lutpair9";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => wait_done,
      I1 => cam_href_d1,
      I2 => data_flag_d0,
      O => vid_ce
    );
\cam_data_d0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(0),
      O => \cam_data_d0[0]_i_1_n_0\
    );
\cam_data_d0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(1),
      O => \cam_data_d0[1]_i_1_n_0\
    );
\cam_data_d0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(2),
      O => \cam_data_d0[2]_i_1_n_0\
    );
\cam_data_d0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(3),
      O => \cam_data_d0[3]_i_1_n_0\
    );
\cam_data_d0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(4),
      O => \cam_data_d0[4]_i_1_n_0\
    );
\cam_data_d0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(5),
      O => \cam_data_d0[5]_i_1_n_0\
    );
\cam_data_d0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(6),
      O => \cam_data_d0[6]_i_1_n_0\
    );
\cam_data_d0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => cam_data(7),
      O => \cam_data_d0[7]_i_1_n_0\
    );
\cam_data_d0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[0]_i_1_n_0\,
      Q => cam_data_d0(0)
    );
\cam_data_d0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[1]_i_1_n_0\,
      Q => cam_data_d0(1)
    );
\cam_data_d0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[2]_i_1_n_0\,
      Q => cam_data_d0(2)
    );
\cam_data_d0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[3]_i_1_n_0\,
      Q => cam_data_d0(3)
    );
\cam_data_d0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[4]_i_1_n_0\,
      Q => cam_data_d0(4)
    );
\cam_data_d0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[5]_i_1_n_0\,
      Q => cam_data_d0(5)
    );
\cam_data_d0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[6]_i_1_n_0\,
      Q => cam_data_d0(6)
    );
\cam_data_d0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[7]_i_1_n_0\,
      Q => cam_data_d0(7)
    );
cam_href_d0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_sync,
      O => cam_href_d0_i_1_n_0
    );
cam_href_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_href,
      Q => cam_href_d0
    );
cam_href_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_href_d0,
      Q => cam_href_d1
    );
cam_vsync_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_vsync,
      Q => cam_vsync_d0
    );
cam_vsync_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_vsync_d0,
      Q => cam_vsync_d1
    );
data_flag_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => data_flag_reg_n_0,
      Q => data_flag_d0
    );
data_flag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_href,
      I1 => data_flag_reg_n_0,
      O => data_flag
    );
data_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => data_flag,
      Q => data_flag_reg_n_0
    );
\frame_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FF"
    )
        port map (
      I0 => frame_cnt(3),
      I1 => frame_cnt(2),
      I2 => frame_cnt(1),
      I3 => frame_cnt(0),
      O => \frame_cnt[0]_i_1_n_0\
    );
\frame_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => frame_cnt(2),
      I1 => frame_cnt(1),
      I2 => frame_cnt(0),
      I3 => frame_cnt(3),
      O => \frame_cnt[1]_i_1_n_0\
    );
\frame_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => frame_cnt(2),
      I1 => frame_cnt(1),
      I2 => frame_cnt(0),
      O => \frame_cnt[2]_i_1_n_0\
    );
\frame_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_vsync_d1,
      I1 => cam_vsync_d0,
      O => pos_vsync
    );
\frame_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => frame_cnt(3),
      I1 => frame_cnt(0),
      I2 => frame_cnt(2),
      I3 => frame_cnt(1),
      O => \frame_cnt[3]_i_2_n_0\
    );
\frame_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[0]_i_1_n_0\,
      Q => frame_cnt(0)
    );
\frame_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[1]_i_1_n_0\,
      Q => frame_cnt(1)
    );
\frame_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[2]_i_1_n_0\,
      Q => frame_cnt(2)
    );
\frame_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[3]_i_2_n_0\,
      Q => frame_cnt(3)
    );
\rgb565_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => data_flag_reg_n_0,
      O => rgb565_data_0
    );
\rgb565_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(0),
      Q => rgb565_data(0)
    );
\rgb565_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(2),
      Q => rgb565_data(10)
    );
\rgb565_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(3),
      Q => rgb565_data(11)
    );
\rgb565_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(4),
      Q => rgb565_data(12)
    );
\rgb565_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(5),
      Q => rgb565_data(13)
    );
\rgb565_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(6),
      Q => rgb565_data(14)
    );
\rgb565_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(7),
      Q => rgb565_data(15)
    );
\rgb565_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(1),
      Q => rgb565_data(1)
    );
\rgb565_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(2),
      Q => rgb565_data(2)
    );
\rgb565_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(3),
      Q => rgb565_data(3)
    );
\rgb565_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(4),
      Q => rgb565_data(4)
    );
\rgb565_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(5),
      Q => rgb565_data(5)
    );
\rgb565_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(6),
      Q => rgb565_data(6)
    );
\rgb565_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(7),
      Q => rgb565_data(7)
    );
\rgb565_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(0),
      Q => rgb565_data(8)
    );
\rgb565_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => rgb565_data_0,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(1),
      Q => rgb565_data(9)
    );
rst_n_d0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => rst_n_d0_i_1_n_0
    );
rst_n_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => rst_n_d0_i_1_n_0,
      D => '1',
      Q => rst_n_d0
    );
rst_n_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => rst_n_d0_i_1_n_0,
      D => rst_n_d0,
      Q => rst_n_sync
    );
vid_active_video_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => cam_href_d1,
      O => vid_active_video
    );
\vid_data[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(5),
      O => vid_data(5)
    );
\vid_data[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(6),
      O => vid_data(6)
    );
\vid_data[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(7),
      O => vid_data(7)
    );
\vid_data[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(8),
      O => vid_data(8)
    );
\vid_data[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(9),
      O => vid_data(9)
    );
\vid_data[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(10),
      O => vid_data(10)
    );
\vid_data[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(11),
      O => vid_data(11)
    );
\vid_data[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(12),
      O => vid_data(12)
    );
\vid_data[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(13),
      O => vid_data(13)
    );
\vid_data[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(14),
      O => vid_data(14)
    );
\vid_data[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(15),
      O => vid_data(15)
    );
\vid_data[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(0),
      O => vid_data(0)
    );
\vid_data[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(1),
      O => vid_data(1)
    );
\vid_data[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(2),
      O => vid_data(2)
    );
\vid_data[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(3),
      O => vid_data(3)
    );
\vid_data[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => rgb565_data(4),
      O => vid_data(4)
    );
vid_vsync_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => cam_vsync_d1,
      O => vid_vsync
    );
wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => frame_cnt(1),
      I1 => frame_cnt(2),
      I2 => frame_cnt(0),
      I3 => frame_cnt(3),
      I4 => pos_vsync,
      I5 => wait_done,
      O => wait_done_i_1_n_0
    );
wait_done_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => wait_done_i_1_n_0,
      Q => wait_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cam_captrue_data_0_0 is
  port (
    i_xclk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_xclk : out STD_LOGIC;
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cam_captrue_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cam_captrue_data_0_0 : entity is "design_1_cam_captrue_data_0_0,cam_captrue_data,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_cam_captrue_data_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_cam_captrue_data_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_cam_captrue_data_0_0 : entity is "cam_captrue_data,Vivado 2020.2";
end design_1_cam_captrue_data_0_0;

architecture STRUCTURE of design_1_cam_captrue_data_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^cam_pclk\ : STD_LOGIC;
  signal \^i_xclk\ : STD_LOGIC;
  signal \^vid_data\ : STD_LOGIC_VECTOR ( 23 downto 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0";
begin
  \^cam_pclk\ <= cam_pclk;
  \^i_xclk\ <= i_xclk;
  cam_xclk <= \^i_xclk\;
  vid_clk <= \^cam_pclk\;
  vid_data(23 downto 19) <= \^vid_data\(23 downto 19);
  vid_data(18) <= \<const0>\;
  vid_data(17) <= \<const0>\;
  vid_data(16) <= \<const0>\;
  vid_data(15 downto 10) <= \^vid_data\(15 downto 10);
  vid_data(9) <= \<const0>\;
  vid_data(8) <= \<const0>\;
  vid_data(7 downto 3) <= \^vid_data\(7 downto 3);
  vid_data(2) <= \<const0>\;
  vid_data(1) <= \<const0>\;
  vid_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_cam_captrue_data_0_0_cam_captrue_data
     port map (
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => \^cam_pclk\,
      cam_vsync => cam_vsync,
      rst_n => rst_n,
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_data(15 downto 11) => \^vid_data\(23 downto 19),
      vid_data(10 downto 5) => \^vid_data\(15 downto 10),
      vid_data(4 downto 0) => \^vid_data\(7 downto 3),
      vid_vsync => vid_vsync
    );
end STRUCTURE;
