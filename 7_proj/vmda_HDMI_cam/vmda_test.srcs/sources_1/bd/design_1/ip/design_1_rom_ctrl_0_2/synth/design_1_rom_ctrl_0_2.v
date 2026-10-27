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


// IP VLNV: xilinx.com:module_ref:rom_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "rom_ctrl,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_rom_ctrl_0_2,rom_ctrl,{}" *)
(* CORE_GENERATION_INFO = "design_1_rom_ctrl_0_2,rom_ctrl,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rom_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_rom_ctrl_0_2 (
  pclk,
  pclk_rst,
  dout,
  empty,
  rd_en,
  rom_data0,
  rom_data1,
  rom_data2,
  rom_data3,
  rom_data4,
  rom_data5,
  rom_data6,
  rom_data7,
  rom_data8,
  rom_data9,
  rom_data_out
);

input wire pclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 pclk_rst RST" *)
input wire pclk_rst;
input wire [31 : 0] dout;
input wire empty;
output wire rd_en;
input wire rom_data0;
input wire rom_data1;
input wire rom_data2;
input wire rom_data3;
input wire rom_data4;
input wire rom_data5;
input wire rom_data6;
input wire rom_data7;
input wire rom_data8;
input wire rom_data9;
output wire rom_data_out;

  rom_ctrl inst (
    .pclk(pclk),
    .pclk_rst(pclk_rst),
    .dout(dout),
    .empty(empty),
    .rd_en(rd_en),
    .rom_data0(rom_data0),
    .rom_data1(rom_data1),
    .rom_data2(rom_data2),
    .rom_data3(rom_data3),
    .rom_data4(rom_data4),
    .rom_data5(rom_data5),
    .rom_data6(rom_data6),
    .rom_data7(rom_data7),
    .rom_data8(rom_data8),
    .rom_data9(rom_data9),
    .rom_data_out(rom_data_out)
  );
endmodule
