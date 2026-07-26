module comparator2bit(
    input [1:0] a,
    input [1:0] b,
    output a_greaterthan_b,
    output a_isequalto_b,
    output a_lesserthan_b
);
    assign a_greaterthan_b = (a > b);
    assign a_isequalto_b = (a == b);
    assign a_lesserthan_b = (a < b);

endmodule

