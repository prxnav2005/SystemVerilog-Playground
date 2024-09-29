// Code your testbench here
// or browse Examples
module tb_sixteen_bit_prioenco;

  logic [15:0] A;
  logic [3:0] Y;

  sixteen_bit_prioenco uut (
    .A(A),
    .Y(Y)
  );

  initial begin
    A = 16'b0000000000000001; #10;
    A = 16'b0000000000000010; #10;
    A = 16'b0000000000000100; #10;
    A = 16'b0000000000001000; #10;
    A = 16'b0000000000010000; #10;
    A = 16'b0000000000100000; #10;
    A = 16'b0000000001000000; #10;
    A = 16'b0000000010000000; #10;
    A = 16'b0000000100000000; #10;
    A = 16'b0000001000000000; #10;
    A = 16'b0000010000000000; #10;
    A = 16'b0000100000000000; #10;
    A = 16'b0001000000000000; #10;
    A = 16'b0010000000000000; #10;
    A = 16'b0100000000000000; #10;
    A = 16'b1000000000000000; #10;
    A = 16'b0000000000000000; #10;

    A = 16'b0000000000000110; #10;
    A = 16'b0000000000010010; #10;
    A = 16'b0000000010100000; #10;
    A = 16'b0001000000000001; #10;
    A = 16'b0110000000000000; #10;
    A = 16'b1111111111111111; #10;

    $finish;
  end

endmodule
