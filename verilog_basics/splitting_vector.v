/*
Splitting Vector
Design a Verilog module called vector_splitter that takes an 8-bit input vector and divides it into:

out1 → upper 4 bits (4-bit output)
out2 → next 2 bits (2-bit output)
out3 → bit 1 (1-bit output)
out4 → bit 0 (1-bit output)
Requirements

Module name: vector_splitter
Input: in_vec[7:0]
Outputs:
out1[3:0] = bits [7:4]
out2[1:0] = bits [3:2]
out3 = bit [1]
out4 = bit [0]
Notes

You must use vector indexing ([msb:lsb]) and bit-select ([i]) operators.
Do not use concatenation or shift operators to implement outputs.
Trick: Make sure outputs are in correct order — e.g., out2[1:0] should map to [3:2] in the same order, not reversed.
Expected behavior (example)

If in_vec = 8'b1101_0110 (binary = 0xD6):

out1 = 1101 (bits [7:4])
out2 = 01 (bits [3:2])
out3 = 1 (bit [1])
out4 = 0 (bit [0])
*/

module vector_splitter (
    input  [7:0] in_vec,
    output [3:0] out1,
    output [1:0] out2,
    output       out3,
    output       out4
);
    // TODO: Assign outputs using part-selects and bit-selects
    assign out1= in_vec[7:4];
    assign out2= in_vec[3:2];
    assign out3= in_vec[1];
    assign out4= in_vec[0];
    
endmodule
