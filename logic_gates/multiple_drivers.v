/*
3. Multiple Drivers
Drive a single output y from two different inputs a and b using two separate continuous assignments. Observe the result when a and b differ.

Requirements:

Module Name: top_module
Inputs: a, b (1-bit each)
Outputs: y (1-bit)
*/
module top_module (a,b,sel,y);
    input  a,
    input  b,
    input  sel,
    output y

    assign y = sel ? a : b;
endmodule

module tb;
    reg a,b,sel;
    output y;
    top_module dut(a,b,sel,y);
        initial begin
            repeat(5)begin
                {a,b,sel}=$random;
            end
        end
endmodule
        
