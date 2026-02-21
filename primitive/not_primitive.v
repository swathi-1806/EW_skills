/*
NOT Primitive
Implement a NOT using the Verilog gate primitive.

 

Requirements

Module: not2_prim
Inputs: a
Output: y
Must instantiate the built-in not primitive (no assign, no always).
*/
module not2_prim (
    input  a,
    output y
);
    // TODO: instantiate the built-in NOT gate primitive
    not g1(y,a);
endmodule

module tb;
 reg a;
 wire y;
 not2_prim dut(.a(a),.y(y));
   initial begin
    a=1;
    #1;
     $display("a=%b y=%b",a,y);
    a=0;
    #1;
     $display("a=%b y=%b",a,y);
    
    end
 
endmodule

/*
OUTPUT
# a=1 y=0
# a=0 y=1
*/
