`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:42 09/20/2022 
// Design Name: 
// Module Name:    vedic4bit 
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
module vedic4bit(
input [3:0] A,B,
output [7:0] M
);

wire [3:0] vd1,vd2,vd3,vd4;

vedic2bit vedic1(A[1:0],B[1:0],vd1);
vedic2bit vedic2(A[3:2],B[1:0],vd2);
vedic2bit vedic3(A[1:0],B[3:2],vd3);
vedic2bit vedic4(A[3:2],B[3:2],vd4);

wire [15:0] ad1,ad2,ad3;
wire co1,co2,co3;
wire clast,cout;

wire [15:0] inp1,inp2,inp3,inp4,inp5,inp6;
assign inp1[15:4] =0;
assign inp1[3:0] = vd3;

assign inp2[15:4] =0;
assign inp2[3:0] = vd2;

BrentKung bk1(inp1,inp2,1'b0,ad1,co1);
//carryPropAdder cpa1(inp1,inp2,1'b0,ad1,co1);

assign inp3[15:4]= 0;
assign inp3[3:2] = ad1[3:2];
assign inp3[1:0] = vd1[3:2];

assign inp4[15:4] = 0;
assign inp4[3:2] = vd4[1:0];
assign inp4[1:0] = ad1[1:0];

BrentKung bk2(inp3,inp4,1'b0,ad2,co2);
//carryPropAdder cpa2(inp3,inp4,1'b0,ad2,co2);

wire carry1,carry2;
assign carry1 = ad1[4];
assign carry2 = ad2[4];

org o1(clast,carry1,carry2);

assign inp5[15:2] = 0;
assign inp5[1:0] = vd4[3:2];

assign inp6[15:1] = 0;
assign inp6[0] = clast;

BrentKung bk3(inp5,inp6,1'b0,ad3,cout);
//carryPropAdder cpa3(inp5,inp6,1'b0,ad3,cout);
assign M[1:0] = vd1[1:0];
assign M[5:2] = ad2[3:0];
assign M[7:6] = ad3[1:0];

endmodule
