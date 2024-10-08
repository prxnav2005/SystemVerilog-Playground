// Code your design here
module sixteen_bit_prioenco(input logic [15:0] A, output logic [3:0] Y);
  always_comb begin
    casez (A)
      16'b0000000000000001 : Y = 4'b0000;
      16'b000000000000001? : Y = 4'b0001;
      16'b00000000000001?? : Y = 4'b0010;
      16'b0000000000001??? : Y = 4'b0011;
      16'b000000000001???? : Y = 4'b0100;
      16'b00000000001????? : Y = 4'b0101;
      16'b0000000001?????? : Y = 4'b0110;
      16'b000000001??????? : Y = 4'b0111;
      16'b00000001???????? : Y = 4'b1000;
      16'b0000001????????? : Y = 4'b1001;
      16'b000001?????????? : Y = 4'b1010;
      16'b00001??????????? : Y = 4'b1011;
      16'b0001???????????? : Y = 4'b1100;
      16'b001????????????? : Y = 4'b1101;
      16'b01?????????????? : Y = 4'b1110;
      16'b1??????????????? : Y = 4'b1111;
      default              : Y = 4'bxxxx;
    endcase
  end
endmodule
