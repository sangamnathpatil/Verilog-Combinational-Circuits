`timescale 1ns/1ps

module ripple_carry_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire cout;

ripple_carry_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    $dumpfile("output.vcd");
    $dumpvars(0, ripple_carry_adder_tb);

    $monitor(" a=%b  b=%b  cin=%b | sum=%b  cout=%b", a, b, cin, sum, cout);

    // Test Case 1
    a = 4'b0000;
    b = 4'b0000;
    cin = 0;
    #10;

    // Test Case 2
    a = 4'b0011;
    b = 4'b0101;
    cin = 0;
    #10;

    // Test Case 3
    a = 4'b1111;
    b = 4'b0001;
    cin = 0;
    #10;

    // Test Case 4
    a = 4'b1010;
    b = 4'b0101;
    cin = 0;
    #10;

    // Test Case 5
    a = 4'b1111;
    b = 4'b1111;
    cin = 1;
    #10;

    // Test Case 6
    a = 4'b1001;
    b = 4'b0110;
    cin = 1;
    #10;

    $finish;

end

endmodule