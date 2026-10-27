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


// IP VLNV: xilinx.com:module_ref:pp_ram_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "pp_ram_ctrl,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_pp_ram_ctrl_0_0,pp_ram_ctrl,{}" *)
(* CORE_GENERATION_INFO = "design_1_pp_ram_ctrl_0_0,pp_ram_ctrl,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pp_ram_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NORMALIZE=1}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pp_ram_ctrl_0_0 (
  clk,
  rst_n,
  cam_we,
  cam_addr,
  cam_data,
  cam_done,
  cnn_re,
  cnn_addr,
  cnn_data,
  cnn_done,
  cnn_start,
  ramA_we,
  ramA_waddr,
  ramA_wdata,
  ramA_re,
  ramA_raddr,
  ramA_rdata,
  ramB_we,
  ramB_waddr,
  ramB_wdata,
  ramB_re,
  ramB_raddr,
  ramB_rdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire cam_we;
input wire [9 : 0] cam_addr;
input wire cam_data;
input wire cam_done;
input wire cnn_re;
input wire [9 : 0] cnn_addr;
output wire cnn_data;
input wire cnn_done;
output wire cnn_start;
output wire ramA_we;
output wire [9 : 0] ramA_waddr;
output wire ramA_wdata;
output wire ramA_re;
output wire [9 : 0] ramA_raddr;
input wire ramA_rdata;
output wire ramB_we;
output wire [9 : 0] ramB_waddr;
output wire ramB_wdata;
output wire ramB_re;
output wire [9 : 0] ramB_raddr;
input wire ramB_rdata;

  pp_ram_ctrl #(
    .NORMALIZE(1)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .cam_we(cam_we),
    .cam_addr(cam_addr),
    .cam_data(cam_data),
    .cam_done(cam_done),
    .cnn_re(cnn_re),
    .cnn_addr(cnn_addr),
    .cnn_data(cnn_data),
    .cnn_done(cnn_done),
    .cnn_start(cnn_start),
    .ramA_we(ramA_we),
    .ramA_waddr(ramA_waddr),
    .ramA_wdata(ramA_wdata),
    .ramA_re(ramA_re),
    .ramA_raddr(ramA_raddr),
    .ramA_rdata(ramA_rdata),
    .ramB_we(ramB_we),
    .ramB_waddr(ramB_waddr),
    .ramB_wdata(ramB_wdata),
    .ramB_re(ramB_re),
    .ramB_raddr(ramB_raddr),
    .ramB_rdata(ramB_rdata)
  );
endmodule
