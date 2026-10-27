-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May  3 12:51:17 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rom_ctrl_0_2_sim_netlist.vhdl
-- Design      : design_1_rom_ctrl_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl is
  port (
    rom_data_out : out STD_LOGIC;
    pclk_rst : in STD_LOGIC;
    empty : in STD_LOGIC;
    rom_data8 : in STD_LOGIC;
    rom_data9 : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pclk : in STD_LOGIC;
    rom_data3 : in STD_LOGIC;
    rom_data2 : in STD_LOGIC;
    rom_data1 : in STD_LOGIC;
    rom_data0 : in STD_LOGIC;
    rom_data7 : in STD_LOGIC;
    rom_data6 : in STD_LOGIC;
    rom_data5 : in STD_LOGIC;
    rom_data4 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl is
  signal fifo_rd_data_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \fifo_rd_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rom_data_out_INST_0_i_1_n_0 : STD_LOGIC;
  signal rom_data_out_INST_0_i_2_n_0 : STD_LOGIC;
  signal rom_data_out_INST_0_i_3_n_0 : STD_LOGIC;
begin
\fifo_rd_data_reg[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pclk_rst,
      O => p_0_in
    );
\fifo_rd_data_reg[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty,
      O => \fifo_rd_data_reg[3]_i_2_n_0\
    );
\fifo_rd_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \fifo_rd_data_reg[3]_i_2_n_0\,
      D => dout(0),
      Q => fifo_rd_data_reg(0),
      R => p_0_in
    );
\fifo_rd_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \fifo_rd_data_reg[3]_i_2_n_0\,
      D => dout(1),
      Q => fifo_rd_data_reg(1),
      R => p_0_in
    );
\fifo_rd_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \fifo_rd_data_reg[3]_i_2_n_0\,
      D => dout(2),
      Q => fifo_rd_data_reg(2),
      R => p_0_in
    );
\fifo_rd_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \fifo_rd_data_reg[3]_i_2_n_0\,
      D => dout(3),
      Q => fifo_rd_data_reg(3),
      R => p_0_in
    );
rom_data_out_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => rom_data_out_INST_0_i_1_n_0,
      I1 => fifo_rd_data_reg(3),
      I2 => rom_data_out_INST_0_i_2_n_0,
      I3 => fifo_rd_data_reg(2),
      I4 => rom_data_out_INST_0_i_3_n_0,
      O => rom_data_out
    );
rom_data_out_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => rom_data8,
      I1 => fifo_rd_data_reg(0),
      I2 => rom_data9,
      I3 => fifo_rd_data_reg(2),
      I4 => fifo_rd_data_reg(1),
      O => rom_data_out_INST_0_i_1_n_0
    );
rom_data_out_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rom_data7,
      I1 => rom_data6,
      I2 => fifo_rd_data_reg(1),
      I3 => rom_data5,
      I4 => fifo_rd_data_reg(0),
      I5 => rom_data4,
      O => rom_data_out_INST_0_i_2_n_0
    );
rom_data_out_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => rom_data3,
      I1 => rom_data2,
      I2 => fifo_rd_data_reg(1),
      I3 => rom_data1,
      I4 => fifo_rd_data_reg(0),
      I5 => rom_data0,
      O => rom_data_out_INST_0_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pclk : in STD_LOGIC;
    pclk_rst : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : in STD_LOGIC;
    rd_en : out STD_LOGIC;
    rom_data0 : in STD_LOGIC;
    rom_data1 : in STD_LOGIC;
    rom_data2 : in STD_LOGIC;
    rom_data3 : in STD_LOGIC;
    rom_data4 : in STD_LOGIC;
    rom_data5 : in STD_LOGIC;
    rom_data6 : in STD_LOGIC;
    rom_data7 : in STD_LOGIC;
    rom_data8 : in STD_LOGIC;
    rom_data9 : in STD_LOGIC;
    rom_data_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_rom_ctrl_0_2,rom_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rom_ctrl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pclk_rst : signal is "xilinx.com:signal:reset:1.0 pclk_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pclk_rst : signal is "XIL_INTERFACENAME pclk_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl
     port map (
      dout(3 downto 0) => dout(3 downto 0),
      empty => empty,
      pclk => pclk,
      pclk_rst => pclk_rst,
      rom_data0 => rom_data0,
      rom_data1 => rom_data1,
      rom_data2 => rom_data2,
      rom_data3 => rom_data3,
      rom_data4 => rom_data4,
      rom_data5 => rom_data5,
      rom_data6 => rom_data6,
      rom_data7 => rom_data7,
      rom_data8 => rom_data8,
      rom_data9 => rom_data9,
      rom_data_out => rom_data_out
    );
rd_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pclk_rst,
      I1 => empty,
      O => rd_en
    );
end STRUCTURE;
