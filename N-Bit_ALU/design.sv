// Code your design here
module ALU #(parameter N = 8)(input logic [N-1:0] a,b, input logic [1:0] op_code, output logic [N-1:0] res);
  
  always_comb
    begin
      case(op_code)
        2'b00 : res = a&b;
        2'b01 : res = a^b;
        2'b10 : res = a+b;
        2'b11 : res = a-b;
        default : res = 0;
      endcase
    end
endmodule