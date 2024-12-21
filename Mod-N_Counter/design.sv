// Code your design here
module counter #(parameter N = 8)(input logic clk, reset, output logic [N-1:0] q);
  
  always_ff@(posedge clk or posedge reset)
    begin
      if(reset)
        q <= 0;
      else if(q == N-1)
        q <= 0;
      else 
        q <= q+1;
    end
endmodule


            