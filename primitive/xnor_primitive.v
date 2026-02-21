/*
XNOR Primitive
Implement a 2-input XNOR using the Verilog gate primitive.

 

Requirements

Module: xnor2_prim
Inputs: a, b
Output: y
Must instantiate the built-in xnor primitive (no assign, no always).
*/
module xnor2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in xnor gate primitive
    xnor g1(y,a,b);
endmodule

//testbench code
module tb;
 reg a,b;
 wire y;
 xnor2_prim dut(.a(a),.b(b),.y(y));
   initial begin
    repeat(5)begin
     {a,b}=$random;
     #1;
     $display("a=%b  b=%b y=%b",a,b,y);
    end
   end
endmodule

/*
OUTPUT
# a=0  b=0 y=1
# a=0  b=1 y=0
# a=0  b=1 y=0
# a=1  b=1 y=1
# a=0  b=1 y=0
*/
