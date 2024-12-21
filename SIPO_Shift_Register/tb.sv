module SIPO_tb;
  reg clk, reset, sin, load;
  reg [7:0] d;
  wire [7:0] q;
  
  SIPO #(8) SIPO(.clk(clk), .reset(reset), .sin(sin), .load(load), .d(d), .q(q));
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    reset = 0;
    load = 0;
    sin = 0;
    d = 8'b10101010;
    
    reset = 1;
    #10 reset = 0;
    
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;
    
    load = 1;
    #10 load = 0;
    
    #10;
    $finish;
  end
endmodule