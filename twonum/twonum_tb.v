module seq_detector_tb;
 reg clk,reset,x;
 wire out;
 integer i;

seq_detector dut(clk,reset,x,out);
initial 
    forever #5 clk =~ clk;
initial begin
  reset = 1'b1;
  clk = 1'b0;
  x=0;

 #5;
reset = 1'b0;
for (i=0;i<50;i=i+1) begin
  @(posedge clk); #1;
  x= $random;
  end

#20 ; 
$finish;
end 
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  end
endmodule
