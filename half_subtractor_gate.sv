// Half Subtractor RTL Design 
module half_subtractor (
    input A,       // Minuend input bit
    input B,       // Subtrahend input bit
    output Diff,   // Difference output bit
    output Borrow  // Borrow output bit
);

    // Boolean Logic Expressions
    assign Diff = A ^ B;
    assign Borrow = ~A & B;

endmodule
