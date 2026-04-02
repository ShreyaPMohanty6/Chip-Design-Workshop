////testbench code for VLSI Design of Half Adder

module half_adder_tb;
reg A,B;
wire S, Cin;

half_adder dut(A, B, S, Cin);

initial
begin
 A=0; B=0;
 #5 A=0; B=1;
 #5 A=1; B=0;
 #5 A=1; B=1;
end
always #5 A=~A;
always #10 B=~B;

initial #50 $finish;

endmodule
