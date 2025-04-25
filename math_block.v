module math_block(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AplusB,
    output [3:0] AminusB
);

wire [3:0] twosB;


twos_compliment twocomp(
.A(B),
.Y(twosB)
);

fourbitadder subtraction(
.A(A),
.B(twosB),
.Y(AminusB)
);

fourbitadder addition(
.A(A),
.B(B),
.Y(AplusB)
);

endmodule