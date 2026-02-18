/*
Logical Shifter
Design an 8-bit logical shifter that outputs both the left-shifted and right-shifted versions of its input by a variable amount.

Requirements

Module name: shift8
Inputs:
A[7:0] — data to shift
shamt[2:0] — shift amount (0–7)
Outputs:
SHL[7:0] — logical left shift, A << shamt
SHR[7:0] — logical right shift, A >> shamt
Notes

Use logical shifts only (<<, >>).
Vacated bits must be filled with 0; bits shifted out are discarded.
If shamt = 0, then SHL = SHR = A.
Worked examples

For A = 8'b1010_1100 (0xAC):

shamt	SHL (A << shamt)	SHR (A >> shamt)
0	1010_1100	1010_1100
1	0101_1000	0101_0110
3	0110_0000	0001_0101
7	0000_0000	0000_0001
*/
module shift8(A,shamt,SHL,SHR);
    input [7:0]A;
    input [2:0]shamt;
    output [7:0]SHL;
    output [7:0]SHR;
        assign SHL=A <<shamt;
        assign SHR=A >>shamt;
endmodule

module tb;
  reg [7:0]A;
  reg [2:0]shamt;
  wire [7:0]SHL;
  wire [7:0]SHR;
shift8 dut(A,shamt,SHL,SHR);
  initial begin
    repeat(10)begin
      {A,shamt}=$random;
      #1;
      $display("a=%b  shamt=%b SHL=%b SHR=%b",A,shamt,SHL,SHR);
    end
  end
endmodule

/*
OUTPUT;
# a=10100100  shamt=100 SHL=01000000 SHR=00001010
# a=11010000  shamt=001 SHL=10100000 SHR=01101000
# a=11000001  shamt=001 SHL=10000010 SHR=01100000
# a=11001100  shamt=011 SHL=01100000 SHR=00011001
# a=01100001  shamt=101 SHL=00100000 SHR=00000011
# a=00110001  shamt=101 SHL=00100000 SHR=00000001
# a=10001100  shamt=101 SHL=10000000 SHR=00000100
# a=01000010  shamt=010 SHL=00001000 SHR=00010000
# a=01100000  shamt=001 SHL=11000000 SHR=00110000
# a=10100001  shamt=101 SHL=00100000 SHR=00000101
*/
  
  
