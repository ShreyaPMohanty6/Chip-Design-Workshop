
module full_adder_tb;
reg A,B,Cin;
wire S, Cout;

full_adder DUT(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

initial begin 
   $display("A B Cin | Sum Cout");
   $monitor("%b %b %b | %b %b", A, B, Cin, S, Cout);

   A=0; B=0; Cin=0; #5;
   A=0; B=0; Cin=1; #5;
   A=0; B=1; Cin=0; #5;
   A=0; B=1; Cin=1; #5;
   A=0; B=0; Cin=0; #5;
   A=1; B=0; Cin=0; #5;
   A=1; B=0; Cin=1; #5;
   A=1; B=1; Cin=0; #5;
   A=1; B=1; Cin=1; #5;

end

initial 
 #50 $finish;

endmodule

