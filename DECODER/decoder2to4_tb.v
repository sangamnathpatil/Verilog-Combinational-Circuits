`timescale 1ns/1ps

module decoder2to4_tb;

reg I0;
reg I1;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

decoder2to4 uut(
    .I0(I0),
    .I1(I1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial
begin

    $dumpfile("decoder2to4.vcd");
    $dumpvars(0, decoder2to4_tb);

    $monitor ("I1=%b  I0=%b  |  Y3=%b  Y2=%b  Y1=%b  Y0=%b", I1, I0, Y3, Y2, Y1, Y0);

    //INPUT 00

    I1=0; I0=0;
    #10;

    //INPUT 01

    I1=0; I0=1;
    #10;

    //INPUT 10

    I1=1; I0=0;
    #10;

    //INPUT 11

    I1=1; I0=1;
    #10;

    $finish;

end
endmodule