//VERILOG DESIGN FOR MUX AND A LATCH
module mux_ff_ex(i0,i1,i2,i3,clk,resetn,sel,q);

 input clk, resetn;
 input i0,i1,i2,i3;
 input [1:0] sel;
 output q;


 reg q_out;
 wire mux_out; 

assign q = q_out;
assign mux_out = (sel[1] ? (sel[0] ? i3:i2) : (sel[0] ? i1 : i0));

always @(posedge clk or negedge resetn)
  begin 
    if(!resetn)
     q_out <=0;
    else
     q_out <= mux_out;
   end
endmodule 
