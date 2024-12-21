module up_down#(parameter N = 4)(input logic clk, reset, ctrl, output logic [N-1:0] q);
  
  always_ff@(posedge clk or posedge reset)
    begin
      if(reset)
        q <= 0;
      else
        begin
          if(ctrl)
            q <= q-1;
          else
            q <= q+1;
        end
    end
endmodule