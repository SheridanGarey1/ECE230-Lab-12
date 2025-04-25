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
        for (i = 1; i <= DIVIDE_BY; i = i + 1) begin
            dff u0 (.reset(reset), .clock(wireclock[i-1]) , .D(Dout[i-1]), .Q(wireclock[i]), .NotQ(Dout[i-1]));
            end
        endgenerate    
    
    always @(*) begin
        div_clock <= wireclock[DIVIDE_BY];
    end
endmodule