module ROM(input logic [1:0] adr, output logic [7:0] d);
  
  always_comb
    begin
      case(adr)
        2'b00 : d = 8'b01010011;
        2'b01 : d = 8'b11110000;
        2'b10 : d = 8'b00000000;
        2'b11 : d = 8'b11000111;
        default : d = 8'b0;
      endcase
    end
endmodule
