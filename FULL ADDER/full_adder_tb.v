`timescale 1ns/1ps

module full_adder_tb;

reg A, B, Cin;
wire Sum, Cout;

full_adder uut (
    .a(A),
    .b(B),
    .cin(Cin),
    .sum(Sum),
    .cout(Cout)
);

initial begin 

    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);

    $monitor (" A=%b  B=%b  Cin=%b | Sum=%b  Cout=%b", A, B, Cin, Sum, Cout);

    A=0; B=0; Cin=0;
    #10;

    A=0; B=0; Cin=1;
    #10;

    A=0; B=1; Cin=0;
    #10;

    A=0; B=1; Cin=1;
    #10;

    A=1; B=0; Cin=0;
    #10;

    A=1; B=0; Cin=1;
    #10;

    A=1; B=1; Cin=0;
    #10;

    A=1; B=1; Cin=1;
    #10;

    $finish;

end
endmodule


    
