/*
NAND Primitive
Implement a 2-input NAND using the Verilog gate primitive.

 

Requirements

Module: nand2_prim
Inputs: a, b
Output: y
Must instantiate the built-in nand primitive (no assign, no always).
*/
module nand2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in AND gate primitive
    nand g1(y,a,b);
endmodule

//testbench code
module tb;
 reg a,b;
 wire y;
 nand2_prim dut(.a(a),.b(b),.y(y));
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
# a=0  b=1 y=1
# a=0  b=1 y=1
# a=1  b=1 y=0
# a=0  b=1 y=1
*/
