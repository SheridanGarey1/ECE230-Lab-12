module seven_seg_scanner(
    input div_clock,
    input reset,
    output [3:0] anode
);

wire [3:0] aNext;
wire [3:0] aState;

dff_scanner dffAnode0(
    .Default(1'b1),
    .D(aNext[0]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[0])
);

dff_scanner dffAnode1(
    .Default(1'b0),
    .D(aNext[1]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[1])
);

dff_scanner dffAnode2(
    .Default(1'b0),
    .D(aNext[2]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[2])
);

dff_scanner dffAnode3(
    .Default(1'b0),
    .D(aNext[3]),
    .clk(div_clock),
    .reset(reset),
    .Q(aState[3])
);

assign aNext[0] = aState[3];
assign aNext[1] = aState[0];
assign aNext[2] = aState[1];
assign aNext[3] = aState[2];
assign anode = ~aState;


        
    

endmodule