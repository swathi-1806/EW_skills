/*
Half Adder using NAND Primitive
Implement a 1-bit half adder structurally using only the nand primitive. The outputs are sum = a ⊕ b and cout = a & b.

Requirements

Module name: ha_nand_only
Inputs: a, b
Outputs: sum, cout
Rules: use only nand primitives; purely structural; no procedural blocks
*/
module ha_nand_only(a,b,sum,cout);
    input a,b;
    output sum,cout;
    wire w1,w2,w3 ;
        nand g1(w1,a,b);
        nand g2(w2,a,w1);
        nand g3(w3,w1,b);
        nand g4(cout,w1);
        nand g5(sum,w2,w3);
endmodule

