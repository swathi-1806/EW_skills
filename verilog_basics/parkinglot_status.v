/*
Parking Lot Status
Design a Verilog module that reports parking lot status for a 16-bit occupancy map. Each bit of the input indicates whether a slot is occupied (1) or free (0).

Requirements

Module name: parking_status16
Inputs:
slots[15:0] — bit i represents slot i (1 = occupied, 0 = free)
Outputs:
all_full — 1 when every slot is occupied
any_free — 1 when at least one slot is free
 

Expected behaviour

slots (concept)	Example value	all_full	any_free
all empty	16'h0000	0	1
all occupied	16'hFFFF	1	0
mixed	16'hAAAA (0101… pattern)	0	1
mixed	16'h0001	0	1
  */

module parking_status16(slots,all_full,any_free);
    input [15:0]slots;
    output all_full,any_free;
        assign all_full= &slots;
        assign any_free=~(&slots);
endmodule
