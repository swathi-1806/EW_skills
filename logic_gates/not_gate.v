/*
Write a Verilog module that implements a NOT gate (inverter). The output should always be the logical negation of the input.

Requirements:

Module Name: top_module
Inputs: a (1-bit)
Outputs: y (1-bit)
*/

module top_module(a,y);
  input a;
  output y;
    assign y=~a;
endmodule

//testbench code
module tb;
reg a;
wire y;
top_module dut(a,y);
  initial begin
    a=0;
    #5;
    a=1;
  end
endmodule
