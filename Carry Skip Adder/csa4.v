`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 23:25:51
// Design Name: 
// Module Name: csa6
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


module csa6(
    input [5:0] q,
    input [5:0] w,
    input e,
    output [5:0] r,
    output t
    );
    wire [5:0]c,p;
    wire s;
    fulladder f1(q[0],w[0],e,r[0],c[0]);
    fulladder f2(q[1],w[1],c[0],r[1],c[1]);
    fulladder f3(q[2],w[2],c[1],r[2],c[2]);
    fulladder f4(q[3],w[3],c[2],r[3],c[3]);
    fulladder f5(q[4],w[4],c[3],r[4],c[4]);
    fulladder f6(q[5],w[5],c[4],r[5],c[5]);
    assign p[0]=q[0]^w[0];
    assign p[1]=q[1]^w[1];
    assign p[2]=q[2]^w[2];
    assign p[3]=q[3]^w[3];
    assign p[4]=q[4]^w[4];
    assign p[5]=q[5]^w[5];
    assign s=p[0]&p[1]&p[2]&p[3]&p[4]&p[5];
    assign t=(s&e)|(~s&c[5]);
endmodule
