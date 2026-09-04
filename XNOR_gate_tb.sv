module XNOR_gate_tb;

// Inputs ko reg aur output ko wire banaya
reg A;
reg B;
wire Y;

// Chip (DUT) ko testbench se joda
XNOR_gate dut (
    .A(A),
    .B(B),
    .Y(Y)
);

// Inputs dekar test karna
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, XNOR_gate_tb);
    
    // XNOR Gate Truth Table Test (Same inputs par 1, different par 0)
    A = 0; B = 0; #10; // Output Y = 1
    A = 0; B = 1; #10; // Output Y = 0
    A = 1; B = 0; #10; // Output Y = 0
    A = 1; B = 1; #10; // Output Y = 1
    
    $finish;
end

endmodule
