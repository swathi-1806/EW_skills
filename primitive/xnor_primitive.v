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
