`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 15:52:48
// Design Name: 
// Module Name: testb
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


module testb(

    );
    reg [32:0] a;
    reg [32:0] b;
    wire [32:0] sum;
    wire c;
    cla32 aa(a,b,0,sum,c);
    initial begin
    a=43;
    b=45;
    end
endmodule
