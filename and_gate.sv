// Module ka naam aur uske ports define karna
module and_gate (
    input A,     // Pehla digital input
    input B,     // Doosra digital input
    output Y    // Digital output
);

    // Continuous Assignment: Y ko hamesha A aur B ka AND karke update rakho
    assign Y = A & B;

endmodule
