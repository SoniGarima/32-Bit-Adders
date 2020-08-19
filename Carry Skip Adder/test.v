`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2019 11:48:40
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
    reg [31:0] A,B;
    reg cin;
    wire [32:0] sum;
    wire cout;
    csa32 G(A,B,cin,sum,cout);
    initial begin
        A=4;
        B=7;
        cin=1;
    end
    always begin
        #5 cin=~cin;
        #10 A=A+8;
        #20 B=B+4;
    end
    
endmodule
