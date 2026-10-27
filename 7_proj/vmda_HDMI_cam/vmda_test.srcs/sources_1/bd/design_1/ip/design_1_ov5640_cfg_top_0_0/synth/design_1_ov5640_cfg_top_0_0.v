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


// IP VLNV: xilinx.com:module_ref:ov5640_cfg_top:1.0
// IP Revision: 1

(* X_CORE_INFO = "ov5640_cfg_top,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_ov5640_cfg_top_0_0,ov5640_cfg_top,{}" *)
(* CORE_GENERATION_INFO = "design_1_ov5640_cfg_top_0_0,ov5640_cfg_top,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ov5640_cfg_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,OV5640_W=01111000,OV5640_R=01111001,CLK_DIV=111110100,PACK_DELAY=75,CAM_HSIZE=640,CAM_VSIZE=480,REG_NUM=11111011}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ov5640_cfg_top_0_0 (
  sys_clk,
  sys_rst_n,
  sccb_clk,
  sccb_data,
  sccb_cfg_done
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
input wire sys_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *)
input wire sys_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sccb_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ov5640_cfg_top_0_0_sccb_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sccb_clk CLK" *)
output wire sccb_clk;
inout wire sccb_data;
output wire sccb_cfg_done;

  ov5640_cfg_top #(
    .OV5640_W(8'B01111000),
    .OV5640_R(8'B01111001),
    .CLK_DIV(9'B111110100),
    .PACK_DELAY(75),
    .CAM_HSIZE(640),
    .CAM_VSIZE(480),
    .REG_NUM(8'B11111011)
  ) inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .sccb_clk(sccb_clk),
    .sccb_data(sccb_data),
    .sccb_cfg_done(sccb_cfg_done)
  );
endmodule
