// Code your testbench here
// or browse Examples
module counter_tb;
  parameter N = 4;
  reg clk, reset, ctrl;
  wire [N-1:0] q;
  
  up_down #(.N(N)) DUT(.clk(clk), .reset(reset), .ctrl(ctrl), .q(q));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      reset = 1;
      ctrl = 0;
      #10 reset = 0;
      repeat (10) #10;
      ctrl = 1;
      repeat (10) #10;
      reset = 1;
      #10 reset = 0;
      ctrl = 0;
      repeat (10) #10;
      $stop;
    end
endmodule
  
