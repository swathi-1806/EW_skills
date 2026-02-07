/*
Wire
Write a Verilog module that directly connects an input signal to an output signal. Whatever value appears at the input should immediately appear at the output.
Requirements
Module Name: top_module
Inputs: a
Outputs: y
*/

module top_module(input a, output y);
  assign y=a;
endmodule

//testbench
module top;
  reg a;
  wire y;
  top_module dut(a,y);
    initial begin
      repeat(5)begin
        a=$urandom_range(10,20);
        #1;
        $display("a=%0b||y=%0b",a,y);
      end
    end
endmodule

/*
//output
# a=1||y=1
# a=0||y=0
# a=1||y=1
# a=0||y=0
# a=1||y=1
*/
  
