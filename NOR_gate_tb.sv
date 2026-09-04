module NOR_gate_tb; // Yeh line jaruri hai

// step 1 : inputs ko reg aur output ko wire banana
reg A;
reg B;
wire X;

// step 2 : chip (DUT) ko testbench se jodna
NOR_gate dut (
    .A(A),
    .B(B),
    .X(X)
);

// step 3 : input badal ke check karna
initial begin
    $dumpfile("dump.vcd");
  $dumpvars(1, NOR_gate_tb);
    
    // Inputs test karne ke liye values
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    
    $finish; 
end 

endmodule 
