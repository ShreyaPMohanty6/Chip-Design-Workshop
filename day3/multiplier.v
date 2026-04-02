module mul(
   input A0,A1,
   input B0,B1,
   output C0,C1,C2,C3
);

  wire P0,P1,P2,P3;
  wire carry1;

  assign P0 = A0 & B0;
  assign P1 = A0 & B1;
  assign P2 = A1 & B0;
  assign P3 = A1 & B1;
  
  half_adder HA1(.A(P1), .B(P2), .S(C1), .Cin(carry1));
  half_adder HA2(.A(P3), .B(carry1), .S(C2), .Cin(C3));   
  
  assign C0=P0;


endmodule
