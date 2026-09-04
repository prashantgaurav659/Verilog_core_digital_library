module XNOR_gate (
    input A,
    input B,
    output Y
);

// ~^ operator Ex-NOR gate ka kaam karta hai
assign Y = A ~^ B; 

endmodule
