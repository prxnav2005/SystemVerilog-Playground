module hexdecoder(input logic [3:0] d,
                  output logic [6:0] q);

  always_comb
    case (d)
      4'h0: q = 7'b111_1110;
      4'h1: q = 7'b011_0000;
      4'h2: q = 7'b110_1101;
      4'h3: q = 7'b111_1001;
      4'h4: q = 7'b011_0011;
      4'h5: q = 7'b101_1011;
      4'h6: q = 7'b101_1111;
      4'h7: q = 7'b111_0000;
      4'h8: q = 7'b111_1111;
      4'h9: q = 7'b111_0011;
      4'ha: q = 7'b111_0111;
      4'hb: q = 7'b001_1111;
      4'hc: q = 7'b100_1110;
      4'hd: q = 7'b011_1101;
      4'he: q = 7'b100_1111;
      4'hf: q = 7'b100_0111;
    endcase
endmodule
