// Implement module called full_adder
module full_adder(

input A, B,Cin,
output Y, carryout
);

assign Y = (A ^ B) ^ Cin;
assign carryout = A & B | A & Cin | B & Cin;



endmodule