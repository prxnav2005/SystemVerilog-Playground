module mealy_fsm(input logic clk, in, output logic out);
  parameter logic zero  = 1'b0, one = 1'b1;
  
  logic state, next_state;
  
  always_ff@(posedge clk)
    begin
      state <= next_state;
    end
  
  always_comb
    begin
      next_state = state;
      out = 0;
      case(state)
        zero: begin
          out = 0;
          if(in)
            next_state = one;
          else
            next_state = zero;
        end
        one : begin
          if(in)
            begin
              out = 1;
              next_state = one;
            end else 
              begin
                out = 0;
                next_state = zero;
              end
        end
      endcase
    end
endmodule