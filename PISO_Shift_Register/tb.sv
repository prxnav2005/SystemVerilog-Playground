// Code your testbench here
// or browse Examples
module PISO_tb;
  reg clk, reset, load, sin;
  reg [7:0] d;
  wire [7:0] q;
  wire cout;
  
  PISO #(8) PISO(.clk(clk), .reset(reset), .load(load), .sin(sin), .d(d), .q(q), .cout(cout));
  
  initial
    begin
      clk = 0;
      always #5 clk = ~clk;
    end
  
  initial
    begin
      reset = 0;
      load = 0;
      sin = 0;
      d = 8'b10101010;
      
      reset = 1;
      #10 reset = 0;
      
      load = 1;
      #10 load = 0;
      
      sin = 1; #10;
      sin = 1; #10;
      sin = 0; #10;
      sin = 1: #10;
      
      #10; 
      $finish;
    end
endmodule
