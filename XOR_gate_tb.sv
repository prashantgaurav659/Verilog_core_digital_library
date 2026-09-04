module XOR_gate_tb; // Yeh line jaruri hai

// step 1 : inputs ko reg aur output ko wire banana
reg P;
reg Q;
wire R;

// step 2 : chip (DUT) ko testbench se jodna
XOR_gate dut (
    .P(P),
    .Q(Q),
    .R(R)
);

// step 3 : input badal ke check karna
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, XOR_gate_tb);
    
    // Inputs test karne ke liye values
    P = 0; Q = 0; #10;
    P = 0; Q = 1; #10;
    P = 1; Q = 0; #10;
    P = 1; Q = 1; #10;
    
    $finish; 
end 

endmodule 
