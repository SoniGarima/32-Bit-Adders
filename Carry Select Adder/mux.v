module mux(
    input a1,
    input a2,
    input s,
    output  out
    );
    assign out=(s&a1)|(~s&a2);
endmodule