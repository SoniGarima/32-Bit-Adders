module fulladder(
    input a,
    input b,
    input Cin,
    output Sum,
    output Cout
    );
    assign Sum=a^b^Cin;
    assign Cout=(a&b)|(b&Cin)|(Cin&a);
endmodule