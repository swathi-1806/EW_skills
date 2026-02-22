
/*
4-Input NAND Gate Primitive
Implement a 4-input NAND gate using the Verilog gate primitive.

Requirements

Module: nand4_prim
Inputs: a, b, c, d
Output: y
Must instantiate the built-in nand primitive (no assign, no always).
Behavior

y = ~(a & b & c & d)
*/
module nand4_prim (
    input  a,
    input  b,
    input  c,
    input  d,
    output y
);
    // TODO: instantiate the built-in NAND gate primitive
    nand g1 (y, a, b, c, d);
endmodule
