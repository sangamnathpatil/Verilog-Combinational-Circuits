`timescale 1ns/1ps

module comparator2bit_tb;

reg [1:0] a;
reg [1:0] b;

wire a_greaterthan_b;
wire a_isequalto_b;
wire a_lesserthan_b;

comparator2bit uut(
    .a(a),
    .b(b),
    .a_greaterthan_b(a_greaterthan_b),
    .a_isequalto_b(a_isequalto_b),
    .a_lesserthan_b(a_lesserthan_b)
);

initial

begin

    $dumpfile("comparator2bit.vcd");
    $dumpvars(0, comparator2bit_tb);

    $monitor( "a=%b  b=%b  |  a_greaterthan_b=%b  a_isequalto_b=%b  a_lesserthan_b=%b", a, b, a_greaterthan_b, a_isequalto_b, a_lesserthan_b);

    //TEST CASES
 
    a=2'b00; b=2'b00;
    #10;

    a=2'b00; b=2'b01;
    #10;

    a=2'b00; b=2'b10;
    #10;

    a=2'b00; b=2'b11;
    #10;

    a=2'b01; b=2'b00;
    #10;

    a=2'b01; b=2'b01;
    #10;

    a=2'b01; b=2'b10;
    #10;

    a=2'b01; b=2'b11;
    #10;

    a=2'b10; b=2'b00;
    #10;

    a=2'b10; b=2'b01;
    #10;

    a=2'b10; b=2'b10;
    #10;

    a=2'b10; b=2'b11;
    #10;

    a=2'b11; b=2'b00;
    #10;

    a=2'b11; b=2'b01;
    #10;

    a=2'b11; b=2'b10;
    #10;

    a=2'b11; b=2'b11;
    #10;

    $finish;

end

endmodule

