/*
XOR Primitive
Implement a 2-input XOR using the Verilog gate primitive.

 

Requirements

Module: xor2_prim
Inputs: a, b
Output: y
Must instantiate the built-in xor primitive (no assign, no always).
*/
module xor2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in xor gate primitive
    xor g1(y,a,b);
endmodule
