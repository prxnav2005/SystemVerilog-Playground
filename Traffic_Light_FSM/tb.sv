// Code your testbench here
// or browse Examples
module traffic_tb;
  reg clk,reset,c,tl,ts;
  wire st;
  
  mealy_fsm DUT(.clk(clk), .reset(reset), .c(c), .tl(tl), .ts(ts), .st(st));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial begin
    reset = 1;
    c = 0;
    tl = 0;
    ts = 0;
    #10;

    reset = 0;
    c = 1;
   	tl = 1;
    ts = 0;
    #10;

    ts = 1;
    #10;

    c = 0;
    tl = 0;
    ts = 0;
    #10;

    $finish;
    end
endmodule

  


      

  
