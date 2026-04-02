
module seq_detector(input clk, reset, i, output reg out);
parameter S0 = 0, S1=1, S2 = 2, S3=3, S4 = 4; 

reg [2:0] state, next_state;

always @(posedge clk or posedge reset)
begin
 if (reset)
    state <= S0;
 else
    state <= next_state;
end

always @(state or i)
begin 
   case(state)
      S0: begin
       out <= 1'b0;
       if(i)
         next_state <= S1;
       else
         next_state <= S0;
      end    
      S1: begin
       out <= 1'b0;
       if(i)
         next_state <= S1;
       else
         next_state <= S2;
      end            

      S2: begin
       out <= 1'b0;
       if(i)
         next_state <= S4;
       else
         next_state <= S3;
      end        
      S3: begin
       if(i) begin
         next_state <= S1;
         out <= 1'b1;
        end
       else begin
         next_state <= S0;
         out <= 1'b0;
      end        
    end
      S4: begin
       if(i) begin
         next_state <= S1;
         out <= 1'b0;
        end
       else begin
         next_state <= S2;
         out <= 1'b1;
      end        
    end
    default: begin
       next_state <= S0;
       out <= 1'b0;
    end
   endcase
  end
endmodule



