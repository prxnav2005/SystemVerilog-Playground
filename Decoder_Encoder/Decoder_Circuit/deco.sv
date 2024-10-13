module deco # (parameter n = 5) (input logic [n-1:0] a, output logic [2**n-1:0] y);
  always_comb
    y[a] = 1;
endmodule
