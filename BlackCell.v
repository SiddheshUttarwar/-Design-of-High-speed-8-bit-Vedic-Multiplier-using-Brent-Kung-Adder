`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:11 09/20/2022 
// Design Name: 
// Module Name:    BlackCell 
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
module BlackCell(input [1:0] pg, pg0, output [1:0] pgo);
  
wire and1out;    
and and1(and1out, pg0[0], pg[1]);
or or1(pgo[0], and1out, pg[0]);
and and2(pgo[1], pg[1], pg0[1]);
  
endmodule
