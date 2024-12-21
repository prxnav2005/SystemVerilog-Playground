// Code your design here
module PISO#(parameter N = 8)(input logic clk, reset, load, sin, input logic [N-1:0] d, output logic [N-1:0] q, output logic sout);
  
  always_ff@(posedge clk or posedge reset)
    if(reset)
      q <= 0;
  	else
      q <= {q[N–2:0], sin};
  
  assign sout = q[N-1];
endmodule

