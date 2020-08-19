`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 23:09:12
// Design Name: 
// Module Name: csa32
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


module csa32(
    input [31:0] R,
    input [31:0] T,
    input Cin,
    output [32:0] sum,
    output Cout
    );
    wire v1,v2,v3;
    csa g1(R[3:0],T[3:0],Cin,sum[3:0],v1);
    csa6 g2(R[9:4],T[9:4],v1,sum[9:4],v2);
    csa18 g3(R[27:10],T[27:10],v2,sum[27:10],v3);
    csa g4(R[31:28],T[32:28],v3,sum[31:28],Cout);
    assign sum[32]=Cout;
endmodule
