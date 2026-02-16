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

module tb;
    reg [7:0] in_vec;
    wire [3:0] out1;
    wire [1:0] out2;
    wire out3;
    wire out4;
    vector_splitter dut(.in_vec(in_vec),
                        .out1(out1),
                        .out2(out2),
                        .out3(out3),
                        .out4(out4));
        initial begin
            repeat(5)begin
                in_vec=$random;
                #1;
                $display("input=%b   out1=%b  out2=%b   out3=%b   out4=%b",in_vec,out1,out2,out3,out4);
            end
        end
endmodule

/*
OUTPUT:
# input=00100100   out1=0010  out2=01   out3=0   out4=0
# input=10000001   out1=1000  out2=00   out3=0   out4=1
# input=00001001   out1=0000  out2=10   out3=0   out4=1
# input=01100011   out1=0110  out2=00   out3=1   out4=1
# input=00001101   out1=0000  out2=11   out3=0   out4=1
*/
