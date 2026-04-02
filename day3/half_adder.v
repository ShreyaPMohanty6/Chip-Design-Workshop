//VLSI Dataflow model for half adder design file

module half_adder(A, B, S, Cin);
 input A,B;
 output S, Cin;

 assign S = A^B;
 assign Cin = A&B;

endmodule


