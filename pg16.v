`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:36:46 09/20/2022 
// Design Name: 
// Module Name:    pg16 
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
module pg16 (A, B, pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0);
    input [15:0] A, B;
    output [1:0] pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0;
    
wire andout0, xorout0;
wire andout1, xorout1;
wire andout2, xorout2;
wire andout3, xorout3;
wire andout4, xorout4;
wire andout5, xorout5;
wire andout6, xorout6;
wire andout7, xorout7;
wire andout8, xorout8;
wire andout9, xorout9;
wire andout10, xorout10;
wire andout11, xorout11;
wire andout12, xorout12;
wire andout13, xorout13;
wire andout14, xorout14;
wire andout15, xorout15;

and and0(andout0, A[0], B[0]);
xor xor0(xorout0, A[0], B[0]);
and and1(andout1, A[1], B[1]);
xor xor1(xorout1, A[1], B[1]);
and and2(andout2, A[2], B[2]);
xor xor2(xorout2, A[2], B[2]);
and and3(andout3, A[3], B[3]);
xor xor3(xorout3, A[3], B[3]);
and and4(andout4, A[4], B[4]);
xor xor4(xorout4, A[4], B[4]);
and and5(andout5, A[5], B[5]);
xor xor5(xorout5, A[5], B[5]);
and and6(andout6, A[6], B[6]);
xor xor6(xorout6, A[6], B[6]);
and and7(andout7, A[7], B[7]);
xor xor7(xorout7, A[7], B[7]);
and and8(andout8, A[8], B[8]);
xor xor8(xorout8, A[8], B[8]);
and and9(andout9, A[9], B[9]);
xor xor9(xorout9, A[9], B[9]);
and and10(andout10, A[10], B[10]);
xor xor10(xorout10, A[10], B[10]);
and and11(andout11, A[11], B[11]);
xor xor11(xorout11, A[11], B[11]);
and and12(andout12, A[12], B[12]);
xor xor12(xorout12, A[12], B[12]);
and and13(andout13, A[13], B[13]);
xor xor13(xorout13, A[13], B[13]);
and and14(andout14, A[14], B[14]);
xor xor14(xorout14, A[14], B[14]);
and and15(andout15, A[15], B[15]);
xor xor15(xorout15, A[15], B[15]);

assign pg0 = {xorout0, andout0};
assign pg1 = {xorout1, andout1};
assign pg2 = {xorout2, andout2};
assign pg3 = {xorout3, andout3};
assign pg4 = {xorout4, andout4};
assign pg5 = {xorout5, andout5};
assign pg6 = {xorout6, andout6};
assign pg7 = {xorout7, andout7};
assign pg8 = {xorout8, andout8};
assign pg9 = {xorout9, andout9};
assign pg10 = {xorout10, andout10};
assign pg11 = {xorout11, andout11};
assign pg12 = {xorout12, andout12};
assign pg13 = {xorout13, andout13};
assign pg14 = {xorout14, andout14};
assign pg15 = {xorout15, andout15};

endmodule