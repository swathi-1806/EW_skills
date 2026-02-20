/*
NAND Primitive
Implement a 2-input NAND using the Verilog gate primitive.

 

Requirements

Module: nand2_prim
Inputs: a, b
Output: y
Must instantiate the built-in nand primitive (no assign, no always).
*/
odule nand2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in AND gate primitive
    nand g1(y,a,b);
endmodule
