module decoder2to4 (
    input I0,
    input I1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);


    assign Y0 =  ~I1 & ~I0;
    assign Y1 =  ~I1 & I0;
    assign Y2 =  I1 & ~I0;
    assign Y3 =  I1 & I0;     

endmodule    