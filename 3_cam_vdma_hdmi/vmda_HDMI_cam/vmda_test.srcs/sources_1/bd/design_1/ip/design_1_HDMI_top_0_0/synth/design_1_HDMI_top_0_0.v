// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:HDMI_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "HDMI_top,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_HDMI_top_0_0,HDMI_top,{}" *)
(* CORE_GENERATION_INFO = "design_1_HDMI_top_0_0,HDMI_top,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HDMI_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_HDMI_top_0_0 (
  pix_clk,
  pix_clk_x5,
  rst_n,
  h_sync,
  v_sync,
  red_data,
  green_data,
  blue_data,
  de,
  TMDS_clk_p,
  TMDS_clk_n,
  TMDS_data_p,
  TMDS_data_n,
  hdmi_en
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clk, FREQ_HZ 75000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *)
input wire pix_clk;
input wire pix_clk_x5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire h_sync;
input wire v_sync;
input wire [7 : 0] red_data;
input wire [7 : 0] green_data;
input wire [7 : 0] blue_data;
input wire de;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_p, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS_clk_p CLK" *)
output wire TMDS_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS_clk_n, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_HDMI_top_0_0_TMDS_clk_n, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 TMDS_clk_n CLK" *)
output wire TMDS_clk_n;
output wire [2 : 0] TMDS_data_p;
output wire [2 : 0] TMDS_data_n;
output wire hdmi_en;

  HDMI_top inst (
    .pix_clk(pix_clk),
    .pix_clk_x5(pix_clk_x5),
    .rst_n(rst_n),
    .h_sync(h_sync),
    .v_sync(v_sync),
    .red_data(red_data),
    .green_data(green_data),
    .blue_data(blue_data),
    .de(de),
    .TMDS_clk_p(TMDS_clk_p),
    .TMDS_clk_n(TMDS_clk_n),
    .TMDS_data_p(TMDS_data_p),
    .TMDS_data_n(TMDS_data_n),
    .hdmi_en(hdmi_en)
  );
endmodule
