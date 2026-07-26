`timescale 1ns/1ps

module encoder4to2_tb;

reg I0;
reg I1;
reg I2;
reg I3;

wire Y0;
wire Y1;

encoder4to2 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y0(Y0),
    .Y1(Y1)
);

initial

begin

    $dumpfile("encoder4to2.vcd");
    $dumpvars(0,encoder4to2_tb);

    $monitor("I3=%b  I2=%b  I1=%b  I0=%b  |  Y1=%b  Y0=%b", I3,I2,I1,I0,Y1,Y0);

    //INPUT I=0
    I3=0; I2=0; I1=0; I0=0;
    #10;

    //INPUT I=1
    I3=0; I2=0; I1=0; I0=1;
    #10;
    //INPUT I=2
    I3=0; I2=0; I1=1; I0=0;
    #10;
    //INPUT I=3
    I3=0; I2=1; I1=0; I0=0;
    #10;
    //INPUT I=4
    I3=1; I2=0; I1=0; I0=0;
    #10;
    
    $finish;

end

endmodule