-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 31 17:03:35 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_cfg_top_0_0/ov5640_hdmi_ov5640_cfg_top_0_0_stub.vhdl
-- Design      : ov5640_hdmi_ov5640_cfg_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ov5640_hdmi_ov5640_cfg_top_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sccb_scl : out STD_LOGIC;
    sccb_sda : inout STD_LOGIC
  );

end ov5640_hdmi_ov5640_cfg_top_0_0;

architecture stub of ov5640_hdmi_ov5640_cfg_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_rst_n,sccb_scl,sccb_sda";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov5640_cfg_top,Vivado 2020.2";
begin
end;
