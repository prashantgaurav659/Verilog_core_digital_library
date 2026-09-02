module or_gate_tb;

    // Inputs ko 'reg' banate hain kyunki hum inki value khud badlenge
    reg A;
    reg B;

    // Output ko 'wire' banate hain kyunki yeh design se connect hoga
    wire Y;

    // Apne OR Gate design (DUT) ko testbench se jodna
    or_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Testing logic yahan se shuru hota hai
    initial begin
        // Waveform graph generate karne ke liye lines
        $dumpfile("dump.vcd");
      $dumpvars(1, or_gate_tb);

        // Black screen (Console) par heading print karna
        $display("Time\t A \t B \t Output Y");
        $display("---------------------------------");

        // Case 1: Dono inputs zero (0, 0)
        A = 0; B = 0; #10; // #10 ka matlab hai 10 nanosecond ka delay
        $display("%0dns\t %b \t %b \t    %b", $time, A, B, Y);

        // Case 2: A zero, B one (0, 1)
        A = 0; B = 1; #10;
        $display("%0dns\t %b \t %b \t    %b", $time, A, B, Y);

        // Case 3: A one, B zero (1, 0)
        A = 1; B = 0; #10;
        $display("%0dns\t %b \t %b \t    %b", $time, A, B, Y);

        // Case 4: Dono inputs one (1, 1) -> Isme output 1 aana chahiye
        A = 1; B = 1; #10;
        $display("%0dns\t %b \t %b \t    %b", $time, A, B, Y);

        $finish; // Simulation ko rokne ke liye
    end

endmodule
