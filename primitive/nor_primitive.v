/*
NOR Primitive
Implement a 2-input NOR using the Verilog gate primitive.

 

Requirements

Module: nor2_prim
Inputs: a, b
Output: y
Must instantiate the built-in nor primitive (no assign, no always).
*/
module nor2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in NOR gate primitive
    nor g1(y,a,b);
endmodule
