/*
Parity Checker
Design a Verilog module parity_checker that computes odd and even parity of an 8-bit input using reduction operators.

Requirements

Module name: parity_checker
Input: D[7:0]
Outputs:
odd_parity (1 if the number of 1s in D is odd)
even_parity (1 if the number of 1s in D is even)
 

Expected behaviour

D (hex)	Ones count	odd_parity	even_parity
8'h00	      0          	0	        1
8'h01	      1	          1	        0
8'h03	      2	          0	        1
8'hAA	      4	          0	        1
8'hF0	      4	          0        	1
8'hFF	      8          	0        	1

*/
module parity_checker(D,odd_parity,even_parity);
    input [7:0]D;
    output odd_parity,even_parity;

        assign odd_parity=^D;
        assign even_parity=~(^D);
endmodule

module tb;
 reg [7:0]D;
 wire odd_parity,even_parity;
 parity_checker dut(D,odd_parity,even_parity);
  initial begin
   repeat(5)begin
    d=$random;
    $display("D=%0b  odd_parity=%0b  even_parity=%0b",D,odd_parity,even_parity);
   end
  end
endmodule
