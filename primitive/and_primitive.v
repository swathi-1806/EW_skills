/*
AND Primitive
Implement a 2-input AND using the Verilog gate primitive.

 

Requirements

Module: and2_prim
Inputs: a, b
Output: y
Must instantiate the built-in and primitive (no assign, no always).
*/
module and2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in AND gate primitive
    and g1(y,a,b);
endmodule
