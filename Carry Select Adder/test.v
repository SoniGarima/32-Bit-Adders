`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2019 12:08:06
// Design Name: 
// Module Name: test
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
///////////////////////////////////////////////////////////////////////////////
module test;
    reg [31:0] A,B;
    wire [32:0] Sum;
    reg Cin;
    wire Cout;
    csa G(A,B,Cin,Sum,Cout);
    initial begin
        Cin=0;
        A=0;
        B=0;
    end    
    always begin
        #5 Cin=~Cin;
        #10 A=A+1;
        #20 B=B+1;
    end
endmodule
