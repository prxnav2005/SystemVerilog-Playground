// Code your design here
module moore_fsm(input logic clk, reset, n, d, output logic q);
  typdef enum logic [1:0] {zero = 2'b00, five = 2'b01, ten = 2'b10, fifteen = 2'b11} stateType;
  stateType state, next_state;
  
  always_comb
    begin
      case(state)
        zero : begin
          if(d) next_state = five;
          else if(n) next_state = ten;
          else next_state = zero;
          open = 0;
        end
        
        five : begin
          if(d) next_state = fifteen;
          else if(n) next_state = ten;
          else next_state = five;
          open = 0;
        end
        
        ten : begin
          if(d) next_state = fifteen;
          else if(n) next_state = fifteen;
          else next_state = ten;
          open = 0;
        end
        
        fifteen : begin
          if(!reset) next_state = fifteen;
          else next_state = zero;
          open = 1;
        end
        
        default : begin
          next_state = zero;
          open = 0;
        end
      endcase
    end
  
  always_ff@(posedge clk or posedge reset)
    begin
      if(reset)
        state <= zero;
      else
        state <= next_state;
    end
endmodule







            