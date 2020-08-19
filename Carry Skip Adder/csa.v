`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2019 11:35:01
// Design Name: 
// Module Name: csa
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


module csa(
    input [3:0] A,
    input [3:0] B,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [3:0]c,p;
    wire s;
    fulladder f1(A[0],B[0],cin,sum[0],c[0]);
    fulladder f2(A[1],B[1],c[0],sum[1],c[1]);
    fulladder f3(A[2],B[2],c[1],sum[2],c[2]);
    fulladder f4(A[3],B[3],c[2],sum[3],c[3]);
    assign p[0]=A[0]^B[0];
    assign p[1]=A[1]^B[1];
    assign p[2]=A[2]^B[2];
    assign p[3]=A[3]^B[3];
    assign s=p[0]&p[1]&p[2]&p[3];
    assign cout=(s&cin)|(~s&c[3]);
endmodule
