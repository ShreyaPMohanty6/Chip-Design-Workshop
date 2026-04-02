module seq_det_11_moore_tb;  
   reg clk, reset, in;
   wire out; integer i;
   

   seq_det_11_moore DUT(clk, reset, in, out);
   initial
     forever #5 clk=~clk;
   
   initial begin
     reset = 1'b1; clk=1'b0; in=0;
     #5
     reset = 1'b0;
     for(i=0;i<100;i=i+1) begin
       @(posedge clk);#1;
       in = $random;
       if(out==1'b1)
         $display("PASS:Sequence 11 detected\n");
       end
       #50;$finish;
      end
    
    initial begin
           $dumpfile("dump.vcd");
           $dumpvars;
      end
endmodule


