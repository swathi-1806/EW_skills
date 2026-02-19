/*
XOR Gate Using Basic Gates
Design a XOR gate (xor_gate) using basic gates (and_gate, or_gate, not_gate).

Requirements:

Module name: xor_gate
Inputs: a, b (1-bit each)
Output: y (1-bit)

Notes:
You must build xor_gate structurally by instantiating smaller gate modules (and_gate, or_gate, not_gate).
Do not use Verilog’s built-in ^ operator.
Use the Boolean equation for XOR:   y=(a⋅b')+(a'⋅b)

 

Truth Table

a	b	y
0	0	0
0	1	1
1	0	1
1	1	0

*/
// ============================================================
// Basic Gates
// ============================================================
module and_gate(input a, b, output y);
    assign y = a & b;
endmodule

module or_gate(input a, b, output y);
    assign y=a|b;
endmodule

module not_gate(input a, output y);
  assign y=~a;
endmodule

// ============================================================
// XOR Gate
// ============================================================
module xor_gate (a,b,y);
    input  a, b,
    output y;
    // TODO: declare intermediate wires
    wire w1,w2,w3,w4;
    assign w1=~b;
    assign w2=~a;
  // TODO: instantiate required gates
    and_gate g1(.a(a),.b(w1),.y(w3));
    and_gate g2(.a(w2),.b(b),.y(w4));
    or_gate g3(.a(w3),.b(w4),.y(y));
endmodule

//testbench
module tb;
 reg a,b;
 wire y;
 xor_gate dut(a,b,y);
  initial begin
   repeat(5)begin
    {a,b}=$random;
   #1;
   $display("a=%b  b=%b y=%b",a,b,y);
   end
  end
endmodule

/*
OUTPUT:
# a=0  b=0 y=0
# a=0  b=1 y=1
# a=0  b=1 y=1
# a=1  b=1 y=0
# a=0  b=1 y=1
*/
