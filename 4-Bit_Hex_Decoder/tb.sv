module sevenseg_tb;
  logic [3:0] d;
  logic [6:0] q;

  hexdecoder dut(d, q);

  initial begin
    d = 4'h0; #10;
    d = 4'h1; #10;
    d = 4'h2; #10;
    d = 4'h3; #10;
    d = 4'h4; #10;
    d = 4'h5; #10;
    d = 4'h6; #10;
    d = 4'h7; #10;
    d = 4'h8; #10;
    d = 4'h9; #10;
    d = 4'ha; #10;
    d = 4'hb; #10;
    d = 4'hc; #10;
    d = 4'hd; #10;
    d = 4'he; #10;
    d = 4'hf; #10;
    $stop;
  end
endmodule
