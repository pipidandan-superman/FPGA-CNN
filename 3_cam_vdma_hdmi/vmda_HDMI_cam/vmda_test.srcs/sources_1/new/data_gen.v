`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/05 14:52:54
// Design Name: 
// Module Name: data_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_gen(
    input [23:0]  data_i        ,
    input         de            ,
    output [7:0]  data_r_o     ,
    output [7:0]  data_g_o     ,
    output [7:0]  data_b_o     
    );
assign data_r_o = (de)?data_i[23:16]:'d0;
assign data_g_o = (de)?data_i[15:8]:'d0;
assign data_b_o = (de)?data_i[7:0]:'d0;
endmodule
