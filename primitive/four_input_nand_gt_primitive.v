
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

module tb;
    reg a,b,c,d;
    wire y;
    nand4_prim dut(a,b,c,d,y);
    initial begin
        repeat(5)begin
            {a,b,c,d}=$random;
            #1;
            $display("a=%b b=%b  c=%b d=%b y=%b",a,b,c,d,y);
        end
    end
endmodule
