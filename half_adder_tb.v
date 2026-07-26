`timescale 1ns/1ps

module half_adder_tb;

reg a;
reg b;
wire s;
wire c;

half_adder uut(
    .A(a),
    .B(b),
    .Sum(s),                                            
    .Carry(c)
);

initial begin

     $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);


    $monitor ( "a=%b  b=%b | s=%b  c=%b", a, b, s, c);

    a=0; b=0;
    #10;
    
     a=0; b=1;
    #10;
    
     a=1; b=0;
    #10;
    
     a=1; b=1;
    #10;
    
     $finish;
end
endmodule
