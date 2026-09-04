//Half Adder Design using Boolean expressions
module half_adder_gate (
  input a, // input bit 1
  input b, //input bit 2
  output sum, //sum output (XOR logic)
  output carry //carry output (AND logic)
);
  //Sum bit logic
  assign sum = a ^ b;
  //carry bit logic
  assign carry = a & b;

endmodule
