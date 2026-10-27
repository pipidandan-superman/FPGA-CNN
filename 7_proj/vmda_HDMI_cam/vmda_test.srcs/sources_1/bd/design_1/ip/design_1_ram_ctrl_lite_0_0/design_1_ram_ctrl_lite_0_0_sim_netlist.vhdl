-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Oct 26 11:09:26 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ram_ctrl_lite_0_0_sim_netlist.vhdl
-- Design      : design_1_ram_ctrl_lite_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite is
  port (
    cam_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cam_done : out STD_LOGIC;
    pool_valid : in STD_LOGIC;
    pclk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite is
  signal \^cam_addr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cam_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \cam_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \cam_addr[8]_i_4_n_0\ : STD_LOGIC;
  signal \cam_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \cam_addr[9]_i_3_n_0\ : STD_LOGIC;
  signal cam_addr_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cam_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cam_addr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cam_addr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cam_addr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cam_addr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cam_addr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cam_addr[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cam_addr[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cam_addr[8]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cam_addr[8]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cam_addr[9]_i_3\ : label is "soft_lutpair1";
begin
  cam_addr(9 downto 0) <= \^cam_addr\(9 downto 0);
\cam_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cam_addr\(0),
      O => cam_addr_0(0)
    );
\cam_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^cam_addr\(1),
      I1 => \^cam_addr\(0),
      O => cam_addr_0(1)
    );
\cam_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^cam_addr\(2),
      I1 => \^cam_addr\(0),
      I2 => \^cam_addr\(1),
      O => cam_addr_0(2)
    );
\cam_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^cam_addr\(3),
      I1 => \^cam_addr\(1),
      I2 => \^cam_addr\(0),
      I3 => \^cam_addr\(2),
      O => cam_addr_0(3)
    );
\cam_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00D"
    )
        port map (
      I0 => \^cam_addr\(8),
      I1 => \cam_addr[8]_i_2_n_0\,
      I2 => \^cam_addr\(4),
      I3 => \cam_addr[8]_i_4_n_0\,
      O => cam_addr_0(4)
    );
\cam_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F00DD0"
    )
        port map (
      I0 => \^cam_addr\(8),
      I1 => \cam_addr[8]_i_2_n_0\,
      I2 => \^cam_addr\(5),
      I3 => \^cam_addr\(4),
      I4 => \cam_addr[8]_i_4_n_0\,
      O => cam_addr_0(5)
    );
\cam_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00DD0D0D0"
    )
        port map (
      I0 => \^cam_addr\(8),
      I1 => \cam_addr[8]_i_2_n_0\,
      I2 => \^cam_addr\(6),
      I3 => \^cam_addr\(5),
      I4 => \^cam_addr\(4),
      I5 => \cam_addr[8]_i_4_n_0\,
      O => cam_addr_0(6)
    );
\cam_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00DD0D0D0"
    )
        port map (
      I0 => \^cam_addr\(8),
      I1 => \cam_addr[8]_i_2_n_0\,
      I2 => \^cam_addr\(7),
      I3 => \^cam_addr\(6),
      I4 => \cam_addr[8]_i_3_n_0\,
      I5 => \cam_addr[8]_i_4_n_0\,
      O => cam_addr_0(7)
    );
\cam_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC38888888"
    )
        port map (
      I0 => \cam_addr[8]_i_2_n_0\,
      I1 => \^cam_addr\(8),
      I2 => \cam_addr[8]_i_3_n_0\,
      I3 => \^cam_addr\(6),
      I4 => \^cam_addr\(7),
      I5 => \cam_addr[8]_i_4_n_0\,
      O => cam_addr_0(8)
    );
\cam_addr[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \^cam_addr\(4),
      I1 => \^cam_addr\(7),
      I2 => \^cam_addr\(9),
      I3 => \^cam_addr\(6),
      I4 => \^cam_addr\(5),
      O => \cam_addr[8]_i_2_n_0\
    );
\cam_addr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cam_addr\(4),
      I1 => \^cam_addr\(5),
      O => \cam_addr[8]_i_3_n_0\
    );
\cam_addr[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^cam_addr\(2),
      I1 => \^cam_addr\(0),
      I2 => \^cam_addr\(1),
      I3 => \^cam_addr\(3),
      O => \cam_addr[8]_i_4_n_0\
    );
\cam_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAA8"
    )
        port map (
      I0 => \^cam_addr\(9),
      I1 => \^cam_addr\(4),
      I2 => \^cam_addr\(5),
      I3 => \^cam_addr\(6),
      I4 => \^cam_addr\(7),
      I5 => \cam_addr[9]_i_3_n_0\,
      O => cam_addr_0(9)
    );
\cam_addr[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \cam_addr[9]_i_2_n_0\
    );
\cam_addr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^cam_addr\(3),
      I1 => \^cam_addr\(1),
      I2 => \^cam_addr\(0),
      I3 => \^cam_addr\(2),
      I4 => \^cam_addr\(8),
      O => \cam_addr[9]_i_3_n_0\
    );
\cam_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(0),
      Q => \^cam_addr\(0)
    );
\cam_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(1),
      Q => \^cam_addr\(1)
    );
\cam_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(2),
      Q => \^cam_addr\(2)
    );
\cam_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(3),
      Q => \^cam_addr\(3)
    );
\cam_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(4),
      Q => \^cam_addr\(4)
    );
\cam_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(5),
      Q => \^cam_addr\(5)
    );
\cam_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(6),
      Q => \^cam_addr\(6)
    );
\cam_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(7),
      Q => \^cam_addr\(7)
    );
\cam_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(8),
      Q => \^cam_addr\(8)
    );
\cam_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => pool_valid,
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_addr_0(9),
      Q => \^cam_addr\(9)
    );
cam_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => pool_valid,
      I1 => \cam_addr[8]_i_4_n_0\,
      I2 => \^cam_addr\(8),
      I3 => \cam_addr[8]_i_2_n_0\,
      O => cam_done_i_1_n_0
    );
cam_done_reg: unisim.vcomponents.FDCE
     port map (
      C => pclk,
      CE => '1',
      CLR => \cam_addr[9]_i_2_n_0\,
      D => cam_done_i_1_n_0,
      Q => cam_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pclk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pool_valid : in STD_LOGIC;
    pool_data : in STD_LOGIC;
    cam_we : out STD_LOGIC;
    cam_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cam_data : out STD_LOGIC;
    cam_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ram_ctrl_lite_0_0,ram_ctrl_lite,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ram_ctrl_lite,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^pool_data\ : STD_LOGIC;
  signal \^pool_valid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^pool_data\ <= pool_data;
  \^pool_valid\ <= pool_valid;
  cam_data <= \^pool_data\;
  cam_we <= \^pool_valid\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram_ctrl_lite
     port map (
      cam_addr(9 downto 0) => cam_addr(9 downto 0),
      cam_done => cam_done,
      pclk => pclk,
      pool_valid => \^pool_valid\,
      rst_n => rst_n
    );
end STRUCTURE;
