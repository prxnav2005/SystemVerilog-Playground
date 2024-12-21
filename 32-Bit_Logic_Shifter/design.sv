// Code your design here
module shifter(input logic [31:0] in, input logic[4:0] shift_amt, input logic lsl, lsr, asr, output logic [31:0] out);
  
  always_comb
    begin
      case ({lsl,lsr,asr})
        3'b100 : out = in << shift_amt;
        3'b010 : out = in >> shift_amt;
        3'b001: out = {in[31], in[31:1]} >> shift_amt;
        default : out = 32'b0;
      endcase
    end
endmodule




            