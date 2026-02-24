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

module tb;
    reg a,b;
    wire sum,cout;
    ha_nand_only dut(a,b,sum,cout);
        initial begin
            repeat(5)begin
                {a,b}=$random
                #1;
                $display("a=%b  b=%b   sum=%b   cout=%b",a,b,sum,cout);
            end
        end
endmodule
/*
# a=0  b=0   sum=0   cout=0
# a=0  b=1   sum=1   cout=0
# a=0  b=1   sum=1   cout=0
# a=1  b=1   sum=0   cout=1
# a=0  b=1   sum=1   cout=0
*/
