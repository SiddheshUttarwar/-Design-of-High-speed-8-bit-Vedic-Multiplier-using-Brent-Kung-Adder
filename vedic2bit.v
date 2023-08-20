`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:40 09/20/2022 
// Design Name: 
// Module Name:    vedic2bit 
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
module vedic2bit(
input [1:0] A,B,
output [3:0] M
);

wire a1,a2,a3,a4;
andg and1(M[0],A[0],B[0]);
andg and2(a1,A[1],B[0]);
andg and3(a2,A[0],B[1]);
fulladder fa1(a1,a2,1'b0,M[1],a3);
andg and4(a4,A[1],B[1]);
fulladder fa2(a4,a3,1'b0,M[2],M[3]);
endmodule
