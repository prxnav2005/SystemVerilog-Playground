// Code your testbench here
// or browse Examples
module shifter_tb;
  reg [31:0] in;
  reg [4:0] shift_amt;
  reg lsl, lsr, asr;
  wire [31:0] out;
  
  shifter DUT(.in(in), .shift_amt(shift_amt), .lsl(lst), .lsr(lsr), .asr(asr));
  
  initial begin
    in = 32'hA5A5A5A5;
    shift_amt = 5'd2;
    lsl = 1;
    lsr = 0;
    asr = 0;
    #10;
    assert(out == (in << 2)) else $fatal("dint work lol");

    in = 32'hA5A5A5A5;
    shift_amt = 5'd2;
    lsl = 0;
    lsr = 1;
    asr = 0;
    #10;
    assert(out == (in >> 2)) else $fatal("dint work lol");

    in = 32'hA5A5A5A5;
    shift_amt = 5'd2;
    lsl = 0;
    lsr = 0;
    asr = 1;
    #10;
    assert(out == {in[31], in[31:1]} >> 2) else $fatal("dint work lol");
    
    $finish;
  end
endmodule


      

  
