module fourbitadder(
    input [3:0] A, B,
    output [3:0] Y
    ); 
    
    wire [3:0] carry;
    
    full_adder one(
    .A(A[0]),
    .B(B[0]),
    .Cin(1'b0),
    .Y(Y[0]),
    .carryout(carry[0])
    );
    
    full_adder two(
    .A(A[1]),
    .B(B[1]),
    .Cin(carry[0]),
    .Y(Y[1]),
    .carryout(carry[1])
    );
    
    full_adder three(
    .A(A[2]),
    .B(B[2]),
    .Cin(carry[1]),
    .Y(Y[2]),
    .carryout(carry[2])
    );
    
    full_adder four(
    .A(A[3]),
    .B(B[3]),
    .Cin(carry[2]),
    .Y(Y[3]),
    .carryout(carry[3])
    );
    
endmodule
