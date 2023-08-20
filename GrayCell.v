`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:44 09/20/2022 
// Design Name: 
// Module Name:    GrayCell 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module GrayCell(input [1:0] pg, input pg0, output pgo);
  wire and_out;
  and and1(and_out, pg0, pg[1]);
  or or1(pgo, pg[0], and_out);
  
endmodule
