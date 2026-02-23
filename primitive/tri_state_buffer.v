/*
Tri-State Buffer
Implement a tri-state buffer:

When en=1, output y = a.
When en=0, output y = z.
Requirements

Module: tribuf_prim
Inputs: a, en
Output: y
Use the built-in primitive bufif1 (no assign, no always).
*/
/*
bufif1 = transparent when enable=1, else drives z.
bufif0 = transparent when enable=0, else drives z.
Tri-state buffers are used to share a bus; only one driver may be enabled at a time.
If en=x or z, output may become x/z depending on a.
*/

module tribuf_prim (
    input  a,
    input  en,
    output y
);
    // TODO: instantiate the built-in tri-state buffer
    // bufif1 <instance_name> ( <out>, <in>, <enable> );
   bufif1 g1 (y, a, en);
endmodule

module tb;
    reg a,en;
    wire y;
    tribuf_prim dut(a,en,y);
    initial begin
        repeat (5)begin
            {a,en}=$random;
            #1;
            $display("a=%b  en=%b  y=%b ",a,en,y);
        end
    end
endmodule

/*
# a=0  en=0  y=z 
# a=0  en=1  y=0 
# a=0  en=1  y=0 
# a=1  en=1  y=1 
# a=0  en=1  y=0 
*/
