module not_gate_tb;

    // Input ko reg aur output ko wire banate hain
    reg A;
    wire Y;

    // Design Under Test (DUT) ko testbench se connect karna
    not_gate dut (
        .A(A),
        .Y(Y)
    );

    initial begin
        // Waveform files generate karne ke liye standard commands
        $dumpfile("dump.vcd");
        $dumpvars(1, not_gate_tb);

        // Terminal par outputs ko monitor karne ke liye headings
        $display("Time\t Input A \t Output Y (NOT)");
        $display("---------------------------------");

        // Test Case 1: Agar Input 0 hai, toh Output 1 aana chahiye
        A = 0; #10;
        $display("%0dns\t    %b    \t       %b", $time, A, Y);

        // Test Case 2: Agar Input 1 hai, toh Output 0 aana chahiye
        A = 1; #10;
        $display("%0dns\t    %b    \t       %b", $time, A, Y);

        $finish; // Simulation khatam karne ke liye
    end

endmodule
