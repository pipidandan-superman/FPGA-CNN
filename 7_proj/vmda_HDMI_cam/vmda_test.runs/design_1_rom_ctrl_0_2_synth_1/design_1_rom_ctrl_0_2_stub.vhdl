-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May  3 12:51:17 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rom_ctrl_0_2_stub.vhdl
-- Design      : design_1_rom_ctrl_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,pclk_rst,dout[31:0],empty,rd_en,rom_data0,rom_data1,rom_data2,rom_data3,rom_data4,rom_data5,rom_data6,rom_data7,rom_data8,rom_data9,rom_data_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rom_ctrl,Vivado 2020.2";
begin
end;
