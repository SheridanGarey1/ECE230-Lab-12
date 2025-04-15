module seven_seg_scanner(
    input div_clock,
    input reset,
    output [3:0] anode
);

wire [3:0] aNext;
wire [3:0] aState;

dff_scanner dffAnode0(
    .D(anode[0]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[0])
);

dff_scanner dffAnode1(
    .D(anode[1]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[2])
);

dff_scanner dffAnode2(
    .D(anode[2]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[2])
);

dff_scanner dffAnode3(
    .D(anode[3]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[3])
);

assign anode[0] = ~aState[0] & aState[1] & aState[2] & aState[3];
assign anode[1] = aState[0] & ~aState[1] & aState[2] & aState[3];
assign anode[2] = aState[0] & aState[1] & ~aState[2] & aState[3];
assign anode[3] = aState[0] & aState[1] & aState[2] & ~aState[3];

        
    

endmodule