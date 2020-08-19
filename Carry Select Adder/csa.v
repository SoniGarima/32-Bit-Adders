module csa(
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
        
    end
    endgenerate
    assign c=c0[g];
    //Taking carry as 1
    genvar m;
    assign c=1'b1;
    generate for(m=0;m<32;m=m+1) begin:loop2
        fulladder f2(A[m],B[m],c,s1[m],c1[m]);
       
    end
    endgenerate
     assign c=c1[m];
    //selecting the output according to carry
    mux m1(c1[31],c0[31],Cin,Cout);
    genvar e;
    //generate for(e=0;e<16;e=e+1) begin:loop3
     //   mux m2(s1[e],s0[e],Cin,Sum[e]);
    //end
    //endgenerate
    mux m2(s0[0],s1[0],Cin,Sum[0]);
    assign Sum[32]=Cout;
endmodule