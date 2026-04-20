-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 18:27:29 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_ov5640_cfg_top_0_0/design_1_ov5640_cfg_top_0_0_stub.vhdl
-- Design      : design_1_ov5640_cfg_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ov5640_cfg_top_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sccb_clk : out STD_LOGIC;
    sccb_data : inout STD_LOGIC;
    sccb_cfg_done : out STD_LOGIC
  );

end design_1_ov5640_cfg_top_0_0;

architecture stub of design_1_ov5640_cfg_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_rst_n,sccb_clk,sccb_data,sccb_cfg_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov5640_cfg_top,Vivado 2020.2";
begin
end;
