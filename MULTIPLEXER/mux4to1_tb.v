`timescale 1ns/1ps

module mux4to1_tb;

reg I0,I1,I2,I3;
reg [1:0] S;
wire Y;

mux4to1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(S),
    .Y(Y)
);

initial 

begin

    $dumpfile("mux4to1_tb.vcd");
    $dumpvars(0, mux4to1_tb);

    $monitor( "I0=%b  I1=%b  I2=%b  I3=%b | S=%b | Y=%b", I0,I1,I2,I3,S,Y); 

    //INPUTS

    I0=0; I1=1; I2=0; I3=1;

    S = 2'b00; #10;        //output I0
    S = 2'b01; #10;        //output I1
    S = 2'b10; #10;        //output I2
    S = 2'b11; #10;        //output I3

    //INPUTS 
    I0=1; I1=0; I2=1; I3=0;

    S = 2'b00; #10;        //output I0
    S = 2'b01; #10;        //output I1
    S = 2'b10; #10;        //output I2
    S = 2'b11; #10;        //output I3

    $finish;

end

endmodule

