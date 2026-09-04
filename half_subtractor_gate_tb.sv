module half_subtractor_tb;

    // Inputs ko reg aur outputs ko wire banana
    reg A;
    reg B;
    wire Diff;
    wire Borrow;

    // DUT (Device Under Test) Connection
    half_subtractor dut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        // Waveform configurations
        $dumpfile("dump.vcd");
        $dumpvars(1, half_subtractor_tb);

        // Print monitor headers on console
        $display("Time\t A \t B \t Diff \t Borrow");
        $display("---------------------------------------");

        // Case 1: 0 - 0 = 0, Borrow = 0
        A = 0; B = 0; #10;
        $display("%0dns\t %b \t %b \t  %b  \t  %b", $time, A, B, Diff, Borrow);

        // Case 2: 0 - 1 = 1, Borrow = 1 (Tricky case)
        A = 0; B = 1; #10;
        $display("%0dns\t %b \t %b \t  %b  \t  %b", $time, A, B, Diff, Borrow);

        // Case 3: 1 - 0 = 1, Borrow = 0
        A = 1; B = 0; #10;
        $display("%0dns\t %b \t %b \t  %b  \t  %b", $time, A, B, Diff, Borrow);

        // Case 4: 1 - 1 = 0, Borrow = 0
        A = 1; B = 1; #10;
        $display("%0dns\t %b \t %b \t  %b  \t  %b", $time, A, B, Diff, Borrow);

        $finish;
    end

endmodule
