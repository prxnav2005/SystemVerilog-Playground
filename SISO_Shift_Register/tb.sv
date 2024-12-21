module SISO_tb;
  reg clk, reset, sin;
  wire [7:0] q;
  
  SISO #(8) SISO(.clk(clk), .reset(reset), .sin(sin), .q(q));
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    reset = 0;
    sin = 0;
    
    reset = 1;
    #10 reset = 0;
    
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;
    
    #10;
    $finish;
  end
endmodule