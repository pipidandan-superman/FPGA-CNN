-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 18:27:28 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cam_captrue_data_0_0_sim_netlist.vhdl
-- Design      : design_1_cam_captrue_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data is
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
  attribute WAIT_FRAME : integer;
  attribute WAIT_FRAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data : entity is 10;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data is
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
  signal \^cam_pclk\ : STD_LOGIC;
  signal cam_vsync_d0 : STD_LOGIC;
  signal cam_vsync_d1 : STD_LOGIC;
  signal \^cam_xclk\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of cam_xclk : signal is std.standard.true;
  signal data_flag : STD_LOGIC;
  signal data_flag_d0 : STD_LOGIC;
  signal data_flag_reg_n_0 : STD_LOGIC;
  signal frame_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \frame_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal pos_vsync : STD_LOGIC;
  signal rgb565_data : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rgb565_data_reg_n_0_[9]\ : STD_LOGIC;
  signal rst_n_d0 : STD_LOGIC;
  signal rst_n_d0_i_1_n_0 : STD_LOGIC;
  signal rst_n_sync : STD_LOGIC;
  signal \^vid_active_video\ : STD_LOGIC;
  attribute MARK_DEBUG of vid_active_video : signal is std.standard.true;
  signal wait_done : STD_LOGIC;
  signal wait_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute mark_debug_string : string;
  attribute mark_debug_string of cam_href : signal is "true";
  attribute mark_debug_string of cam_vsync : signal is "true";
  attribute mark_debug_string of cam_xclk : signal is "true";
  attribute mark_debug_string of vid_active_video : signal is "true";
  attribute mark_debug_string of vid_ce : signal is "true";
  attribute mark_debug_string of vid_vsync : signal is "true";
  attribute mark_debug_string of cam_data : signal is "true";
  attribute mark_debug_string of vid_data : signal is "true";
begin
  \^cam_pclk\ <= cam_pclk;
  \^cam_xclk\ <= i_xclk;
  cam_xclk <= \^cam_xclk\;
  vid_active_video <= \^vid_active_video\;
  vid_clk <= \^cam_pclk\;
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
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[0]_i_1_n_0\,
      Q => cam_data_d0(0)
    );
\cam_data_d0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[1]_i_1_n_0\,
      Q => cam_data_d0(1)
    );
\cam_data_d0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[2]_i_1_n_0\,
      Q => cam_data_d0(2)
    );
\cam_data_d0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[3]_i_1_n_0\,
      Q => cam_data_d0(3)
    );
\cam_data_d0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[4]_i_1_n_0\,
      Q => cam_data_d0(4)
    );
\cam_data_d0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[5]_i_1_n_0\,
      Q => cam_data_d0(5)
    );
\cam_data_d0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => \cam_data_d0[6]_i_1_n_0\,
      Q => cam_data_d0(6)
    );
\cam_data_d0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
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
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_href,
      Q => cam_href_d0
    );
cam_href_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_href_d0,
      Q => cam_href_d1
    );
cam_vsync_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_vsync,
      Q => cam_vsync_d0
    );
cam_vsync_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => cam_href_d0_i_1_n_0,
      D => cam_vsync_d0,
      Q => cam_vsync_d1
    );
data_flag_d0_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
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
      C => \^cam_pclk\,
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
      C => \^cam_pclk\,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[0]_i_1_n_0\,
      Q => frame_cnt(0)
    );
\frame_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[1]_i_1_n_0\,
      Q => frame_cnt(1)
    );
\frame_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[2]_i_1_n_0\,
      Q => frame_cnt(2)
    );
\frame_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => pos_vsync,
      CLR => cam_href_d0_i_1_n_0,
      D => \frame_cnt[3]_i_2_n_0\,
      Q => frame_cnt(3)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(18)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(17)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(16)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(9)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(8)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(2)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(1)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => vid_data(0)
    );
\rgb565_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => data_flag_reg_n_0,
      O => rgb565_data
    );
\rgb565_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(0),
      Q => \rgb565_data_reg_n_0_[0]\
    );
\rgb565_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(2),
      Q => \rgb565_data_reg_n_0_[10]\
    );
\rgb565_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(3),
      Q => \rgb565_data_reg_n_0_[11]\
    );
\rgb565_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(4),
      Q => \rgb565_data_reg_n_0_[12]\
    );
\rgb565_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(5),
      Q => \rgb565_data_reg_n_0_[13]\
    );
\rgb565_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(6),
      Q => \rgb565_data_reg_n_0_[14]\
    );
\rgb565_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(7),
      Q => \rgb565_data_reg_n_0_[15]\
    );
\rgb565_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(1),
      Q => \rgb565_data_reg_n_0_[1]\
    );
\rgb565_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(2),
      Q => \rgb565_data_reg_n_0_[2]\
    );
\rgb565_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(3),
      Q => \rgb565_data_reg_n_0_[3]\
    );
\rgb565_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(4),
      Q => \rgb565_data_reg_n_0_[4]\
    );
\rgb565_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(5),
      Q => \rgb565_data_reg_n_0_[5]\
    );
\rgb565_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(6),
      Q => \rgb565_data_reg_n_0_[6]\
    );
\rgb565_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data(7),
      Q => \rgb565_data_reg_n_0_[7]\
    );
\rgb565_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(0),
      Q => \rgb565_data_reg_n_0_[8]\
    );
\rgb565_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => rgb565_data,
      CLR => cam_href_d0_i_1_n_0,
      D => cam_data_d0(1),
      Q => \rgb565_data_reg_n_0_[9]\
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
      C => \^cam_pclk\,
      CE => '1',
      CLR => rst_n_d0_i_1_n_0,
      D => '1',
      Q => rst_n_d0
    );
rst_n_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => '1',
      CLR => rst_n_d0_i_1_n_0,
      D => rst_n_d0,
      Q => rst_n_sync
    );
vid_active_video_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => cam_href_d1,
      O => \^vid_active_video\
    );
vid_ce_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => wait_done,
      I1 => \^vid_active_video\,
      I2 => data_flag_d0,
      O => vid_ce
    );
vid_data_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[15]\,
      O => vid_data(23)
    );
vid_data_inferred_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[6]\,
      O => vid_data(11)
    );
vid_data_inferred_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[5]\,
      O => vid_data(10)
    );
vid_data_inferred_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[4]\,
      O => vid_data(7)
    );
vid_data_inferred_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[3]\,
      O => vid_data(6)
    );
vid_data_inferred_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[2]\,
      O => vid_data(5)
    );
vid_data_inferred_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[1]\,
      O => vid_data(4)
    );
vid_data_inferred_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[0]\,
      O => vid_data(3)
    );
vid_data_inferred_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[14]\,
      O => vid_data(22)
    );
vid_data_inferred_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[13]\,
      O => vid_data(21)
    );
vid_data_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[12]\,
      O => vid_data(20)
    );
vid_data_inferred_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[11]\,
      O => vid_data(19)
    );
vid_data_inferred_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[10]\,
      O => vid_data(15)
    );
vid_data_inferred_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[9]\,
      O => vid_data(14)
    );
vid_data_inferred_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[8]\,
      O => vid_data(13)
    );
vid_data_inferred_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wait_done,
      I1 => \rgb565_data_reg_n_0_[7]\,
      O => vid_data(12)
    );
vid_vsync_inferred_i_1: unisim.vcomponents.LUT2
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
      C => \^cam_pclk\,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_cam_captrue_data_0_0,cam_captrue_data,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cam_captrue_data,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute WAIT_FRAME : integer;
  attribute WAIT_FRAME of inst : label is 10;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_clk : signal is "xilinx.com:signal:clock:1.0 vid_clk CLK";
  attribute X_INTERFACE_PARAMETER of vid_clk : signal is "XIL_INTERFACENAME vid_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cam_captrue_data
     port map (
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      cam_xclk => cam_xclk,
      i_xclk => i_xclk,
      rst_n => rst_n,
      vid_active_video => vid_active_video,
      vid_ce => vid_ce,
      vid_clk => vid_clk,
      vid_data(23 downto 0) => vid_data(23 downto 0),
      vid_vsync => vid_vsync
    );
end STRUCTURE;
