/*
NOT Primitive
Implement a NOT using the Verilog gate primitive.

 

Requirements

Module: not2_prim
Inputs: a
Output: y
Must instantiate the built-in not primitive (no assign, no always).
*/
module and2_prim (
    input  a,
    output y
);
    // TODO: instantiate the built-in NOT gate primitive
    not g1(y,a);
endmodule
