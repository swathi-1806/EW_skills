/*
Tri-State Buffer
Implement a tri-state buffer:

When en=1, output y = a.
When en=0, output y = z.
Requirements

Module: tribuf_prim
Inputs: a, en
Output: y
Use the built-in primitive bufif1 (no assign, no always).
*/

module tribuf_prim (
    input  a,
    input  en,
    output y
);
    // TODO: instantiate the built-in tri-state buffer
    // bufif1 <instance_name> ( <out>, <in>, <enable> );
   bufif1 g1 (y, a, en);
endmodule
