module SIPO#(parameter N = 8) (input logic clk, reset,sin,load, input logic [N-1:0] d, output logic [N-1:0] q);
  
  always_ff@(posedge clk or posedge reset)
    begin
      if(reset)
        q <= 0;
      else if(load)
        q <= d;
      else
        q <= {q[N-2:0], sin};
    end
endmodule