`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2019 11:59:25
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
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [32:0] Sum,
    output Cout
    );
    wire [31:0] c0,c1,s0,s1;
    wire c;
    // Taking carry as 0
    genvar g;
    assign c=1'b0;
    generate for(g=0;g<32;g=g+1) begin:loop1
        fulladder f1(A[g],B[g],c,s0[g],c0[g]);
         assign #5 c=c0[g];
    end
    endgenerate
   
    //Taking carry as 1
    genvar m;
    assign c=1'b1;
    generate for(m=0;m<32;m=m+1) begin:loop2
        fulladder f2(A[m],B[m],c,s1[m],c1[m]);
        assign #5 c=c1[m];
    end
    endgenerate
    
    //selecting the output according to carry
    mux m1(c1[31],c0[31],Cin,Cout);
    genvar e;
    generate for(e=0;e<32;e=e+1) begin:loop3
       mux m2(s1[e],s0[e],Cin,Sum[e]);
    end
    endgenerate
    assign Sum[32]=Cout;
endmodule