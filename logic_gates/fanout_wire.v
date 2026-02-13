/*
2. Fan-Out Wire
Connect one input a to three outputs y1, y2, and y3 using wires. All outputs must always match the input.

Requirements:

Module Name: top_module
Inputs: a (1-bit)
Outputs: y1, y2, y3 (1-bit each)
*/
module top_module(a,y1,y2,y3);
    input a;
    output y1,y2,y3; 
    // Declare Inputs and outputs here

    // Module functionality here
    assign y1 = a;
    assign y2 = a;
    assign y3 = a;

endmodule

module tb;
    reg a;
    wire y1,y2,y3;
        top_module dut(a,y1,y2,y3);
            initial begin
                repeat(5)begin
                    a=$random();
                    $display("a=%0b y1=%0b y2=%0b y3=%0b",a,y1,y2,y3);
                end
            end
endmodule
    
    
