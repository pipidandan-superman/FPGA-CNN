-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 11:47:13 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_HDMI_top_0_0_sim_netlist.vhdl
-- Design      : design_1_HDMI_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode is
  port (
    de_reg : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pix_clk : in STD_LOGIC;
    de : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    red_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_25_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9_n_0\ : STD_LOGIC;
  signal de_q : STD_LOGIC;
  signal \^de_reg\ : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal n0q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n0q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal n1d0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal n1q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n1q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal q_m_7 : STD_LOGIC;
  signal q_m_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \q_m_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[1]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[4]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[4]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[4]_i_16\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[4]_i_17\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[4]_i_19\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[4]_i_20\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[4]_i_22\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[4]_i_23\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[4]_i_24\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[4]_i_25\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[4]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[4]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_m_reg[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1\ : label is "soft_lutpair10";
begin
  AR(0) <= \^ar\(0);
  de_reg <= \^de_reg\;
OSERDESE2_master_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^ar\(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A8228A0A08228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => \cnt[4]_i_3_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_2_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[1]_i_3_n_0\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => n1q_m(1),
      I1 => n0q_m(1),
      I2 => q_m_reg(8),
      O => \cnt[1]_i_2_n_0\
    );
\cnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n1q_m(1),
      I1 => n0q_m(1),
      O => \cnt[1]_i_3_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \^de_reg\,
      I1 => \cnt[2]_i_2_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[2]_i_3_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[2]_i_4_n_0\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"596565A6"
    )
        port map (
      I0 => \cnt[4]_i_16_n_0\,
      I1 => cnt(1),
      I2 => n0q_m(1),
      I3 => q_m_reg(8),
      I4 => n1q_m(1),
      O => \cnt[2]_i_2_n_0\
    );
\cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6656559"
    )
        port map (
      I0 => \cnt[4]_i_16_n_0\,
      I1 => n1q_m(1),
      I2 => n0q_m(1),
      I3 => q_m_reg(8),
      I4 => cnt(1),
      O => \cnt[2]_i_3_n_0\
    );
\cnt[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59655695"
    )
        port map (
      I0 => \cnt[4]_i_16_n_0\,
      I1 => cnt(1),
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => q_m_reg(8),
      O => \cnt[2]_i_4_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \^de_reg\,
      I1 => \cnt[3]_i_2_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[3]_i_3_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[3]_i_4_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0180FE80FE7F01"
    )
        port map (
      I0 => \cnt[3]_i_5_n_0\,
      I1 => cnt(1),
      I2 => n1q_m(1),
      I3 => \cnt[4]_i_10_n_0\,
      I4 => \cnt[4]_i_7_n_0\,
      I5 => \cnt[4]_i_8_n_0\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55959599959999A9"
    )
        port map (
      I0 => \cnt[3]_i_6_n_0\,
      I1 => \cnt[4]_i_16_n_0\,
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => q_m_reg(8),
      I5 => cnt(1),
      O => \cnt[3]_i_3_n_0\
    );
\cnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71758E8A8E8A7175"
    )
        port map (
      I0 => \cnt[4]_i_16_n_0\,
      I1 => \cnt[3]_i_7_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_3_n_0\,
      I4 => \cnt[4]_i_25_n_0\,
      I5 => \cnt[4]_i_19_n_0\,
      O => \cnt[3]_i_4_n_0\
    );
\cnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      O => \cnt[3]_i_5_n_0\
    );
\cnt[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => cnt(3),
      I3 => n1q_m(2),
      I4 => n0q_m(2),
      I5 => cnt(2),
      O => \cnt[3]_i_6_n_0\
    );
\cnt[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n1q_m(1),
      I2 => n0q_m(1),
      O => \cnt[3]_i_7_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \^de_reg\,
      I1 => \cnt[4]_i_2_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_4_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[4]_i_6_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => cnt(2),
      I3 => q_m_reg(8),
      I4 => n0q_m(1),
      O => \cnt[4]_i_10_n_0\
    );
\cnt[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => cnt(1),
      I1 => n0q_m(1),
      I2 => q_m_reg(8),
      I3 => n1q_m(1),
      O => \cnt[4]_i_11_n_0\
    );
\cnt[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A55AA9A55659A55"
    )
        port map (
      I0 => cnt(4),
      I1 => n1q_m(2),
      I2 => n0q_m(2),
      I3 => n1q_m(3),
      I4 => n0q_m(3),
      I5 => cnt(3),
      O => \cnt[4]_i_12_n_0\
    );
\cnt[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFD00F0FFFFDDFD"
    )
        port map (
      I0 => n0q_m(1),
      I1 => n1q_m(1),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => n1q_m(2),
      I5 => n0q_m(2),
      O => \cnt[4]_i_13_n_0\
    );
\cnt[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2F2F22FF2FFF2F"
    )
        port map (
      I0 => n0q_m(3),
      I1 => n1q_m(3),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => n0q_m(1),
      I5 => n1q_m(1),
      O => \cnt[4]_i_14_n_0\
    );
\cnt[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4114"
    )
        port map (
      I0 => cnt(1),
      I1 => q_m_reg(8),
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      O => \cnt[4]_i_15_n_0\
    );
\cnt[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(2),
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[4]_i_16_n_0\
    );
\cnt[4]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n1q_m(1),
      I2 => n0q_m(1),
      O => \cnt[4]_i_17_n_0\
    );
\cnt[4]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => cnt(2),
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[4]_i_18_n_0\
    );
\cnt[4]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => n0q_m(3),
      I2 => n1q_m(3),
      O => \cnt[4]_i_19_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"717111718E8EEE8E"
    )
        port map (
      I0 => \cnt[4]_i_7_n_0\,
      I1 => \cnt[4]_i_8_n_0\,
      I2 => \cnt[4]_i_9_n_0\,
      I3 => \cnt[4]_i_10_n_0\,
      I4 => \cnt[4]_i_11_n_0\,
      I5 => \cnt[4]_i_12_n_0\,
      O => \cnt[4]_i_2_n_0\
    );
\cnt[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"599A"
    )
        port map (
      I0 => cnt(4),
      I1 => n1q_m(3),
      I2 => n0q_m(3),
      I3 => cnt(3),
      O => \cnt[4]_i_20_n_0\
    );
\cnt[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => n0q_m(3),
      I1 => n1q_m(3),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => n1q_m(1),
      I5 => n0q_m(1),
      O => \cnt[4]_i_21_n_0\
    );
\cnt[4]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => q_m_reg(8),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => cnt(3),
      O => \cnt[4]_i_22_n_0\
    );
\cnt[4]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => cnt(1),
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_23_n_0\
    );
\cnt[4]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => cnt(1),
      I1 => n0q_m(1),
      I2 => n1q_m(1),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_24_n_0\
    );
\cnt[4]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      I3 => q_m_reg(8),
      O => \cnt[4]_i_25_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47C477F7"
    )
        port map (
      I0 => \cnt[4]_i_13_n_0\,
      I1 => cnt(4),
      I2 => n0q_m(3),
      I3 => n1q_m(3),
      I4 => \cnt[4]_i_14_n_0\,
      O => \cnt[4]_i_3_n_0\
    );
\cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8FF00E81700FF17"
    )
        port map (
      I0 => \cnt[4]_i_15_n_0\,
      I1 => \cnt[4]_i_16_n_0\,
      I2 => \cnt[4]_i_17_n_0\,
      I3 => \cnt[4]_i_18_n_0\,
      I4 => \cnt[4]_i_19_n_0\,
      I5 => \cnt[4]_i_20_n_0\,
      O => \cnt[4]_i_4_n_0\
    );
\cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_21_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_5_n_0\
    );
\cnt[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"599959599AAA9A9A"
    )
        port map (
      I0 => \cnt[4]_i_22_n_0\,
      I1 => \cnt[4]_i_19_n_0\,
      I2 => \cnt[4]_i_23_n_0\,
      I3 => \cnt[4]_i_24_n_0\,
      I4 => \cnt[4]_i_16_n_0\,
      I5 => \cnt[4]_i_25_n_0\,
      O => \cnt[4]_i_6_n_0\
    );
\cnt[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B44B4BB4"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => cnt(3),
      O => \cnt[4]_i_7_n_0\
    );
\cnt[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F02022F"
    )
        port map (
      I0 => n0q_m(1),
      I1 => q_m_reg(8),
      I2 => cnt(2),
      I3 => n0q_m(2),
      I4 => n1q_m(2),
      O => \cnt[4]_i_8_n_0\
    );
\cnt[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => n0q_m(1),
      I2 => cnt(1),
      I3 => n1q_m(1),
      O => \cnt[4]_i_9_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4)
    );
de_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => de,
      Q => de_q,
      R => '0'
    );
de_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => de_q,
      Q => \^de_reg\,
      R => '0'
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => red_data(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(0),
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_5_n_0\,
      I4 => q_m_reg(8),
      O => dout(0)
    );
\dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(1),
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_5_n_0\,
      I4 => q_m_reg(8),
      O => dout(1)
    );
\dout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[4]_i_3_n_0\,
      I4 => q_m_reg(2),
      O => dout(2)
    );
\dout[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(3),
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_5_n_0\,
      I4 => q_m_reg(8),
      O => dout(3)
    );
\dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[4]_i_3_n_0\,
      I4 => q_m_reg(4),
      O => dout(4)
    );
\dout[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(5),
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_5_n_0\,
      I4 => q_m_reg(8),
      O => dout(5)
    );
\dout[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(8),
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[4]_i_3_n_0\,
      I4 => q_m_reg(6),
      O => dout(6)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => \^de_reg\,
      I1 => q_m_reg(7),
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_5_n_0\,
      I4 => q_m_reg(8),
      O => dout(7)
    );
\dout[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => q_m_reg(8),
      I1 => \^de_reg\,
      O => dout(8)
    );
\dout[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DFD"
    )
        port map (
      I0 => \^de_reg\,
      I1 => \cnt[4]_i_3_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => q_m_reg(8),
      O => dout(9)
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(0),
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(1),
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(2),
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(3),
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(4),
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(5),
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(6),
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(7),
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(8),
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => dout(9),
      Q => Q(9)
    );
\n0q_m[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[3]_i_3_n_0\,
      I1 => \n1q_m[3]_i_2_n_0\,
      I2 => \n1q_m[3]_i_5_n_0\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \din_q_reg_n_0_[0]\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n0q_m0(1)
    );
\n0q_m[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n1q_m[3]_i_6_n_0\,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => \n1q_m[3]_i_4_n_0\,
      I3 => \n1q_m[3]_i_5_n_0\,
      I4 => \n1q_m[3]_i_2_n_0\,
      I5 => \n1q_m[3]_i_3_n_0\,
      O => n0q_m0(2)
    );
\n0q_m[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \n1q_m[3]_i_5_n_0\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n0q_m0(3)
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(1),
      Q => n0q_m(1),
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(2),
      Q => n0q_m(2),
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(3),
      Q => n0q_m(3),
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => red_data(0),
      I1 => red_data(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => red_data(2),
      I4 => red_data(1),
      I5 => red_data(3),
      O => n1d0(0)
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => red_data(6),
      I1 => red_data(4),
      I2 => red_data(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => n1d0(1)
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => red_data(3),
      I1 => red_data(2),
      I2 => red_data(1),
      I3 => red_data(6),
      I4 => red_data(5),
      I5 => red_data(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => red_data(4),
      I4 => red_data(5),
      I5 => red_data(6),
      O => n1d0(2)
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => red_data(1),
      I1 => red_data(2),
      I2 => red_data(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => red_data(3),
      I3 => red_data(2),
      I4 => red_data(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => n1d0(3)
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => red_data(2),
      I1 => red_data(1),
      I2 => red_data(3),
      I3 => red_data(0),
      I4 => red_data(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => red_data(7),
      I1 => red_data(0),
      I2 => red_data(5),
      I3 => red_data(4),
      I4 => red_data(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => red_data(4),
      I1 => red_data(5),
      I2 => red_data(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(0),
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(1),
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(2),
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(3),
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696969996999969"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \n1q_m[3]_i_5_n_0\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n1q_m0(1)
    );
\n1q_m[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF71F771F70010"
    )
        port map (
      I0 => \n1q_m[3]_i_5_n_0\,
      I1 => \n1q_m[3]_i_4_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_6_n_0\,
      I4 => \n1q_m[3]_i_3_n_0\,
      I5 => \n1q_m[3]_i_2_n_0\,
      O => \n1q_m[2]_i_1_n_0\
    );
\n1q_m[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4_n_0\,
      I4 => \n1q_m[3]_i_5_n_0\,
      I5 => \n1q_m[3]_i_6_n_0\,
      O => n1q_m0(3)
    );
\n1q_m[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2_n_0\,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_2_n_0\
    );
\n1q_m[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3_n_0\
    );
\n1q_m[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n1q_m[3]_i_7_n_0\,
      O => \n1q_m[3]_i_4_n_0\
    );
\n1q_m[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2_n_0\,
      I4 => p_0_in,
      O => \n1q_m[3]_i_5_n_0\
    );
\n1q_m[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n1q_m[3]_i_6_n_0\
    );
\n1q_m[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \din_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n1q_m[3]_i_7_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1q_m0(1),
      Q => n1q_m(1),
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1_n_0\,
      Q => n1q_m(2),
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1q_m0(3),
      Q => n1q_m(3),
      R => '0'
    );
\q_m_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \din_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1_n_0\
    );
\q_m_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in,
      I1 => \q_m_reg[7]_i_2_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3_n_0\,
      I4 => p_0_in0_in,
      O => q_m_7
    );
\q_m_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2_n_0\
    );
\q_m_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3_n_0\
    );
\q_m_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => q_m_reg(0),
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => q_m_reg(1),
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => q_m_reg(2),
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => q_m_reg(3),
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => q_m_reg(4),
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1_n_0\,
      Q => q_m_reg(5),
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => q_m_reg(6),
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_7,
      Q => q_m_reg(7),
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1_n_0\,
      Q => q_m_reg(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pix_clk : in STD_LOGIC;
    de_reg : in STD_LOGIC;
    green_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0 : entity is "encode";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0 is
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_25__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal \q_m_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[1]_i_3__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[2]_i_2__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[2]_i_3__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[2]_i_4__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt[3]_i_7__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[4]_i_10__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt[4]_i_11__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_12__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt[4]_i_15__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[4]_i_16__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[4]_i_17__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[4]_i_18__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[4]_i_19__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_22__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt[4]_i_23__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt[4]_i_24__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt[4]_i_25__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[4]_i_8__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dout[0]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dout[1]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dout[8]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dout[9]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_5__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_reg[2]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__0\ : label is "soft_lutpair28";
begin
\cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A8228A0A08228"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_2__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[1]_i_3__0_n_0\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[1]_i_2__0_n_0\
    );
\cnt[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_3__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[2]_i_2__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[2]_i_3__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[2]_i_4__1_n_0\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69A9A59"
    )
        port map (
      I0 => \cnt[4]_i_18__0_n_0\,
      I1 => cnt(1),
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[2]_i_2__0_n_0\
    );
\cnt[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"71E78E18"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \cnt[4]_i_18__0_n_0\,
      O => \cnt[2]_i_3__0_n_0\
    );
\cnt[2]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69AA96A"
    )
        port map (
      I0 => \cnt[4]_i_18__0_n_0\,
      I1 => cnt(1),
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[2]_i_4__1_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[3]_i_2__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[3]_i_3__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[3]_i_4__0_n_0\,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0180FE80FE7F01"
    )
        port map (
      I0 => \cnt[3]_i_5__0_n_0\,
      I1 => cnt(1),
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \cnt[4]_i_9__0_n_0\,
      I4 => \cnt[4]_i_11__1_n_0\,
      I5 => \cnt[4]_i_12__0_n_0\,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10515175EFAEAE8A"
    )
        port map (
      I0 => \cnt[4]_i_18__0_n_0\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => cnt(1),
      I5 => \cnt[3]_i_6__0_n_0\,
      O => \cnt[3]_i_3__0_n_0\
    );
\cnt[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BA4D454D45B2BA"
    )
        port map (
      I0 => \cnt[4]_i_18__0_n_0\,
      I1 => \cnt[3]_i_7__0_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_3__0_n_0\,
      I4 => \cnt[4]_i_25__0_n_0\,
      I5 => \cnt[4]_i_19__0_n_0\,
      O => \cnt[3]_i_4__0_n_0\
    );
\cnt[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[3]_i_5__0_n_0\
    );
\cnt[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => cnt(3),
      I3 => cnt(2),
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_6__0_n_0\
    );
\cnt[3]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[3]_i_7__0_n_0\
    );
\cnt[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_10__0_n_0\
    );
\cnt[4]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_11__1_n_0\
    );
\cnt[4]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FBFBB0"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => cnt(2),
      I3 => \n0q_m_reg_n_0_[2]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_12__0_n_0\
    );
\cnt[4]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202FF0F00002202"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_13__0_n_0\
    );
\cnt[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFB00F0FFFFBBFB"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_14__0_n_0\
    );
\cnt[4]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A665"
    )
        port map (
      I0 => cnt(4),
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => cnt(3),
      O => \cnt[4]_i_15__0_n_0\
    );
\cnt[4]_i_16__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4114"
    )
        port map (
      I0 => cnt(1),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_16__1_n_0\
    );
\cnt[4]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_17__0_n_0\
    );
\cnt[4]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_18__0_n_0\
    );
\cnt[4]_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_19__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_2__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_4__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[4]_i_6__0_n_0\,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[4]_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      O => \cnt[4]_i_20__0_n_0\
    );
\cnt[4]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_21__0_n_0\
    );
\cnt[4]_i_22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_22__0_n_0\
    );
\cnt[4]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_23__0_n_0\
    );
\cnt[4]_i_24__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_24__0_n_0\
    );
\cnt[4]_i_25__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_25__0_n_0\
    );
\cnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555566A666A6AAAA"
    )
        port map (
      I0 => \cnt[4]_i_7__0_n_0\,
      I1 => \cnt[4]_i_8__0_n_0\,
      I2 => \cnt[4]_i_9__0_n_0\,
      I3 => \cnt[4]_i_10__0_n_0\,
      I4 => \cnt[4]_i_11__1_n_0\,
      I5 => \cnt[4]_i_12__0_n_0\,
      O => \cnt[4]_i_2__0_n_0\
    );
\cnt[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BC8BBFB"
    )
        port map (
      I0 => \cnt[4]_i_13__0_n_0\,
      I1 => cnt(4),
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \cnt[4]_i_14__0_n_0\,
      O => \cnt[4]_i_3__0_n_0\
    );
\cnt[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A665AAAA5555A665"
    )
        port map (
      I0 => \cnt[4]_i_15__0_n_0\,
      I1 => \cnt[4]_i_16__1_n_0\,
      I2 => \cnt[4]_i_17__0_n_0\,
      I3 => \cnt[4]_i_18__0_n_0\,
      I4 => \cnt[4]_i_19__0_n_0\,
      I5 => \cnt[4]_i_20__0_n_0\,
      O => \cnt[4]_i_4__0_n_0\
    );
\cnt[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_21__0_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_5__0_n_0\
    );
\cnt[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595959999A9A9AAA"
    )
        port map (
      I0 => \cnt[4]_i_22__0_n_0\,
      I1 => \cnt[4]_i_19__0_n_0\,
      I2 => \cnt[4]_i_23__0_n_0\,
      I3 => \cnt[4]_i_24__0_n_0\,
      I4 => \cnt[4]_i_18__0_n_0\,
      I5 => \cnt[4]_i_25__0_n_0\,
      O => \cnt[4]_i_6__0_n_0\
    );
\cnt[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04FB4FB0FB04B0"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => cnt(3),
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => \n1q_m_reg_n_0_[3]\,
      I5 => cnt(4),
      O => \cnt[4]_i_7__0_n_0\
    );
\cnt[4]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => cnt(1),
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_8__0_n_0\
    );
\cnt[4]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D2DD2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \n0q_m_reg_n_0_[2]\,
      I4 => cnt(2),
      O => \cnt[4]_i_9__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[1]_i_1__0_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[2]_i_1__0_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[3]_i_1__0_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[4]_i_1__0_n_0\,
      Q => cnt(4)
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => green_data(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[0]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[0]_i_1__0_n_0\
    );
\dout[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[1]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[1]_i_1__0_n_0\
    );
\dout[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \cnt[4]_i_5__0_n_0\,
      I3 => \cnt[4]_i_3__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[2]\,
      O => \dout[2]_i_1__0_n_0\
    );
\dout[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[3]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[3]_i_1__0_n_0\
    );
\dout[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \cnt[4]_i_5__0_n_0\,
      I3 => \cnt[4]_i_3__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[4]\,
      O => \dout[4]_i_1__0_n_0\
    );
\dout[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[5]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[5]_i_1__0_n_0\
    );
\dout[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5DF7F75"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \cnt[4]_i_5__0_n_0\,
      I3 => \cnt[4]_i_3__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[6]\,
      O => \dout[6]_i_1__0_n_0\
    );
\dout[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88282228"
    )
        port map (
      I0 => de_reg,
      I1 => \q_m_reg_reg_n_0_[7]\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_5__0_n_0\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[7]_i_1__0_n_0\
    );
\dout[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => de_reg,
      O => \dout[8]_i_1__0_n_0\
    );
\dout[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DFD"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => \cnt[4]_i_5__0_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \dout[9]_i_1__0_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[0]_i_1__0_n_0\,
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[1]_i_1__0_n_0\,
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[2]_i_1__0_n_0\,
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[3]_i_1__0_n_0\,
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[4]_i_1__0_n_0\,
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[5]_i_1__0_n_0\,
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[6]_i_1__0_n_0\,
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[7]_i_1__0_n_0\,
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[8]_i_1__0_n_0\,
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[9]_i_1__0_n_0\,
      Q => Q(9)
    );
\n0q_m[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[3]_i_3__0_n_0\,
      I1 => \n1q_m[3]_i_2__0_n_0\,
      I2 => \n1q_m[3]_i_5__0_n_0\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \din_q_reg_n_0_[0]\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n0q_m[1]_i_1__0_n_0\
    );
\n0q_m[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n1q_m[3]_i_6__0_n_0\,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => \n1q_m[3]_i_4__0_n_0\,
      I3 => \n1q_m[3]_i_5__0_n_0\,
      I4 => \n1q_m[3]_i_2__0_n_0\,
      I5 => \n1q_m[3]_i_3__0_n_0\,
      O => \n0q_m[2]_i_1__0_n_0\
    );
\n0q_m[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \n1q_m[3]_i_5__0_n_0\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n0q_m[3]_i_1__0_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[3]\,
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => green_data(0),
      I1 => green_data(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => green_data(2),
      I4 => green_data(1),
      I5 => green_data(3),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => green_data(6),
      I1 => green_data(4),
      I2 => green_data(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => green_data(3),
      I1 => green_data(2),
      I2 => green_data(1),
      I3 => green_data(6),
      I4 => green_data(5),
      I5 => green_data(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => green_data(4),
      I4 => green_data(5),
      I5 => green_data(6),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => green_data(1),
      I1 => green_data(2),
      I2 => green_data(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => green_data(3),
      I3 => green_data(2),
      I4 => green_data(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => green_data(2),
      I1 => green_data(1),
      I2 => green_data(3),
      I3 => green_data(0),
      I4 => green_data(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => green_data(7),
      I1 => green_data(0),
      I2 => green_data(5),
      I3 => green_data(4),
      I4 => green_data(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => green_data(4),
      I1 => green_data(5),
      I2 => green_data(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696969996999969"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \n1q_m[3]_i_5__0_n_0\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n1q_m[1]_i_1__0_n_0\
    );
\n1q_m[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF71F771F70010"
    )
        port map (
      I0 => \n1q_m[3]_i_5__0_n_0\,
      I1 => \n1q_m[3]_i_4__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_6__0_n_0\,
      I4 => \n1q_m[3]_i_3__0_n_0\,
      I5 => \n1q_m[3]_i_2__0_n_0\,
      O => \n1q_m[2]_i_1__0_n_0\
    );
\n1q_m[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      I4 => \n1q_m[3]_i_5__0_n_0\,
      I5 => \n1q_m[3]_i_6__0_n_0\,
      O => \n1q_m[3]_i_1__0_n_0\
    );
\n1q_m[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__0_n_0\,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_2__0_n_0\
    );
\n1q_m[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2__0_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3__0_n_0\
    );
\n1q_m[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n1q_m[3]_i_7__0_n_0\,
      O => \n1q_m[3]_i_4__0_n_0\
    );
\n1q_m[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3__0_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2__0_n_0\,
      I4 => p_0_in,
      O => \n1q_m[3]_i_5__0_n_0\
    );
\n1q_m[3]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n1q_m[3]_i_6__0_n_0\
    );
\n1q_m[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \din_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n1q_m[3]_i_7__0_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \din_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2__0_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__0_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1__0_n_0\
    );
\q_m_reg[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in,
      I1 => \q_m_reg[7]_i_2__0_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3__0_n_0\,
      I4 => p_0_in0_in,
      O => \q_m_reg[7]_i_1__0_n_0\
    );
\q_m_reg[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2__0_n_0\
    );
\q_m_reg[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3__0_n_0\
    );
\q_m_reg[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1__0_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[7]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pix_clk : in STD_LOGIC;
    h_sync : in STD_LOGIC;
    v_sync : in STD_LOGIC;
    de_reg : in STD_LOGIC;
    blue_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1 : entity is "encode";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1 is
  signal c0_q : STD_LOGIC;
  signal c0_reg : STD_LOGIC;
  signal c1_q_reg_n_0 : STD_LOGIC;
  signal c1_reg_reg_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_20__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_21__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_22__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_23__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_24__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_25__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \din_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal \q_m_reg[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt[1]_i_3__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt[2]_i_2__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[2]_i_3__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt[2]_i_4__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt[3]_i_5__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cnt[3]_i_7__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt[4]_i_10__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[4]_i_11__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt[4]_i_15__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt[4]_i_16__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[4]_i_17__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[4]_i_18__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[4]_i_20__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt[4]_i_22__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt[4]_i_23__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[4]_i_24__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[4]_i_25__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[4]_i_7__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[4]_i_8__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dout[8]_i_1__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_2__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_5__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_6__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q_m_reg[2]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__1\ : label is "soft_lutpair44";
begin
c0_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_sync,
      Q => c0_q,
      R => '0'
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => c0_q,
      Q => c0_reg,
      R => '0'
    );
c1_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => v_sync,
      Q => c1_q_reg_n_0,
      R => '0'
    );
c1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => c1_q_reg_n_0,
      Q => c1_reg_reg_n_0,
      R => '0'
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A8228A0A08228"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_2__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[1]_i_3__1_n_0\,
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[1]_i_2__1_n_0\
    );
\cnt[1]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_3__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[2]_i_2__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[2]_i_3__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[2]_i_4__0_n_0\,
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"596565A6"
    )
        port map (
      I0 => \cnt[4]_i_19__1_n_0\,
      I1 => cnt(1),
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[2]_i_2__1_n_0\
    );
\cnt[2]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6656559"
    )
        port map (
      I0 => \cnt[4]_i_19__1_n_0\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => cnt(1),
      O => \cnt[2]_i_3__1_n_0\
    );
\cnt[2]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59655695"
    )
        port map (
      I0 => \cnt[4]_i_19__1_n_0\,
      I1 => cnt(1),
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[2]_i_4__0_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1B001B00000000"
    )
        port map (
      I0 => \cnt[4]_i_3__1_n_0\,
      I1 => \cnt[3]_i_2__1_n_0\,
      I2 => \cnt[3]_i_3__1_n_0\,
      I3 => \cnt[4]_i_5__1_n_0\,
      I4 => \cnt[3]_i_4__1_n_0\,
      I5 => de_reg,
      O => \cnt[3]_i_1__1_n_0\
    );
\cnt[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0180FE80FE7F01"
    )
        port map (
      I0 => \cnt[3]_i_5__1_n_0\,
      I1 => cnt(1),
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \cnt[4]_i_10__1_n_0\,
      I4 => \cnt[4]_i_7__1_n_0\,
      I5 => \cnt[4]_i_8__1_n_0\,
      O => \cnt[3]_i_2__1_n_0\
    );
\cnt[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"63C33363C3C663C3"
    )
        port map (
      I0 => cnt(1),
      I1 => \cnt[3]_i_6__1_n_0\,
      I2 => \cnt[4]_i_19__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \n1q_m_reg_n_0_[1]\,
      I5 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[3]_i_3__1_n_0\
    );
\cnt[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3200CDF0CDFF320"
    )
        port map (
      I0 => \cnt[1]_i_3__1_n_0\,
      I1 => cnt(1),
      I2 => \cnt[3]_i_7__1_n_0\,
      I3 => \cnt[4]_i_19__1_n_0\,
      I4 => \cnt[4]_i_25__1_n_0\,
      I5 => \cnt[4]_i_16__0_n_0\,
      O => \cnt[3]_i_4__1_n_0\
    );
\cnt[3]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[3]_i_5__1_n_0\
    );
\cnt[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => cnt(3),
      I3 => cnt(2),
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_6__1_n_0\
    );
\cnt[3]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[3]_i_7__1_n_0\
    );
\cnt[4]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_10__1_n_0\
    );
\cnt[4]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_11__0_n_0\
    );
\cnt[4]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A55AA9A55659A55"
    )
        port map (
      I0 => cnt(4),
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => \n0q_m_reg_n_0_[2]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \n0q_m_reg_n_0_[3]\,
      I5 => cnt(3),
      O => \cnt[4]_i_12__1_n_0\
    );
\cnt[4]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF2222FF2F"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_13__1_n_0\
    );
\cnt[4]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0FDD0FDFFFFD0FD"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[2]\,
      I3 => \n1q_m_reg_n_0_[2]\,
      I4 => \n0q_m_reg_n_0_[3]\,
      I5 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_14__1_n_0\
    );
\cnt[4]_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A665"
    )
        port map (
      I0 => cnt(4),
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => cnt(3),
      O => \cnt[4]_i_15__1_n_0\
    );
\cnt[4]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_16__0_n_0\
    );
\cnt[4]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      O => \cnt[4]_i_17__1_n_0\
    );
\cnt[4]_i_18__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4114"
    )
        port map (
      I0 => cnt(1),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_18__1_n_0\
    );
\cnt[4]_i_19__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_19__1_n_0\
    );
\cnt[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_2__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[4]_i_4__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[4]_i_6__1_n_0\,
      O => \cnt[4]_i_1__1_n_0\
    );
\cnt[4]_i_20__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_20__1_n_0\
    );
\cnt[4]_i_21__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[3]\,
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_21__1_n_0\
    );
\cnt[4]_i_22__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_22__1_n_0\
    );
\cnt[4]_i_23__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_23__1_n_0\
    );
\cnt[4]_i_24__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => cnt(1),
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_24__1_n_0\
    );
\cnt[4]_i_25__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_25__1_n_0\
    );
\cnt[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E888E817177717"
    )
        port map (
      I0 => \cnt[4]_i_7__1_n_0\,
      I1 => \cnt[4]_i_8__1_n_0\,
      I2 => \cnt[4]_i_9__1_n_0\,
      I3 => \cnt[4]_i_10__1_n_0\,
      I4 => \cnt[4]_i_11__0_n_0\,
      I5 => \cnt[4]_i_12__1_n_0\,
      O => \cnt[4]_i_2__1_n_0\
    );
\cnt[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47C477F7"
    )
        port map (
      I0 => \cnt[4]_i_13__1_n_0\,
      I1 => cnt(4),
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \cnt[4]_i_14__1_n_0\,
      O => \cnt[4]_i_3__1_n_0\
    );
\cnt[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656565A665A6A6A6"
    )
        port map (
      I0 => \cnt[4]_i_15__1_n_0\,
      I1 => \cnt[4]_i_16__0_n_0\,
      I2 => \cnt[4]_i_17__1_n_0\,
      I3 => \cnt[4]_i_18__1_n_0\,
      I4 => \cnt[4]_i_19__1_n_0\,
      I5 => \cnt[4]_i_20__1_n_0\,
      O => \cnt[4]_i_4__1_n_0\
    );
\cnt[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_21__1_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_5__1_n_0\
    );
\cnt[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595599999A99AAAA"
    )
        port map (
      I0 => \cnt[4]_i_22__1_n_0\,
      I1 => \cnt[4]_i_16__0_n_0\,
      I2 => \cnt[4]_i_23__1_n_0\,
      I3 => \cnt[4]_i_19__1_n_0\,
      I4 => \cnt[4]_i_24__1_n_0\,
      I5 => \cnt[4]_i_25__1_n_0\,
      O => \cnt[4]_i_6__1_n_0\
    );
\cnt[4]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_7__1_n_0\
    );
\cnt[4]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6F660F6"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_8__1_n_0\
    );
\cnt[4]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => cnt(1),
      I3 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_9__1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[1]_i_1__1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[2]_i_1__1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[3]_i_1__1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[4]_i_1__1_n_0\,
      Q => cnt(4)
    );
\din_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(0),
      Q => \din_q_reg_n_0_[0]\,
      R => '0'
    );
\din_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(1),
      Q => p_0_in5_in,
      R => '0'
    );
\din_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(2),
      Q => p_0_in4_in,
      R => '0'
    );
\din_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(3),
      Q => p_0_in3_in,
      R => '0'
    );
\din_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(4),
      Q => p_0_in2_in,
      R => '0'
    );
\din_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(5),
      Q => p_0_in1_in,
      R => '0'
    );
\din_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(6),
      Q => p_0_in0_in,
      R => '0'
    );
\din_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => blue_data(7),
      Q => p_0_in,
      R => '0'
    );
\dout[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A656FFFFA6560000"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[0]\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => de_reg,
      I5 => c0_reg,
      O => \dout[0]_i_1__1_n_0\
    );
\dout[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A656FFFFA6560000"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[1]\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => de_reg,
      I5 => c0_reg,
      O => \dout[1]_i_1__1_n_0\
    );
\dout[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202F75708A85DFD"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => c0_reg,
      I5 => \q_m_reg_reg_n_0_[2]\,
      O => \dout[2]_i_1__1_n_0\
    );
\dout[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A656FFFFA6560000"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[3]\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => de_reg,
      I5 => c0_reg,
      O => \dout[3]_i_1__1_n_0\
    );
\dout[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202F75708A85DFD"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => c0_reg,
      I5 => \q_m_reg_reg_n_0_[4]\,
      O => \dout[4]_i_1__1_n_0\
    );
\dout[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A656FFFFA6560000"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[5]\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => de_reg,
      I5 => c0_reg,
      O => \dout[5]_i_1__1_n_0\
    );
\dout[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202F75708A85DFD"
    )
        port map (
      I0 => de_reg,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => c0_reg,
      I5 => \q_m_reg_reg_n_0_[6]\,
      O => \dout[6]_i_1__1_n_0\
    );
\dout[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A656FFFFA6560000"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[7]\,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => de_reg,
      I5 => c0_reg,
      O => \dout[7]_i_1__1_n_0\
    );
\dout[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => c0_reg,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => de_reg,
      O => \dout[8]_i_1__1_n_0\
    );
\dout[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF7400740074FF"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \cnt[4]_i_5__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => de_reg,
      I4 => c0_reg,
      I5 => c1_reg_reg_n_0,
      O => \dout[9]_i_1__1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[0]_i_1__1_n_0\,
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[1]_i_1__1_n_0\,
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[2]_i_1__1_n_0\,
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[3]_i_1__1_n_0\,
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[4]_i_1__1_n_0\,
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[5]_i_1__1_n_0\,
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[6]_i_1__1_n_0\,
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[7]_i_1__1_n_0\,
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[8]_i_1__1_n_0\,
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[9]_i_1__1_n_0\,
      Q => Q(9)
    );
\n0q_m[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[3]_i_3__1_n_0\,
      I1 => \n1q_m[3]_i_2__1_n_0\,
      I2 => \n1q_m[3]_i_5__1_n_0\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \din_q_reg_n_0_[0]\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n0q_m[1]_i_1__1_n_0\
    );
\n0q_m[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n1q_m[3]_i_6__1_n_0\,
      I1 => \din_q_reg_n_0_[0]\,
      I2 => \n1q_m[3]_i_4__1_n_0\,
      I3 => \n1q_m[3]_i_5__1_n_0\,
      I4 => \n1q_m[3]_i_2__1_n_0\,
      I5 => \n1q_m[3]_i_3__1_n_0\,
      O => \n0q_m[2]_i_1__1_n_0\
    );
\n0q_m[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \n1q_m[3]_i_5__1_n_0\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n0q_m[3]_i_1__1_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[3]\,
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => blue_data(0),
      I1 => blue_data(7),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => blue_data(2),
      I4 => blue_data(1),
      I5 => blue_data(3),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => blue_data(6),
      I1 => blue_data(4),
      I2 => blue_data(5),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => blue_data(3),
      I1 => blue_data(2),
      I2 => blue_data(1),
      I3 => blue_data(6),
      I4 => blue_data(5),
      I5 => blue_data(4),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => blue_data(4),
      I4 => blue_data(5),
      I5 => blue_data(6),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => blue_data(1),
      I1 => blue_data(2),
      I2 => blue_data(3),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => blue_data(3),
      I3 => blue_data(2),
      I4 => blue_data(1),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => blue_data(2),
      I1 => blue_data(1),
      I2 => blue_data(3),
      I3 => blue_data(0),
      I4 => blue_data(7),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => blue_data(7),
      I1 => blue_data(0),
      I2 => blue_data(5),
      I3 => blue_data(4),
      I4 => blue_data(6),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => blue_data(4),
      I1 => blue_data(5),
      I2 => blue_data(6),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696969996999969"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \n1q_m[3]_i_5__1_n_0\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n1q_m[1]_i_1__1_n_0\
    );
\n1q_m[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF71F771F70010"
    )
        port map (
      I0 => \n1q_m[3]_i_5__1_n_0\,
      I1 => \n1q_m[3]_i_4__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_6__1_n_0\,
      I4 => \n1q_m[3]_i_3__1_n_0\,
      I5 => \n1q_m[3]_i_2__1_n_0\,
      O => \n1q_m[2]_i_1__1_n_0\
    );
\n1q_m[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      I4 => \n1q_m[3]_i_5__1_n_0\,
      I5 => \n1q_m[3]_i_6__1_n_0\,
      O => \n1q_m[3]_i_1__1_n_0\
    );
\n1q_m[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__1_n_0\,
      I1 => p_0_in3_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_2__1_n_0\
    );
\n1q_m[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2__1_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[3]_i_3__1_n_0\
    );
\n1q_m[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n1q_m[3]_i_7__1_n_0\,
      O => \n1q_m[3]_i_4__1_n_0\
    );
\n1q_m[3]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3__1_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2__1_n_0\,
      I4 => p_0_in,
      O => \n1q_m[3]_i_5__1_n_0\
    );
\n1q_m[3]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n1q_m[3]_i_6__1_n_0\
    );
\n1q_m[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \din_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n1q_m[3]_i_7__1_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \din_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \din_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2__1_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__1_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1__1_n_0\
    );
\q_m_reg[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in,
      I1 => \q_m_reg[7]_i_2__1_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3__1_n_0\,
      I4 => p_0_in0_in,
      O => \q_m_reg[7]_i_1__1_n_0\
    );
\q_m_reg[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2__1_n_0\
    );
\q_m_reg[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \din_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3__1_n_0\
    );
\q_m_reg[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \din_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1__1_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \din_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[7]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[8]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser is
  port (
    ser_data_b : out STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser is
  signal expand_1 : STD_LOGIC;
  signal expand_2 : STD_LOGIC;
  signal NLW_OSERDESE2_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OSERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of OSERDESE2_slave : label is "PRIMITIVE";
begin
OSERDESE2_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_OSERDESE2_master_OFB_UNCONNECTED,
      OQ => ser_data_b,
      RST => AR(0),
      SHIFTIN1 => expand_1,
      SHIFTIN2 => expand_2,
      SHIFTOUT1 => NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_master_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_master_TQ_UNCONNECTED
    );
OSERDESE2_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_slave_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_slave_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED,
      SHIFTIN2 => NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED,
      SHIFTOUT1 => expand_1,
      SHIFTOUT2 => expand_2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_slave_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2 is
  port (
    ser_data_clk : out STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2 : entity is "pra_to_ser";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2 is
  signal expand_1 : STD_LOGIC;
  signal expand_2 : STD_LOGIC;
  signal NLW_OSERDESE2_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OSERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of OSERDESE2_slave : label is "PRIMITIVE";
begin
OSERDESE2_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_OSERDESE2_master_OFB_UNCONNECTED,
      OQ => ser_data_clk,
      RST => AR(0),
      SHIFTIN1 => expand_1,
      SHIFTIN2 => expand_2,
      SHIFTOUT1 => NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_master_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_master_TQ_UNCONNECTED
    );
OSERDESE2_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_slave_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_slave_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED,
      SHIFTIN2 => NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED,
      SHIFTOUT1 => expand_1,
      SHIFTOUT2 => expand_2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_slave_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3 is
  port (
    ser_data_g : out STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3 : entity is "pra_to_ser";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3 is
  signal expand_1 : STD_LOGIC;
  signal expand_2 : STD_LOGIC;
  signal NLW_OSERDESE2_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OSERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of OSERDESE2_slave : label is "PRIMITIVE";
begin
OSERDESE2_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_OSERDESE2_master_OFB_UNCONNECTED,
      OQ => ser_data_g,
      RST => AR(0),
      SHIFTIN1 => expand_1,
      SHIFTIN2 => expand_2,
      SHIFTOUT1 => NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_master_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_master_TQ_UNCONNECTED
    );
OSERDESE2_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_slave_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_slave_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED,
      SHIFTIN2 => NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED,
      SHIFTOUT1 => expand_1,
      SHIFTOUT2 => expand_2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_slave_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4 is
  port (
    ser_data_r : out STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4 : entity is "pra_to_ser";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4 is
  signal expand_1 : STD_LOGIC;
  signal expand_2 : STD_LOGIC;
  signal NLW_OSERDESE2_master_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_master_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_OSERDESE2_slave_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OSERDESE2_master : label is "PRIMITIVE";
  attribute BOX_TYPE of OSERDESE2_slave : label is "PRIMITIVE";
begin
OSERDESE2_master: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => Q(0),
      D2 => Q(1),
      D3 => Q(2),
      D4 => Q(3),
      D5 => Q(4),
      D6 => Q(5),
      D7 => Q(6),
      D8 => Q(7),
      OCE => '1',
      OFB => NLW_OSERDESE2_master_OFB_UNCONNECTED,
      OQ => ser_data_r,
      RST => AR(0),
      SHIFTIN1 => expand_1,
      SHIFTIN2 => expand_2,
      SHIFTOUT1 => NLW_OSERDESE2_master_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_OSERDESE2_master_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_master_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_master_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_master_TQ_UNCONNECTED
    );
OSERDESE2_slave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clk_x5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => Q(8),
      D4 => Q(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_OSERDESE2_slave_OFB_UNCONNECTED,
      OQ => NLW_OSERDESE2_slave_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => NLW_OSERDESE2_slave_SHIFTIN1_UNCONNECTED,
      SHIFTIN2 => NLW_OSERDESE2_slave_SHIFTIN2_UNCONNECTED,
      SHIFTOUT1 => expand_1,
      SHIFTOUT2 => expand_2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_OSERDESE2_slave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_OSERDESE2_slave_TFB_UNCONNECTED,
      TQ => NLW_OSERDESE2_slave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff is
  port (
    TMDS_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ser_data_b : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
     port map (
      I => ser_data_b,
      O => TMDS_data_p(0),
      OB => TMDS_data_n(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5 is
  port (
    TMDS_clk_p : out STD_LOGIC;
    TMDS_clk_n : out STD_LOGIC;
    ser_data_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5 : entity is "ser_to_diff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
     port map (
      I => ser_data_clk,
      O => TMDS_clk_p,
      OB => TMDS_clk_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6 is
  port (
    TMDS_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ser_data_g : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6 : entity is "ser_to_diff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
     port map (
      I => ser_data_g,
      O => TMDS_data_p(0),
      OB => TMDS_data_n(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7 is
  port (
    TMDS_data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ser_data_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7 : entity is "ser_to_diff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
     port map (
      I => ser_data_r,
      O => TMDS_data_p(0),
      OB => TMDS_data_n(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top is
  port (
    TMDS_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_clk_p : out STD_LOGIC;
    TMDS_clk_n : out STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    red_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    green_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    h_sync : in STD_LOGIC;
    v_sync : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top is
  signal RST0 : STD_LOGIC;
  signal TMDS_b_data : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal TMDS_g_data : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal TMDS_r_data : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal de_reg : STD_LOGIC;
  signal ser_data_b : STD_LOGIC;
  signal ser_data_clk : STD_LOGIC;
  signal ser_data_g : STD_LOGIC;
  signal ser_data_r : STD_LOGIC;
begin
u_encode_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_r_data(9 downto 0),
      de => de,
      de_reg => de_reg,
      pix_clk => pix_clk,
      red_data(7 downto 0) => red_data(7 downto 0),
      rst_n => rst_n
    );
u_encode_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_0
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_g_data(9 downto 0),
      de_reg => de_reg,
      green_data(7 downto 0) => green_data(7 downto 0),
      pix_clk => pix_clk
    );
u_encode_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encode_1
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_b_data(9 downto 0),
      blue_data(7 downto 0) => blue_data(7 downto 0),
      de_reg => de_reg,
      h_sync => h_sync,
      pix_clk => pix_clk,
      v_sync => v_sync
    );
u_pra_to_ser_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_b_data(9 downto 0),
      pix_clk => pix_clk,
      pix_clk_x5 => pix_clk_x5,
      ser_data_b => ser_data_b
    );
u_pra_to_ser_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_2
     port map (
      AR(0) => RST0,
      pix_clk => pix_clk,
      pix_clk_x5 => pix_clk_x5,
      ser_data_clk => ser_data_clk
    );
u_pra_to_ser_g: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_3
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_g_data(9 downto 0),
      pix_clk => pix_clk,
      pix_clk_x5 => pix_clk_x5,
      ser_data_g => ser_data_g
    );
u_pra_to_ser_r: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pra_to_ser_4
     port map (
      AR(0) => RST0,
      Q(9 downto 0) => TMDS_r_data(9 downto 0),
      pix_clk => pix_clk,
      pix_clk_x5 => pix_clk_x5,
      ser_data_r => ser_data_r
    );
u_ser_to_diff_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff
     port map (
      TMDS_data_n(0) => TMDS_data_n(2),
      TMDS_data_p(0) => TMDS_data_p(2),
      ser_data_b => ser_data_b
    );
u_ser_to_diff_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_5
     port map (
      TMDS_clk_n => TMDS_clk_n,
      TMDS_clk_p => TMDS_clk_p,
      ser_data_clk => ser_data_clk
    );
u_ser_to_diff_g: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_6
     port map (
      TMDS_data_n(0) => TMDS_data_n(1),
      TMDS_data_p(0) => TMDS_data_p(1),
      ser_data_g => ser_data_g
    );
u_ser_to_diff_r: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ser_to_diff_7
     port map (
      TMDS_data_n(0) => TMDS_data_n(0),
      TMDS_data_p(0) => TMDS_data_p(0),
      ser_data_r => ser_data_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pix_clk : in STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    h_sync : in STD_LOGIC;
    v_sync : in STD_LOGIC;
    red_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    TMDS_clk_p : out STD_LOGIC;
    TMDS_clk_n : out STD_LOGIC;
    TMDS_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_HDMI_top_0_0,HDMI_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HDMI_top,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of TMDS_clk_n : signal is "xilinx.com:signal:clock:1.0 TMDS_clk_n CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of TMDS_clk_n : signal is "XIL_INTERFACENAME TMDS_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of TMDS_clk_p : signal is "xilinx.com:signal:clock:1.0 TMDS_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of TMDS_clk_p : signal is "XIL_INTERFACENAME TMDS_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pix_clk : signal is "xilinx.com:signal:clock:1.0 pix_clk CLK";
  attribute X_INTERFACE_PARAMETER of pix_clk : signal is "XIL_INTERFACENAME pix_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  hdmi_en <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HDMI_top
     port map (
      TMDS_clk_n => TMDS_clk_n,
      TMDS_clk_p => TMDS_clk_p,
      TMDS_data_n(2 downto 0) => TMDS_data_n(2 downto 0),
      TMDS_data_p(2 downto 0) => TMDS_data_p(2 downto 0),
      blue_data(7 downto 0) => blue_data(7 downto 0),
      de => de,
      green_data(7 downto 0) => green_data(7 downto 0),
      h_sync => h_sync,
      pix_clk => pix_clk,
      pix_clk_x5 => pix_clk_x5,
      red_data(7 downto 0) => red_data(7 downto 0),
      rst_n => rst_n,
      v_sync => v_sync
    );
end STRUCTURE;
