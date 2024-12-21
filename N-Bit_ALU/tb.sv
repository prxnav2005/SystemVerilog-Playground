// Code your testbench here
// or browse Examples
module tb_ALU;
  logic [7:0] A, B, result;
  logic [1:0] op_code;
  ALU #(8) alu_inst (.A(A), .B(B), .op_code(op_code), .result(result));

  initial begin
    A = 8'b00000001;
    B = 8'b00000010;
    op_code = 2'b00;
    #10;
    assert(result == (A & B)) else $fatal("Test failed for AND operation");

    op_code = 2'b01;
    #10;
    assert(result == (A ^ B)) else $fatal("Test failed for XOR operation");

    op_code = 2'b10;
    #10;
    assert(result == (A + B)) else $fatal("Test failed for ADD operation");

    op_code = 2'b11;
    #10;
    assert(result == (A - B)) else $fatal("Test failed for SUB operation");

    $finish;
  end
endmodule
