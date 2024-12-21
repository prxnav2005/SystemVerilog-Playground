// Code your design here
module traffic(input logic clk, reset, c, tl, ts, output logic st);
    typedef enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11} stateType;
    stateType state, next_state;
    logic next_st;

    always_comb begin
        case (state)
            S0: begin
              if (!(tl && c)) begin
                    next_state = S0;
                    next_st = 0;
              end else if (tl || c) begin
                    next_state = S1;
                    next_st = 1;
                end else begin
                    next_state = S0;
                    next_st = 0;
                end
            end
            S1: begin
              if (!ts) begin
                    next_state = S1;
                    next_st = 1;
                end else begin
                    next_state = S2;
                    next_st = 0;
                end
            end
            S2: begin
              if (!(tl && c)) begin
                    next_state = S0;
                    next_st = 0;
                end else begin
                    next_state = S3;
                    next_st = 1;
                end
            end
            S3: begin
              if (!ts) begin
                    next_state = S3;
                    next_st = 1;
                end else begin
                    next_state = S0;
                    next_st = 0;
                end
            end
            default: begin
                next_state = S0;
                next_st = 0;
            end
        endcase
    end

  always_ff @(posedge clk) begin
    if (reset) begin
            state <= S0;
            st <= 0;
        end else begin
            state <= next_state;
            st <= next_st;
        end
    end
endmodule

