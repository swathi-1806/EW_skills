/*
4-to-1 Multiplexer by Module Instantiation
Design a 4-to-1 multiplexer (MUX) by instantiating three 2-to-1 multiplexers

Requirements:

Module name: mux4to1
Inputs:
d0, d1, d2, d3 → four 1-bit data inputs
sel → 2-bit select input
Truth Table
sel[1:0]	y
2'b00	    d0
2'b01	    d1
2'b10	    d2
2'b11	    d3
*/
// ============================================================
// 2-to-1 Multiplexer
// ============================================================
module mux2to1 (
    input  d0, d1,   // data inputs
    input  sel,      // select input
    output y         // output
);
    assign y = sel ? d1 : d0;
endmodule
// ============================================================
// TODO: Instantiate three mux2to1 modules
//       - First two mux2to1 select between (d0,d1) and (d2,d3)
//       - Third mux2to1 selects between their outputs
// ============================================================
module mux4to1 (
    input  d0, d1, d2, d3,
    input  [1:0] sel,
    output y
);
wire w1,w2;
    mux2to1 m1(.d0(d0),.d1(d1),.sel(sel[0]),.y(w1));
    mux2to1 m2(.d0(d2),.d1(d3),.sel(sel[0]),.y(w2));
    mux2to1 m3(.d0(w1),.d1(w2),.sel(sel[1]),.y(y));

endmodule

module tb;
  reg d0,d1,d2,d3;
  reg [1:0]sel;
  wire y;
  mux4to1 dut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.sel(sel),.y(y));
    initial begin
      repeat (10)begin
        {sel,d0,d1,d2,d3}=$random;
        #1;
        $display("%b%b%b%b=%b",d3,d2,d1,d0,y);
      end
    end
endmodule

/*
output
          d3  d2  d1  d0    y
# sel=10  0   0   1   0   = 0
# sel=00  1   0   0   0  =  0
# sel=00  1   0   0   1  =  1
# sel=10  1   1   0   0  =  1
# sel=00  1   0   1    1 =  1
# sel=00  1   0   1   1  =  1
# sel=10  1   0   1   0  =  0
# sel=01  0   1   0   0  =  0
# sel=00  1   0   0   0  =  0
# sel=00  1   0   1   1  =  1
*/
             
             
             
             
             
             
             
             
             
          
