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


// IP VLNV: xilinx.com:module_ref:gemm_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_gemm_top_0_0 (
  clk,
  rst_n,
  flush,
  start,
  busy,
  done,
  error,
  fc1_weight_base,
  fc1_bias_base,
  fc2_weight_base,
  fc2_bias_base,
  fc1_requant_multiplier,
  fc1_requant_shift,
  pool_wr_en,
  pool_wr_addr,
  pool_wr_data,
  pool_wr_done,
  pool_wr_ready,
  s_axis_params_tdata,
  s_axis_params_tvalid,
  s_axis_params_tready,
  s_axis_params_tlast,
  param_section,
  digit,
  digit_valid,
  debug_post_valid,
  debug_post_layer,
  debug_post_addr,
  debug_post_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_params, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire flush;
input wire start;
output wire busy;
output wire done;
output wire error;
input wire [31 : 0] fc1_weight_base;
input wire [31 : 0] fc1_bias_base;
input wire [31 : 0] fc2_weight_base;
input wire [31 : 0] fc2_bias_base;
input wire [31 : 0] fc1_requant_multiplier;
input wire [5 : 0] fc1_requant_shift;
input wire pool_wr_en;
input wire [12 : 0] pool_wr_addr;
input wire [15 : 0] pool_wr_data;
input wire pool_wr_done;
output wire pool_wr_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_params TDATA" *)
input wire [63 : 0] s_axis_params_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_params TVALID" *)
input wire s_axis_params_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_params TREADY" *)
output wire s_axis_params_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_params, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_params TLAST" *)
input wire s_axis_params_tlast;
output wire [3 : 0] param_section;
output wire [3 : 0] digit;
output wire digit_valid;
output wire debug_post_valid;
output wire debug_post_layer;
output wire [7 : 0] debug_post_addr;
output wire [39 : 0] debug_post_data;

  gemm_top #(
    .ACT_W(16),
    .ACC_W(40),
    .PE_N(8)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .flush(flush),
    .start(start),
    .busy(busy),
    .done(done),
    .error(error),
    .fc1_weight_base(fc1_weight_base),
    .fc1_bias_base(fc1_bias_base),
    .fc2_weight_base(fc2_weight_base),
    .fc2_bias_base(fc2_bias_base),
    .fc1_requant_multiplier(fc1_requant_multiplier),
    .fc1_requant_shift(fc1_requant_shift),
    .pool_wr_en(pool_wr_en),
    .pool_wr_addr(pool_wr_addr),
    .pool_wr_data(pool_wr_data),
    .pool_wr_done(pool_wr_done),
    .pool_wr_ready(pool_wr_ready),
    .s_axis_params_tdata(s_axis_params_tdata),
    .s_axis_params_tvalid(s_axis_params_tvalid),
    .s_axis_params_tready(s_axis_params_tready),
    .s_axis_params_tlast(s_axis_params_tlast),
    .param_section(param_section),
    .digit(digit),
    .digit_valid(digit_valid),
    .debug_post_valid(debug_post_valid),
    .debug_post_layer(debug_post_layer),
    .debug_post_addr(debug_post_addr),
    .debug_post_data(debug_post_data)
  );
endmodule
