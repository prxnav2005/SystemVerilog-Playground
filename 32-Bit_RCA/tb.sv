module RCA_tb;
    logic [31:0] a, b;
    logic cin;
    logic [31:0] real_s;
    logic real_cout;
    logic [31:0] calc_s;
    logic calc_cout;

    RCA dut (a, b, cin, real_s, real_cout);

    initial begin
        a = 32'b00000000000000000000000000000000; b = 32'b00000000000000000000000000000000; cin = 1'b0;
        {calc_cout, calc_s} = a + b + cin;
        #10;
        if (real_s !== calc_s || real_cout !== calc_cout) $error("Test failed for a=%b, b=%b, cin=%b", a, b, cin);

        a = 32'b11111111111111111111111111111111; b = 32'b00000000000000000000000000000001; cin = 1'b0;
        {calc_cout, calc_s} = a + b + cin;
        #10;
        if (real_s !== calc_s || real_cout !== calc_cout) $error("Test failed for a=%b, b=%b, cin=%b", a, b, cin);

        a = 32'b00010010001101000101011001111000; b = 32'b10000111011001010100001100100001; cin = 1'b1;
        {calc_cout, calc_s} = a + b + cin;
        #10;
        if (real_s !== calc_s || real_cout !== calc_cout) $error("Test failed for a=%b, b=%b, cin=%b", a, b, cin);

        a = 32'b10101011110011010001001000110100; b = 32'b00010010001101001010101111001101; cin = 1'b1;
        {calc_cout, calc_s} = a + b + cin;
        #10;
        if (real_s !== calc_s || real_cout !== calc_cout) $error("Test failed for a=%b, b=%b, cin=%b", a, b, cin);

        $display("All tests passed.");
        $stop;
    end
endmodule
