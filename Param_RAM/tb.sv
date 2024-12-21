// Code your testbench here
// or browse Examples
module ram_tb;
  reg clk, we;
  reg [5:0] adr;
  reg [31:0] din;
  wire [31:0] dout;
  
  ram #(6,32) DUT(.clk(clk), .we(we), .adr(adr), .din(din), .dout(dout));
  
  initial
    begin
      clk = 0;
      always #5 clk = ~clk;
    end
  
  initial
    begin
      we = 1;
      adr = 6'd0;
      din = 32'h19229210;
      #10;
      we = 0;
      #10; 
      assert(dout = 32'h19229210) else $fatal("dint work lol");
      adr = 6'd1;
      din = 32'h11922952;
      #10;
      we = 1;
      #10;
      we = 0;
      #10;
      assert(dout = 32'h11922952) else $fatal("dint work lol");
      $finish;
    end 
endmodule

  


      

  
