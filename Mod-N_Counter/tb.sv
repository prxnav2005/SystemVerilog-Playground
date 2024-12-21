// Code your testbench here
// or browse Examples
module counter_tb;
  parameter N = 8;
  logic clk, reset;
  logic [N-1:0] q;
  logic [N-1:0] calculated_q;
 
  counter #(.N(N)) DUT(.clk(clk), .reset(reset), .q(q));
  
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      reset = 1;
      calculated_q = 0;
      #10 reset = 0;
      
      #10 calculated_q = 1;
      #10 calculated_q = 2;
      #10 calculated_q = 3;
      #10 calculated_q = 4;
      #10 calculated_q = 5;
      #10 calculated_q = 6;
      #10 calculated_q = 7;
      #10 calculated_q = 0;
      
      if(q != calculated_q)
        begin
          $error("Error lol");
          $stop;
        end
      
      #20;
      $stop;
    end
endmodule

  
