module clock_div
#(
    parameter DIVIDE_BY = 17
    
)
(
    input clock,
    input reset,
    output reg div_clock
    
);

wire [DIVIDE_BY-1:0]Dout;
wire [DIVIDE_BY-1:0]notQ;
wire [DIVIDE_BY:0]wireclock;

assign wireclock[0] = clock;


genvar i;
    generate 
        for (i = 0; i < DIVIDE_BY; i = i + 1) begin
            dff u0 (.reset(reset), .clock(wireclock[i]) , .D(Dout[i]), .Q(wireclock[i+1]), .NotQ(Dout[i]));
            end
        endgenerate    
    
    assign div_clock = Q[DIVIDE_BY-1];
endmodule