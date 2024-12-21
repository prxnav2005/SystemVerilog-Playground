module mealy_fsm(input logic clk, reset, n, d,output logic q);
    typedef enum logic [1:0] {zero = 2'b00, five = 2'b01, ten = 2'b10, fifteen = 2'b11} stateType;
    stateType state, next_state;
    logic next_open;

    always_comb begin
        case (state)
            zero: begin
                if (D) begin
                    next_state = ten;
                    next_open = 0;
                end else if (N) begin
                    next_state = five;
                    next_open = 0;
                end else begin
                    next_state = zero;
                    next_open = 0;
                end
            end
            five: begin
                if (D) begin
                    next_state = fifteen;
                    next_open = 1;
                end else if (N) begin
                    next_state = ten;
                    next_open = 0;
                end else begin
                    next_state = five;
                    next_open = 0;
                end
            end
            ten: begin
                if (D) begin
                    next_state = fifteen;
                    next_open = 1;
                end else if (N) begin
                    next_state = fifteen;
                    next_open = 1;
                end else begin
                    next_state = ten;
                    next_open = 0;
                end
            end
            fifteen: begin
                if (Reset) begin
                    next_state = zero;
                    next_open = 0;
                end else begin
                    next_state = fifteen;
                    next_open = 0;
                end
            end
            default: begin
                next_state = zero;
                next_open = 0;
            end
        endcase
    end

    always_ff @(posedge Clk) begin
        if (Reset) begin
            state <= zero;
            open <= 0;
        end else begin
            state <= next_state;
            open <= next_open;
        end
    end
endmodule