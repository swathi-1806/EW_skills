/*
Vector Concatenation
Design a combinational module named concat8_packer that packs four inputs into a single 8-bit output according to the exact bit layout below.

Requirements
Module name: concat8_packer
Inputs:
A[3:0] (4-bit)
B[1:0] (2-bit)
C (1-bit)
D (1-bit)
Output:
OUT[7:0] (8-bit)
Mapping (exact bit layout)
OUT bit range	What goes there (left→right = MSB→LSB)	Width
[7:4]	A[3:0] (preserve order: A[3]→MSB)	4
[3:2]	B[1:0]	2
[1]	~C (bitwise NOT of C)	1
[0]	D	1
Example
If A=4'b1101, B=2'b01, C=1'b0, D=1'b1 → OUT = 8'b1101_01_1_1 = 8'hD7.
*/
module concat8_packer(A,B,C,D,OUT);
  input [3:0]A;
  input [1:0]B;
  input C;
  input D;
  output [7:0]OUT;
      assign OUT={A[3:0],B[1:0],~C,D};
endmodule

module tb;
  reg [3:0]A;
  reg [1:0]B;
  reg C,D;
  wire [7:0]OUT;
  concat8_packer dut(A,B,C,D,OUT);
    initial begin
      repeat (5)begin
        {A,B,C,D}=$random;
        #1;
        $display("A=%b B=%b  C=%b  D=%b ||OUT=%b",A,B,C,D,OUT);
      end
    end
endmodule

/*
OUTPUT
# A=0010 B=01  C=0  D=0 ||OUT=00100110
# A=1000 B=00  C=0  D=1 ||OUT=10000011
# A=0000 B=10  C=0  D=1 ||OUT=00001011
# A=0110 B=00  C=1  D=1 ||OUT=01100001
# A=0000 B=11  C=0  D=1 ||OUT=00001111
*/
        
