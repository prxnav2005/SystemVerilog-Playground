module mealy_tb;
  reg clk,reset, a;
  wire y;
  
  mealyFsm DUT(.clk(clk), .reset(reset), .a(a), .y(y));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      reset = 1;
      a = 0;
      #10;
      reset = 0;
      a = 0;
      #10;
      a = 1;
      #10;
      a = 0;
      #10;
      a = 0;
      #20;
      $finish;
    end
endmodule