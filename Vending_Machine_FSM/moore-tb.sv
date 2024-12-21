module moore_tb;
  reg clk,reset,n,d;
  wire q;
  
  moore_fsm DUT(.clk(clk), .reset(reset), .n(n), .d(d), .q(q));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      reset = 1;
      n = 0;
      d = 0;
      #10;
      reset = 0;
      n = 1;
      d = 0;
      #10;
      n = 0;
      d = 1;
      #10;
      n = 1;
      d = 1;
      #20;
      $finish;
    end
endmodule