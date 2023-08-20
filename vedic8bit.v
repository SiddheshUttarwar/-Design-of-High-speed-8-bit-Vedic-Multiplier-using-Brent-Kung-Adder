`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:01 09/20/2022 
// Design Name: 
// Module Name:    vedic8bit 
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
module vedic8bit(
input [7:0] A,B,
output [15:0] M
);

wire [7:0] vd1,vd2,vd3,vd4;

vedic4bit vedic1(A[3:0],B[3:0],vd1);
vedic4bit vedic2(A[7:4],B[3:0],vd2);
vedic4bit vedic3(A[3:0],B[7:4],vd3);
vedic4bit vedic4(A[7:4],B[7:4],vd4);

wire [15:0] ad1,ad2,ad3;
wire co1,co2,co3;
wire clast,cout;

wire [15:0] inp1,inp2,inp3,inp4,inp5,inp6;
assign inp1[15:8] =0;
assign inp1[7:0] = vd3;

assign inp2[15:8] =0;
assign inp2[7:0] = vd2;

BrentKung bk1(inp1,inp2,1'b0,ad1,co1);
//carryPropAdder cpa1(inp1,inp2,1'b0,ad1,co1);

assign inp3[15:8]= 0;
assign inp3[7:4] = ad1[7:4];
assign inp3[3:0] = vd1[7:4];

assign inp4[15:8] = 0;
assign inp4[7:4] = vd4[3:0];
assign inp4[3:0] = ad1[3:0];

//BrentKung bk2(inp3,inp4,1'b0,ad2,co2);
carryPropAdder cpa2(inp3,inp4,1'b0,ad2,co2);

wire carry1,carry2;
assign carry1 = ad1[8];
assign carry2 = ad2[8];

org o1(clast,carry1,carry2);

assign inp5[15:4] = 0;
assign inp5[3:0] = vd4[7:4];

assign inp6[15:1] = 0;
assign inp6[0] = clast;

BrentKung bk3(inp5,inp6,1'b0,ad3,cout);
//carryPropAdder cpa3(inp5,inp6,1'b0,ad3,cout);

assign M[3:0] = vd1[3:0];
assign M[11:4] = ad2[7:0];
assign M[15:12] = ad3[3:0];

endmodule

