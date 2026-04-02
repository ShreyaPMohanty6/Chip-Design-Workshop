module multiplier_tbb;
   reg A0,A1;
   reg B0,B1;
   wire C0,C1,C2,C3;
   
   mul dut(.A0(A0), .A1(A1), .B1(B1), .C0(C0), .C1(C1), .C2(C2), .C3(C3));
   
   initial begin
     {A1, A0, B1, B0} = 4'b0000; #5;
     {A1, A0, B1, B0} = 4'b0001; #5;
     {A1, A0, B1, B0} = 4'b0010; #5;
     {A1, A0, B1, B0} = 4'b0011; #5;
     {A1, A0, B1, B0} = 4'b0100; #5;
     {A1, A0, B1, B0} = 4'b0101; #5;
     {A1, A0, B1, B0} = 4'b0110; #5;
     {A1, A0, B1, B0} = 4'b0111; #5;
     {A1, A0, B1, B0} = 4'b1000; #5;
     {A1, A0, B1, B0} = 4'b1001; #5;
     {A1, A0, B1, B0} = 4'b1010; #5;
     {A1, A0, B1, B0} = 4'b1011; #5;
     {A1, A0, B1, B0} = 4'b1100; #5;
     {A1, A0, B1, B0} = 4'b1101; #5;
     {A1, A0, B1, B0} = 4'b1110; #5;
     {A1, A0, B1, B0} = 4'b1111; #5;
     
     $finish;
end

endmodule
