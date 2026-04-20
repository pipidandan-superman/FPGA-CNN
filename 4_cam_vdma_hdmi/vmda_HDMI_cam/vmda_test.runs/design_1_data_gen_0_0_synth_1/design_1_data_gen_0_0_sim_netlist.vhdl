-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 13:52:38 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_data_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_data_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen is
  port (
    data_r_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_g_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_g_o[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_g_o[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_g_o[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_g_o[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_g_o[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_g_o[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_g_o[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_g_o[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_r_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_r_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_r_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_r_o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_r_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_r_o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_r_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_r_o[7]_INST_0\ : label is "soft_lutpair3";
begin
\data_g_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(0),
      O => data_g_o(0)
    );
\data_g_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(1),
      O => data_g_o(1)
    );
\data_g_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(2),
      O => data_g_o(2)
    );
\data_g_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(3),
      O => data_g_o(3)
    );
\data_g_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(4),
      O => data_g_o(4)
    );
\data_g_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(5),
      O => data_g_o(5)
    );
\data_g_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(6),
      O => data_g_o(6)
    );
\data_g_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(7),
      O => data_g_o(7)
    );
\data_r_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(8),
      O => data_r_o(0)
    );
\data_r_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(9),
      O => data_r_o(1)
    );
\data_r_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(10),
      O => data_r_o(2)
    );
\data_r_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(11),
      O => data_r_o(3)
    );
\data_r_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(12),
      O => data_r_o(4)
    );
\data_r_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(13),
      O => data_r_o(5)
    );
\data_r_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(14),
      O => data_r_o(6)
    );
\data_r_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(15),
      O => data_r_o(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    de : in STD_LOGIC;
    data_r_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_g_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_b_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_data_gen_0_0,data_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data_gen,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
\data_b_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(0),
      O => data_b_o(0)
    );
\data_b_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(1),
      O => data_b_o(1)
    );
\data_b_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(2),
      O => data_b_o(2)
    );
\data_b_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(3),
      O => data_b_o(3)
    );
\data_b_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(4),
      O => data_b_o(4)
    );
\data_b_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(5),
      O => data_b_o(5)
    );
\data_b_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(6),
      O => data_b_o(6)
    );
\data_b_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => de,
      I1 => data_i(7),
      O => data_b_o(7)
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_gen
     port map (
      data_g_o(7 downto 0) => data_g_o(7 downto 0),
      data_i(15 downto 0) => data_i(23 downto 8),
      data_r_o(7 downto 0) => data_r_o(7 downto 0),
      de => de
    );
end STRUCTURE;
