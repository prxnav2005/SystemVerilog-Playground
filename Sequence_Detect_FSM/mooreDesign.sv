//Since its moore machine, no.of states = N = 5 

module mooreFsm(input logic clk, reset, a, output logic y);
  typedef enum logic [2:0] {S0,S1,S2,S3,S4} stateType;
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
      S1 : if(a) NS = S3;
      	   else  NS = S1;
      S2 : if(a) NS = S2;
      	   else  NS = S4;
      S3 : if(a) NS = S2;
      	   else  NS = S4;
      S4 : if(a) NS = S3;
      	   else  NS = S1;
      default :  NS = S0;
    endcase
  
  assign y = (PS == S3)|| (PS == S4);
endmodule
  