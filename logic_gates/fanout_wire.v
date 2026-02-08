/*
2. Fan-Out Wire
Connect one input a to three outputs y1, y2, and y3 using wires. All outputs must always match the input.

Requirements:

Module Name: top_module
Inputs: a (1-bit)
Outputs: y1, y2, y3 (1-bit each)
*/
module top_module(input a, output y1, output y2, output y3);
    // Declare Inputs and outputs here

    // Module functionality here
    assign y1 = a;
    assign y2 = a;
    assign y3 = a;

endmodule
