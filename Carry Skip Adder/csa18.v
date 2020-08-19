`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 23:47:22
// Design Name: 
// Module Name: csa18
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


module csa18(
    input [17:0] h,
    input [17:0] j,
    input k,
    output [17:0] l,
    output y
    );
    wire [17:0]c,p;
    wire s;
    fulladder f1(h[0],j[0],k,l[0],c[0]);
    fulladder f2(h[1],j[1],c[0],l[1],c[1]);
    fulladder f3(h[2],j[2],c[1],l[2],c[2]);
    fulladder f4(h[3],j[3],c[2],l[3],c[3]);
    fulladder f5(h[4],j[4],c[3],l[4],c[4]);
    fulladder f6(h[5],j[5],c[4],l[5],c[5]);
    fulladder f7(h[6],j[6],c[5],l[6],c[6]);
    fulladder f8(h[7],j[7],c[6],l[7],c[7]);
    fulladder f9(h[8],j[8],c[7],l[8],c[8]);
    fulladder f10(h[9],j[9],c[8],l[9],c[9]);
    fulladder f11(h[10],j[10],c[9],l[10],c[10]);
    fulladder f12(h[11],j[11],c[10],l[11],c[11]);
    fulladder f13(h[12],j[12],c[11],l[12],c[12]);
    fulladder f14(h[13],j[13],c[12],l[13],c[13]);
    fulladder f15(h[14],j[14],c[13],l[14],c[14]);
    fulladder f16(h[15],j[15],c[14],l[15],c[15]);
    fulladder f17(h[16],j[16],c[15],l[16],c[16]);
    fulladder f18(h[17],j[17],c[16],l[17],c[17]);
    assign p[0]=h[0]^j[0];
    assign p[1]=h[1]^j[1];
    assign p[2]=h[2]^j[2];
    assign p[3]=h[3]^j[3];
    assign p[4]=h[4]^j[4];
    assign p[5]=h[5]^j[5];
    assign p[6]=h[6]^j[6];
    assign p[7]=h[7]^j[7];
    assign p[8]=h[8]^j[8];
    assign p[9]=h[9]^j[9];
    assign p[10]=h[10]^j[10];
    assign p[11]=h[11]^j[11];
    assign p[12]=h[12]^j[12];
    assign p[13]=h[13]^j[13];
    assign p[14]=h[14]^j[14];
    assign p[15]=h[15]^j[15];
    assign p[16]=h[16]^j[16];
    assign p[17]=h[17]^j[17];
    assign s=p[0]&p[1]&p[2]&p[3]&p[4]&p[5]&p[6]&p[7]&p[8]&p[9]&p[10]&p[11]&p[12]&p[13]&p[14]&p[15]&p[16]&p[17];
    assign y=(s&k)|(~s&c[17]);
    
endmodule
