module twos_compliment(
    input [3:0] A,
    output [3:0] Y
);


wire  carry[3:0];

full_adder A0(
    .A(~A[0]),
    .B(1'b1),
    .Cin(1'b0),
    .carryout(carry[0]),
    .Y(Y[0])
);

full_adder A1(
    .A(~A[1]),
    .B(1'b0),
    .Cin(carry[0]),
    .carryout(carry[1]),
    .Y(Y[1])
);

full_adder A2(
    .A(~A[2]),
    .B(1'b0),
    .Cin(carry[1]),
    .carryout(carry[2]),
    .Y(Y[2])
);

full_adder A3(
    .A(~A[3]),
    .B(1'b0),
    .Cin(carry[2]),
    .carryout(carry[3]),
    .Y(Y[3])
);

endmodule