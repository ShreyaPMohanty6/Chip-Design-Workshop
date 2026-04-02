//mealy circuit for detecting sequence 11.
module seq_det_11_mealy(input clk, reset, din,
      output reg dout);
      parameter S0 = 0, S1=1;
      reg[1:0] state, next_state;
     //state transition
     always @(posedge clk or reset)
     begin
      if(reset)
          state<=S0;
      else
         state<= next_state;
      end
//stae machine coding
      always @(state or din)
      begin 
        case(state)
          S0: begin
           dout <= 1'b0;
           if(din)
            next_state <= S1;
           else
            next_state <= S0;
         end
         S1: begin
           if(din) begin
            next_state <= S1;
             dout <= 1'b1;
           end else begin
            next_state <= S0;
            dout <= 1'b0;
         end
         end
       default:begin
      dout<=0;
       end
    endcase
  end
endmodule
