-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May  4 13:54:50 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pix_frame_display_0_2_sim_netlist.vhdl
-- Design      : design_1_pix_frame_display_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display is
  port (
    \h_cnt_reg[2]_0\ : out STD_LOGIC;
    rom_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    hdmi_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_de : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_vsync : out STD_LOGIC;
    vio_active : in STD_LOGIC;
    vio_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vio_clk : in STD_LOGIC;
    vio_hsync : in STD_LOGIC;
    vio_vsync : in STD_LOGIC;
    rom_data : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display is
  signal frame_valid26_out : STD_LOGIC;
  signal h_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \h_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \^h_cnt_reg[2]_0\ : STD_LOGIC;
  signal \hdmi_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_10_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_11_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_12_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_13_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_14_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_15_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_16_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_17_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_18_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_19_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_20_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_21_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_6_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_8_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_9_n_0\ : STD_LOGIC;
  signal \hdmi_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rom_addr0_n_100 : STD_LOGIC;
  signal rom_addr0_n_101 : STD_LOGIC;
  signal rom_addr0_n_102 : STD_LOGIC;
  signal rom_addr0_n_103 : STD_LOGIC;
  signal rom_addr0_n_104 : STD_LOGIC;
  signal rom_addr0_n_105 : STD_LOGIC;
  signal rom_addr0_n_106 : STD_LOGIC;
  signal rom_addr0_n_107 : STD_LOGIC;
  signal rom_addr0_n_108 : STD_LOGIC;
  signal rom_addr0_n_109 : STD_LOGIC;
  signal rom_addr0_n_110 : STD_LOGIC;
  signal rom_addr0_n_111 : STD_LOGIC;
  signal rom_addr0_n_112 : STD_LOGIC;
  signal rom_addr0_n_113 : STD_LOGIC;
  signal rom_addr0_n_114 : STD_LOGIC;
  signal rom_addr0_n_115 : STD_LOGIC;
  signal rom_addr0_n_116 : STD_LOGIC;
  signal rom_addr0_n_117 : STD_LOGIC;
  signal rom_addr0_n_118 : STD_LOGIC;
  signal rom_addr0_n_119 : STD_LOGIC;
  signal rom_addr0_n_120 : STD_LOGIC;
  signal rom_addr0_n_121 : STD_LOGIC;
  signal rom_addr0_n_122 : STD_LOGIC;
  signal rom_addr0_n_123 : STD_LOGIC;
  signal rom_addr0_n_124 : STD_LOGIC;
  signal rom_addr0_n_125 : STD_LOGIC;
  signal rom_addr0_n_126 : STD_LOGIC;
  signal rom_addr0_n_127 : STD_LOGIC;
  signal rom_addr0_n_128 : STD_LOGIC;
  signal rom_addr0_n_129 : STD_LOGIC;
  signal rom_addr0_n_130 : STD_LOGIC;
  signal rom_addr0_n_131 : STD_LOGIC;
  signal rom_addr0_n_132 : STD_LOGIC;
  signal rom_addr0_n_133 : STD_LOGIC;
  signal rom_addr0_n_134 : STD_LOGIC;
  signal rom_addr0_n_135 : STD_LOGIC;
  signal rom_addr0_n_136 : STD_LOGIC;
  signal rom_addr0_n_137 : STD_LOGIC;
  signal rom_addr0_n_138 : STD_LOGIC;
  signal rom_addr0_n_139 : STD_LOGIC;
  signal rom_addr0_n_140 : STD_LOGIC;
  signal rom_addr0_n_141 : STD_LOGIC;
  signal rom_addr0_n_142 : STD_LOGIC;
  signal rom_addr0_n_143 : STD_LOGIC;
  signal rom_addr0_n_144 : STD_LOGIC;
  signal rom_addr0_n_145 : STD_LOGIC;
  signal rom_addr0_n_146 : STD_LOGIC;
  signal rom_addr0_n_147 : STD_LOGIC;
  signal rom_addr0_n_148 : STD_LOGIC;
  signal rom_addr0_n_149 : STD_LOGIC;
  signal rom_addr0_n_150 : STD_LOGIC;
  signal rom_addr0_n_151 : STD_LOGIC;
  signal rom_addr0_n_152 : STD_LOGIC;
  signal rom_addr0_n_153 : STD_LOGIC;
  signal rom_addr0_n_89 : STD_LOGIC;
  signal rom_addr0_n_90 : STD_LOGIC;
  signal rom_addr0_n_91 : STD_LOGIC;
  signal rom_addr0_n_92 : STD_LOGIC;
  signal rom_addr0_n_93 : STD_LOGIC;
  signal rom_addr0_n_94 : STD_LOGIC;
  signal rom_addr0_n_95 : STD_LOGIC;
  signal rom_addr0_n_96 : STD_LOGIC;
  signal rom_addr0_n_97 : STD_LOGIC;
  signal rom_addr0_n_98 : STD_LOGIC;
  signal rom_addr0_n_99 : STD_LOGIC;
  signal rom_valid_INST_0_i_1_n_0 : STD_LOGIC;
  signal rom_valid_INST_0_i_2_n_0 : STD_LOGIC;
  signal rom_valid_INST_0_i_3_n_0 : STD_LOGIC;
  signal rst_n0 : STD_LOGIC;
  signal rst_n0_i_1_n_0 : STD_LOGIC;
  signal rst_sync : STD_LOGIC;
  signal v_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \v_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_7_n_0\ : STD_LOGIC;
  signal NLW_rom_addr0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rom_addr0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_rom_addr0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_rom_addr0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rom_addr0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_rom_addr__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rom_addr__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_rom_addr__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_rom_addr__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rom_addr__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 14 );
  signal \NLW_rom_addr__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_cnt[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \h_cnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \h_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_cnt[6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \h_cnt[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \h_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hdmi_data[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hdmi_data[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hdmi_data[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hdmi_data[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hdmi_data[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hdmi_data[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hdmi_data[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hdmi_data[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hdmi_data[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hdmi_data[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hdmi_data[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hdmi_data[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \hdmi_data[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hdmi_data[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hdmi_data[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_12\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_13\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_14\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_16\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_17\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_19\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_20\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hdmi_data[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \hdmi_data[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \hdmi_data[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \hdmi_data[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \hdmi_data[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hdmi_data[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \hdmi_data[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \hdmi_data[9]_i_1\ : label is "soft_lutpair13";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rom_addr0 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \rom_addr__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of rom_valid_INST_0_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \v_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_4\ : label is "soft_lutpair0";
begin
  \h_cnt_reg[2]_0\ <= \^h_cnt_reg[2]_0\;
\h_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(0),
      O => p_0_in(0)
    );
\h_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(0),
      I2 => h_cnt(1),
      O => p_0_in(1)
    );
\h_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(0),
      I2 => h_cnt(1),
      I3 => h_cnt(2),
      O => p_0_in(2)
    );
\h_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(2),
      I2 => h_cnt(1),
      I3 => h_cnt(0),
      I4 => h_cnt(3),
      O => p_0_in(3)
    );
\h_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(0),
      I2 => h_cnt(1),
      I3 => h_cnt(2),
      I4 => h_cnt(3),
      I5 => h_cnt(4),
      O => p_0_in(4)
    );
\h_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(4),
      I2 => h_cnt(3),
      I3 => \h_cnt[6]_i_2_n_0\,
      I4 => h_cnt(5),
      O => p_0_in(5)
    );
\h_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(5),
      I2 => h_cnt(4),
      I3 => h_cnt(3),
      I4 => \h_cnt[6]_i_2_n_0\,
      I5 => h_cnt(6),
      O => p_0_in(6)
    );
\h_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => h_cnt(0),
      I1 => h_cnt(1),
      I2 => h_cnt(2),
      O => \h_cnt[6]_i_2_n_0\
    );
\h_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \h_cnt[9]_i_3_n_0\,
      I1 => h_cnt(6),
      I2 => \h_cnt[7]_i_2_n_0\,
      I3 => h_cnt(4),
      I4 => h_cnt(5),
      I5 => h_cnt(7),
      O => p_0_in(7)
    );
\h_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => h_cnt(3),
      I1 => h_cnt(2),
      I2 => h_cnt(1),
      I3 => h_cnt(0),
      O => \h_cnt[7]_i_2_n_0\
    );
\h_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => h_cnt(7),
      I1 => h_cnt(6),
      I2 => \h_cnt[9]_i_2_n_0\,
      I3 => \h_cnt[9]_i_3_n_0\,
      I4 => h_cnt(8),
      O => p_0_in(8)
    );
\h_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \h_cnt[9]_i_2_n_0\,
      I1 => h_cnt(6),
      I2 => h_cnt(7),
      I3 => h_cnt(8),
      I4 => \h_cnt[9]_i_3_n_0\,
      I5 => h_cnt(9),
      O => p_0_in(9)
    );
\h_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_cnt(0),
      I1 => h_cnt(1),
      I2 => h_cnt(2),
      I3 => h_cnt(3),
      I4 => h_cnt(4),
      I5 => h_cnt(5),
      O => \h_cnt[9]_i_2_n_0\
    );
\h_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FEF00000000"
    )
        port map (
      I0 => \v_cnt[9]_i_3_n_0\,
      I1 => \h_cnt[6]_i_2_n_0\,
      I2 => h_cnt(9),
      I3 => \v_cnt[9]_i_4_n_0\,
      I4 => vio_hsync,
      I5 => vio_active,
      O => \h_cnt[9]_i_3_n_0\
    );
\h_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(0),
      Q => h_cnt(0)
    );
\h_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(1),
      Q => h_cnt(1)
    );
\h_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(2),
      Q => h_cnt(2)
    );
\h_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(3),
      Q => h_cnt(3)
    );
\h_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(4),
      Q => h_cnt(4)
    );
\h_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(5),
      Q => h_cnt(5)
    );
\h_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(6),
      Q => h_cnt(6)
    );
\h_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(7),
      Q => h_cnt(7)
    );
\h_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(8),
      Q => h_cnt(8)
    );
\h_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_0_in(9),
      Q => h_cnt(9)
    );
\hdmi_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(0),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[0]_i_1_n_0\
    );
\hdmi_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(10),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[10]_i_1_n_0\
    );
\hdmi_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(11),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[11]_i_1_n_0\
    );
\hdmi_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(12),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[12]_i_1_n_0\
    );
\hdmi_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(13),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[13]_i_1_n_0\
    );
\hdmi_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(14),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[14]_i_1_n_0\
    );
\hdmi_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(15),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[15]_i_1_n_0\
    );
\hdmi_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(16),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[16]_i_1_n_0\
    );
\hdmi_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(17),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[17]_i_1_n_0\
    );
\hdmi_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(18),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[18]_i_1_n_0\
    );
\hdmi_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(19),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[19]_i_1_n_0\
    );
\hdmi_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(1),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[1]_i_1_n_0\
    );
\hdmi_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(20),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[20]_i_1_n_0\
    );
\hdmi_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(21),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[21]_i_1_n_0\
    );
\hdmi_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(22),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[22]_i_1_n_0\
    );
\hdmi_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(23),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[23]_i_1_n_0\
    );
\hdmi_data[23]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => h_cnt(4),
      I1 => h_cnt(3),
      I2 => h_cnt(2),
      O => \hdmi_data[23]_i_10_n_0\
    );
\hdmi_data[23]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_cnt(6),
      I1 => h_cnt(5),
      O => \hdmi_data[23]_i_11_n_0\
    );
\hdmi_data[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_cnt(4),
      I1 => h_cnt(7),
      I2 => h_cnt(5),
      I3 => h_cnt(6),
      O => \hdmi_data[23]_i_12_n_0\
    );
\hdmi_data[23]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => v_cnt(9),
      I1 => v_cnt(8),
      I2 => v_cnt(7),
      I3 => v_cnt(6),
      O => \hdmi_data[23]_i_13_n_0\
    );
\hdmi_data[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => v_cnt(6),
      I1 => v_cnt(7),
      I2 => v_cnt(9),
      I3 => v_cnt(8),
      O => \hdmi_data[23]_i_14_n_0\
    );
\hdmi_data[23]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => v_cnt(3),
      I1 => v_cnt(7),
      I2 => v_cnt(5),
      I3 => v_cnt(4),
      O => \hdmi_data[23]_i_15_n_0\
    );
\hdmi_data[23]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => h_cnt(2),
      I1 => h_cnt(1),
      I2 => h_cnt(0),
      O => \hdmi_data[23]_i_16_n_0\
    );
\hdmi_data[23]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => v_cnt(9),
      I1 => h_cnt(9),
      I2 => h_cnt(8),
      I3 => h_cnt(3),
      O => \hdmi_data[23]_i_17_n_0\
    );
\hdmi_data[23]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001FFFFFFFFF"
    )
        port map (
      I0 => v_cnt(4),
      I1 => v_cnt(3),
      I2 => v_cnt(5),
      I3 => v_cnt(6),
      I4 => v_cnt(7),
      I5 => v_cnt(8),
      O => \hdmi_data[23]_i_18_n_0\
    );
\hdmi_data[23]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => h_cnt(4),
      I1 => h_cnt(5),
      I2 => h_cnt(6),
      O => \hdmi_data[23]_i_19_n_0\
    );
\hdmi_data[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_sync,
      O => \hdmi_data[23]_i_2_n_0\
    );
\hdmi_data[23]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => h_cnt(3),
      I1 => h_cnt(8),
      I2 => h_cnt(7),
      I3 => v_cnt(9),
      I4 => h_cnt(9),
      O => \hdmi_data[23]_i_20_n_0\
    );
\hdmi_data[23]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => v_cnt(4),
      I1 => v_cnt(5),
      I2 => v_cnt(7),
      I3 => v_cnt(6),
      I4 => v_cnt(9),
      I5 => v_cnt(8),
      O => \hdmi_data[23]_i_21_n_0\
    );
\hdmi_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFFFFFFEA"
    )
        port map (
      I0 => \hdmi_data[23]_i_4_n_0\,
      I1 => \hdmi_data[23]_i_5_n_0\,
      I2 => \hdmi_data[23]_i_6_n_0\,
      I3 => frame_valid26_out,
      I4 => \hdmi_data[23]_i_8_n_0\,
      I5 => \hdmi_data[23]_i_9_n_0\,
      O => \hdmi_data[23]_i_3_n_0\
    );
\hdmi_data[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => rom_data,
      I1 => rom_valid_INST_0_i_3_n_0,
      I2 => rom_valid_INST_0_i_2_n_0,
      I3 => \hdmi_data[23]_i_10_n_0\,
      I4 => \hdmi_data[23]_i_11_n_0\,
      I5 => \v_cnt[9]_i_4_n_0\,
      O => \hdmi_data[23]_i_4_n_0\
    );
\hdmi_data[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054000000"
    )
        port map (
      I0 => h_cnt(9),
      I1 => h_cnt(3),
      I2 => \hdmi_data[23]_i_12_n_0\,
      I3 => h_cnt(8),
      I4 => \v_cnt[9]_i_3_n_0\,
      I5 => h_cnt(7),
      O => \hdmi_data[23]_i_5_n_0\
    );
\hdmi_data[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => v_cnt(4),
      I1 => v_cnt(5),
      I2 => v_cnt(3),
      I3 => \hdmi_data[23]_i_13_n_0\,
      I4 => \v_cnt[6]_i_2_n_0\,
      O => \hdmi_data[23]_i_6_n_0\
    );
\hdmi_data[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E00000000000"
    )
        port map (
      I0 => \hdmi_data[23]_i_14_n_0\,
      I1 => \hdmi_data[23]_i_15_n_0\,
      I2 => \hdmi_data[23]_i_16_n_0\,
      I3 => \hdmi_data[23]_i_17_n_0\,
      I4 => \hdmi_data[23]_i_12_n_0\,
      I5 => \hdmi_data[23]_i_18_n_0\,
      O => frame_valid26_out
    );
\hdmi_data[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000000000000"
    )
        port map (
      I0 => \hdmi_data[23]_i_14_n_0\,
      I1 => \hdmi_data[23]_i_15_n_0\,
      I2 => \h_cnt[6]_i_2_n_0\,
      I3 => \hdmi_data[23]_i_19_n_0\,
      I4 => \hdmi_data[23]_i_20_n_0\,
      I5 => \hdmi_data[23]_i_18_n_0\,
      O => \hdmi_data[23]_i_8_n_0\
    );
\hdmi_data[23]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \hdmi_data[23]_i_21_n_0\,
      I1 => v_cnt(3),
      I2 => v_cnt(2),
      I3 => v_cnt(0),
      I4 => v_cnt(1),
      O => \hdmi_data[23]_i_9_n_0\
    );
\hdmi_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(2),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[2]_i_1_n_0\
    );
\hdmi_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(3),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[3]_i_1_n_0\
    );
\hdmi_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(4),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[4]_i_1_n_0\
    );
\hdmi_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(5),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[5]_i_1_n_0\
    );
\hdmi_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(6),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[6]_i_1_n_0\
    );
\hdmi_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(7),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[7]_i_1_n_0\
    );
\hdmi_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(8),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[8]_i_1_n_0\
    );
\hdmi_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => vio_active,
      I1 => \^h_cnt_reg[2]_0\,
      I2 => vio_data(9),
      I3 => \hdmi_data[23]_i_3_n_0\,
      O => \hdmi_data[9]_i_1_n_0\
    );
\hdmi_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[0]_i_1_n_0\,
      Q => hdmi_data(0)
    );
\hdmi_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[10]_i_1_n_0\,
      Q => hdmi_data(10)
    );
\hdmi_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[11]_i_1_n_0\,
      Q => hdmi_data(11)
    );
\hdmi_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[12]_i_1_n_0\,
      Q => hdmi_data(12)
    );
\hdmi_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[13]_i_1_n_0\,
      Q => hdmi_data(13)
    );
\hdmi_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[14]_i_1_n_0\,
      Q => hdmi_data(14)
    );
\hdmi_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[15]_i_1_n_0\,
      Q => hdmi_data(15)
    );
\hdmi_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[16]_i_1_n_0\,
      Q => hdmi_data(16)
    );
\hdmi_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[17]_i_1_n_0\,
      Q => hdmi_data(17)
    );
\hdmi_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[18]_i_1_n_0\,
      Q => hdmi_data(18)
    );
\hdmi_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[19]_i_1_n_0\,
      Q => hdmi_data(19)
    );
\hdmi_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[1]_i_1_n_0\,
      Q => hdmi_data(1)
    );
\hdmi_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[20]_i_1_n_0\,
      Q => hdmi_data(20)
    );
\hdmi_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[21]_i_1_n_0\,
      Q => hdmi_data(21)
    );
\hdmi_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[22]_i_1_n_0\,
      Q => hdmi_data(22)
    );
\hdmi_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[23]_i_1_n_0\,
      Q => hdmi_data(23)
    );
\hdmi_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[2]_i_1_n_0\,
      Q => hdmi_data(2)
    );
\hdmi_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[3]_i_1_n_0\,
      Q => hdmi_data(3)
    );
\hdmi_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[4]_i_1_n_0\,
      Q => hdmi_data(4)
    );
\hdmi_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[5]_i_1_n_0\,
      Q => hdmi_data(5)
    );
\hdmi_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[6]_i_1_n_0\,
      Q => hdmi_data(6)
    );
\hdmi_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[7]_i_1_n_0\,
      Q => hdmi_data(7)
    );
\hdmi_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[8]_i_1_n_0\,
      Q => hdmi_data(8)
    );
\hdmi_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => \hdmi_data[9]_i_1_n_0\,
      Q => hdmi_data(9)
    );
hdmi_de_reg: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => vio_active,
      Q => hdmi_de
    );
hdmi_hsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => vio_hsync,
      Q => hdmi_hsync
    );
hdmi_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => vio_vsync,
      Q => hdmi_vsync
    );
rom_addr0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => v_cnt(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_rom_addr0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_rom_addr0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_rom_addr0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_rom_addr0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_rom_addr0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_rom_addr0_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_rom_addr0_P_UNCONNECTED(47 downto 17),
      P(16) => rom_addr0_n_89,
      P(15) => rom_addr0_n_90,
      P(14) => rom_addr0_n_91,
      P(13) => rom_addr0_n_92,
      P(12) => rom_addr0_n_93,
      P(11) => rom_addr0_n_94,
      P(10) => rom_addr0_n_95,
      P(9) => rom_addr0_n_96,
      P(8) => rom_addr0_n_97,
      P(7) => rom_addr0_n_98,
      P(6) => rom_addr0_n_99,
      P(5) => rom_addr0_n_100,
      P(4) => rom_addr0_n_101,
      P(3) => rom_addr0_n_102,
      P(2) => rom_addr0_n_103,
      P(1) => rom_addr0_n_104,
      P(0) => rom_addr0_n_105,
      PATTERNBDETECT => NLW_rom_addr0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_rom_addr0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => rom_addr0_n_106,
      PCOUT(46) => rom_addr0_n_107,
      PCOUT(45) => rom_addr0_n_108,
      PCOUT(44) => rom_addr0_n_109,
      PCOUT(43) => rom_addr0_n_110,
      PCOUT(42) => rom_addr0_n_111,
      PCOUT(41) => rom_addr0_n_112,
      PCOUT(40) => rom_addr0_n_113,
      PCOUT(39) => rom_addr0_n_114,
      PCOUT(38) => rom_addr0_n_115,
      PCOUT(37) => rom_addr0_n_116,
      PCOUT(36) => rom_addr0_n_117,
      PCOUT(35) => rom_addr0_n_118,
      PCOUT(34) => rom_addr0_n_119,
      PCOUT(33) => rom_addr0_n_120,
      PCOUT(32) => rom_addr0_n_121,
      PCOUT(31) => rom_addr0_n_122,
      PCOUT(30) => rom_addr0_n_123,
      PCOUT(29) => rom_addr0_n_124,
      PCOUT(28) => rom_addr0_n_125,
      PCOUT(27) => rom_addr0_n_126,
      PCOUT(26) => rom_addr0_n_127,
      PCOUT(25) => rom_addr0_n_128,
      PCOUT(24) => rom_addr0_n_129,
      PCOUT(23) => rom_addr0_n_130,
      PCOUT(22) => rom_addr0_n_131,
      PCOUT(21) => rom_addr0_n_132,
      PCOUT(20) => rom_addr0_n_133,
      PCOUT(19) => rom_addr0_n_134,
      PCOUT(18) => rom_addr0_n_135,
      PCOUT(17) => rom_addr0_n_136,
      PCOUT(16) => rom_addr0_n_137,
      PCOUT(15) => rom_addr0_n_138,
      PCOUT(14) => rom_addr0_n_139,
      PCOUT(13) => rom_addr0_n_140,
      PCOUT(12) => rom_addr0_n_141,
      PCOUT(11) => rom_addr0_n_142,
      PCOUT(10) => rom_addr0_n_143,
      PCOUT(9) => rom_addr0_n_144,
      PCOUT(8) => rom_addr0_n_145,
      PCOUT(7) => rom_addr0_n_146,
      PCOUT(6) => rom_addr0_n_147,
      PCOUT(5) => rom_addr0_n_148,
      PCOUT(4) => rom_addr0_n_149,
      PCOUT(3) => rom_addr0_n_150,
      PCOUT(2) => rom_addr0_n_151,
      PCOUT(1) => rom_addr0_n_152,
      PCOUT(0) => rom_addr0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_rom_addr0_UNDERFLOW_UNCONNECTED
    );
\rom_addr__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_rom_addr__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 10) => B"00000000",
      B(9 downto 0) => h_cnt(9 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_rom_addr__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111110111100100",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_rom_addr__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_rom_addr__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_rom_addr__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0011111",
      OVERFLOW => \NLW_rom_addr__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 14) => \NLW_rom_addr__0_P_UNCONNECTED\(47 downto 14),
      P(13 downto 0) => rom_addr(13 downto 0),
      PATTERNBDETECT => \NLW_rom_addr__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_rom_addr__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => rom_addr0_n_106,
      PCIN(46) => rom_addr0_n_107,
      PCIN(45) => rom_addr0_n_108,
      PCIN(44) => rom_addr0_n_109,
      PCIN(43) => rom_addr0_n_110,
      PCIN(42) => rom_addr0_n_111,
      PCIN(41) => rom_addr0_n_112,
      PCIN(40) => rom_addr0_n_113,
      PCIN(39) => rom_addr0_n_114,
      PCIN(38) => rom_addr0_n_115,
      PCIN(37) => rom_addr0_n_116,
      PCIN(36) => rom_addr0_n_117,
      PCIN(35) => rom_addr0_n_118,
      PCIN(34) => rom_addr0_n_119,
      PCIN(33) => rom_addr0_n_120,
      PCIN(32) => rom_addr0_n_121,
      PCIN(31) => rom_addr0_n_122,
      PCIN(30) => rom_addr0_n_123,
      PCIN(29) => rom_addr0_n_124,
      PCIN(28) => rom_addr0_n_125,
      PCIN(27) => rom_addr0_n_126,
      PCIN(26) => rom_addr0_n_127,
      PCIN(25) => rom_addr0_n_128,
      PCIN(24) => rom_addr0_n_129,
      PCIN(23) => rom_addr0_n_130,
      PCIN(22) => rom_addr0_n_131,
      PCIN(21) => rom_addr0_n_132,
      PCIN(20) => rom_addr0_n_133,
      PCIN(19) => rom_addr0_n_134,
      PCIN(18) => rom_addr0_n_135,
      PCIN(17) => rom_addr0_n_136,
      PCIN(16) => rom_addr0_n_137,
      PCIN(15) => rom_addr0_n_138,
      PCIN(14) => rom_addr0_n_139,
      PCIN(13) => rom_addr0_n_140,
      PCIN(12) => rom_addr0_n_141,
      PCIN(11) => rom_addr0_n_142,
      PCIN(10) => rom_addr0_n_143,
      PCIN(9) => rom_addr0_n_144,
      PCIN(8) => rom_addr0_n_145,
      PCIN(7) => rom_addr0_n_146,
      PCIN(6) => rom_addr0_n_147,
      PCIN(5) => rom_addr0_n_148,
      PCIN(4) => rom_addr0_n_149,
      PCIN(3) => rom_addr0_n_150,
      PCIN(2) => rom_addr0_n_151,
      PCIN(1) => rom_addr0_n_152,
      PCIN(0) => rom_addr0_n_153,
      PCOUT(47 downto 0) => \NLW_rom_addr__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_rom_addr__0_UNDERFLOW_UNCONNECTED\
    );
rom_valid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA000000000000"
    )
        port map (
      I0 => rom_valid_INST_0_i_1_n_0,
      I1 => h_cnt(2),
      I2 => h_cnt(3),
      I3 => h_cnt(4),
      I4 => rom_valid_INST_0_i_2_n_0,
      I5 => rom_valid_INST_0_i_3_n_0,
      O => \^h_cnt_reg[2]_0\
    );
rom_valid_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => h_cnt(5),
      I1 => h_cnt(6),
      I2 => h_cnt(7),
      I3 => h_cnt(8),
      O => rom_valid_INST_0_i_1_n_0
    );
rom_valid_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => h_cnt(8),
      I1 => h_cnt(7),
      I2 => h_cnt(9),
      I3 => v_cnt(7),
      I4 => v_cnt(9),
      I5 => v_cnt(8),
      O => rom_valid_INST_0_i_2_n_0
    );
rom_valid_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => v_cnt(2),
      I1 => v_cnt(3),
      I2 => v_cnt(4),
      I3 => v_cnt(6),
      I4 => v_cnt(5),
      O => rom_valid_INST_0_i_3_n_0
    );
rst_n0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => rst_n0_i_1_n_0
    );
rst_n0_reg: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => rst_n0_i_1_n_0,
      D => '1',
      Q => rst_n0
    );
rst_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => '1',
      CLR => rst_n0_i_1_n_0,
      D => rst_n0,
      Q => rst_sync
    );
\v_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(0),
      O => p_1_in(0)
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(0),
      I2 => v_cnt(1),
      O => p_1_in(1)
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(0),
      I2 => v_cnt(1),
      I3 => v_cnt(2),
      O => p_1_in(2)
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(2),
      I2 => v_cnt(1),
      I3 => v_cnt(0),
      I4 => v_cnt(3),
      O => p_1_in(3)
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(0),
      I2 => v_cnt(1),
      I3 => v_cnt(2),
      I4 => v_cnt(3),
      I5 => v_cnt(4),
      O => p_1_in(4)
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \v_cnt[9]_i_6_n_0\,
      I1 => v_cnt(4),
      I2 => v_cnt(3),
      I3 => \v_cnt[6]_i_2_n_0\,
      I4 => v_cnt(5),
      O => p_1_in(5)
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000800000"
    )
        port map (
      I0 => v_cnt(5),
      I1 => v_cnt(4),
      I2 => v_cnt(3),
      I3 => \v_cnt[6]_i_2_n_0\,
      I4 => \v_cnt[9]_i_6_n_0\,
      I5 => v_cnt(6),
      O => p_1_in(6)
    );
\v_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => v_cnt(0),
      I1 => v_cnt(1),
      I2 => v_cnt(2),
      O => \v_cnt[6]_i_2_n_0\
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \v_cnt[9]_i_5_n_0\,
      I1 => v_cnt(6),
      I2 => \v_cnt[9]_i_6_n_0\,
      I3 => v_cnt(7),
      O => p_1_in(7)
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => v_cnt(7),
      I1 => v_cnt(6),
      I2 => \v_cnt[9]_i_5_n_0\,
      I3 => \v_cnt[9]_i_6_n_0\,
      I4 => v_cnt(8),
      O => p_1_in(8)
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \v_cnt[9]_i_3_n_0\,
      I1 => \v_cnt[9]_i_4_n_0\,
      I2 => vio_active,
      I3 => h_cnt(9),
      I4 => \h_cnt[6]_i_2_n_0\,
      I5 => vio_vsync,
      O => \v_cnt[9]_i_1_n_0\
    );
\v_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \v_cnt[9]_i_5_n_0\,
      I1 => v_cnt(6),
      I2 => v_cnt(7),
      I3 => v_cnt(8),
      I4 => \v_cnt[9]_i_6_n_0\,
      I5 => v_cnt(9),
      O => p_1_in(9)
    );
\v_cnt[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => h_cnt(6),
      I1 => h_cnt(5),
      I2 => h_cnt(4),
      I3 => h_cnt(3),
      O => \v_cnt[9]_i_3_n_0\
    );
\v_cnt[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => h_cnt(8),
      I1 => h_cnt(7),
      O => \v_cnt[9]_i_4_n_0\
    );
\v_cnt[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => v_cnt(5),
      I1 => v_cnt(4),
      I2 => v_cnt(3),
      I3 => v_cnt(2),
      I4 => v_cnt(1),
      I5 => v_cnt(0),
      O => \v_cnt[9]_i_5_n_0\
    );
\v_cnt[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => v_cnt(9),
      I1 => v_cnt(8),
      I2 => v_cnt(7),
      I3 => \v_cnt[9]_i_7_n_0\,
      I4 => vio_vsync,
      O => \v_cnt[9]_i_6_n_0\
    );
\v_cnt[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004000"
    )
        port map (
      I0 => \v_cnt[6]_i_2_n_0\,
      I1 => v_cnt(4),
      I2 => v_cnt(3),
      I3 => v_cnt(6),
      I4 => v_cnt(5),
      O => \v_cnt[9]_i_7_n_0\
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(0),
      Q => v_cnt(0)
    );
\v_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(1),
      Q => v_cnt(1)
    );
\v_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(2),
      Q => v_cnt(2)
    );
\v_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(3),
      Q => v_cnt(3)
    );
\v_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(4),
      Q => v_cnt(4)
    );
\v_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(5),
      Q => v_cnt(5)
    );
\v_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(6),
      Q => v_cnt(6)
    );
\v_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(7),
      Q => v_cnt(7)
    );
\v_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(8),
      Q => v_cnt(8)
    );
\v_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vio_clk,
      CE => \v_cnt[9]_i_1_n_0\,
      CLR => \hdmi_data[23]_i_2_n_0\,
      D => p_1_in(9),
      Q => v_cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    vio_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    vio_active : in STD_LOGIC;
    vio_hsync : in STD_LOGIC;
    vio_vsync : in STD_LOGIC;
    vio_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rom_data : in STD_LOGIC;
    rom_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rom_valid : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_de : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_vsync : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pix_frame_display_0_2,pix_frame_display,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pix_frame_display,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vio_clk : signal is "xilinx.com:signal:clock:1.0 vio_clk CLK";
  attribute X_INTERFACE_PARAMETER of vio_clk : signal is "XIL_INTERFACENAME vio_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pix_frame_display
     port map (
      \h_cnt_reg[2]_0\ => rom_valid,
      hdmi_data(23 downto 0) => hdmi_data(23 downto 0),
      hdmi_de => hdmi_de,
      hdmi_hsync => hdmi_hsync,
      hdmi_vsync => hdmi_vsync,
      rom_addr(13 downto 0) => rom_addr(13 downto 0),
      rom_data => rom_data,
      sys_rst_n => sys_rst_n,
      vio_active => vio_active,
      vio_clk => vio_clk,
      vio_data(23 downto 0) => vio_data(23 downto 0),
      vio_hsync => vio_hsync,
      vio_vsync => vio_vsync
    );
end STRUCTURE;
