-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 31 16:52:17 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_capture_data_0_0/ov5640_hdmi_ov5640_capture_data_0_0_stub.vhdl
-- Design      : ov5640_hdmi_ov5640_capture_data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ov5640_hdmi_ov5640_capture_data_0_0 is
  Port ( 
    i_cam_clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_xclk : out STD_LOGIC;
    vid_clk : out STD_LOGIC;
    vid_ce : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end ov5640_hdmi_ov5640_capture_data_0_0;

architecture stub of ov5640_hdmi_ov5640_capture_data_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_cam_clk,rst_n,cam_pclk,cam_vsync,cam_href,cam_data[7:0],cam_xclk,vid_clk,vid_ce,vid_vsync,vid_active_video,vid_data[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov5640_capture_data,Vivado 2020.2";
begin
end;
