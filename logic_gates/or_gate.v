/*
Write a Verilog module that implements a 2-input OR gate. The output should be 1 if either or both inputs are 1.

Module Name: top_module
Inputs: a, b (1-bit each)
Outputs: y (1-bit)
  */

module top_module(a,b,y);
  input a,b;
  output y;
    assign y=a|b;
endmodule

//testbench code
module tb;
  reg a,b;
  wire y;
  top_module dut(a,b,y);
  initial begin
    repeat(5)begin
      {a,b}=$random;
    end
  end
endmodule
