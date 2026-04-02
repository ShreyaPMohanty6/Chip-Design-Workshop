
module full_adder(input A, input B, input Cin, output S, output Cout);

wire S1, C1, C2;

half_adder HA1(.A(A), .B(B), .S(S1), .Cin(C1));
half_adder HA2(.A(S1), .B(Cin), .S(S), .Cin(C2));

assign Cout = C1 | C2;

endmodule


