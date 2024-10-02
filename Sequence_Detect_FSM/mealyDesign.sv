// Code your design here
// Since its a mealy finite state machine, no.of states = N = 3. Given sequence is 010

module mealyFsm(input logic clk, reset, a, output logic y);
  
  typedef enum logic [1:0] {S0, S1, S2} stateType; //assuming S0 = A, S1 = B, S2 = C
  stateType PS,NS;
  
  always_ff@(posedge clk, posedge reset)
    if(reset)
      PS <= S0;
      else 
      PS <= NS;
  
  always_comb
    case(PS)
      S0 : if(a) NS = S2;
             else  NS = S1;
      S1 : if(a) NS = S2;
             else  NS = S1;
      S2 : if(a) NS = S2;
             else  NS = S1;
      default :  NS = S0;
    endcase
  
  assign y = (a & PS == S2);
endmodule
