// Code your testbench here
// or browse Examples
module fsm_tb;
  reg clk, in;
  wire out;
  
  fsm DUT(.clk(clk), .in(in), .out(out));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      in = 0;
      #10 in = 1;
      #10 in = 0;
      #10 in = 1;
      #10 in = 1;
      #10 in = 0;
      #10 in = 1;
      $stop;
    end
endmodule
