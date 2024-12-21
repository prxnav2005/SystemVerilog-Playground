module rom_tb;
  logic [1:0] adr;
  logic [7:0] d;
  
  ROM DUT(.adr(adr), .d(d));
  
  initial
    begin
      adr = 2'b00;
      #10;
      adr = 2'b01;
      #10;
      adr = 2'b10;
      #10;
      adr = 2'b11;
      
      $finish;
    end
endmodule