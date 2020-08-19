`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 21:36:03
// Design Name: 
// Module Name: main
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


module main(
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [32:0] Sum,
    output Cout
    );
    wire g;
    bk32 ag1(A[15:0],B[15:0],Cin,Sum[15:0],g);
    bk32 ag2(A[31:16],B[31:16],g,Sum[31:16],Cout);
    assign Sum[32]=Cout;
endmodule
