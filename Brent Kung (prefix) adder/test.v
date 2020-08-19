`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 21:01:18
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
//////////////////////////////////////////////////////////////////////////////////


module test;
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    wire [32:0] Sum;
    wire Cout;
    main ag1(A,B,Cin,Sum,Cout);
    initial begin
    A=16;
    B=8;
    Cin=1;
    end
    
    always begin
    #5 A=A+5;
    #10 B=B+8;
    #4 Cin=~Cin;
    end
   
endmodule
