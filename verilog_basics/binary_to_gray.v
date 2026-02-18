/*
Binary to Gray Code Converter
Design a Binary to Gray Code Converter that converts a 4-bit binary input into its 4-bit Gray code equivalent.

Requirements
Module name: bin2gray4
Inputs:
bin_in[3:0]
Outputs:
gray_out[3:0]
Expected behavior (full truth table)
bin	  gray	bin	  gray	bin	  gray	bin	gray
0000	0000	0100	0110	1000	1100	1100	1010
0001	0001	0101	0111	1001	1101	1101	1011
0010	0011	0110	0101	1010	1111	1110	1001
0011	0010	0111	0100	1011	1110	1111	1000
 

Note - Binary to Gray conversion

The most significant bit (MSB) of the Gray code is the same as the MSB of the binary input. Each subsequent bit of the Gray code is obtained by XORing the current bit of the binary input with the previous bit.


*/
module bin2gray4(bin_in,gray_out);
    input [3:0]bin_in;
    output [3:0]gray_out;
        assign gray_out[3]=bin_in[3];
        assign gray_out[2]=bin_in[3]^bin_in[2];
        assign gray_out[1]=bin_in[2]^bin_in[1];
        assign gray_out[0]=bin_in[1]^bin_in[0];
endmodule
