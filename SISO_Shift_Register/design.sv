module siso #(parameter N = 8) (input logic clk, reset, sin, output logic [N-1:0] q);
  always_ff @(posedge clk, posedge reset) begin
    if (reset) q <= 0;
    else q <= {q[N-2:0], sin};
  end
endmodule