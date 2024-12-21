// Code your design here
module moore_fsm(input logic clk, in, output logic out);
  parameter logic [1:0] zero = 2'b00, one1 = 2'b01, two1s = 2'b10; 
  logic [1:0] state, next_state;
  
  always_ff@(posegde clk)
    begin
      state <= next_state;
    end
  
  always_comb
    begin
      next_state = state;
      out = 0;
      case(state)
        zero : begin
          out = 0;
          if(in)
            next_state = one1;
          else
            next_state = zero;
        end
        
        one1: begin
          out = 0;
          if(in)
            next_state = two1s;
          else
            next_state = zero;
        end
        
        two1s: begin
          out = 1;
          if(in)
            next_state = two1s;
          else
            next_state = zero;
        end
      endcase
    end
endmodule
        