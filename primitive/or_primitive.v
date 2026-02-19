
/*OR Primitive
Implement a 2-input OR using the Verilog gate primitive.

 

Requirements

Module: or2_prim
Inputs: a, b
Output: y
Must instantiate the built-in and primitive (no assign, no always).
*/
module or2_prim (
    input  a,
    input  b,
    output y
);
    // TODO: instantiate the built-in OR gate primitive
    or g1(y,a,b);
endmodule
