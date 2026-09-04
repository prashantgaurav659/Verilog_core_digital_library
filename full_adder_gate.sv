//full Adder Design using Boolean expressions
module full_adder_gate (
  input a, // input bit 1
  input b,//input bit 2
  input cin, //input bit 3
  output sum, //sum output (XOR logic)
  output cout //carry output (AND logic)
);
  //Sum bit logic
  assign sum = a ^ b ^ cin ;
  //carry bit logic
  assign cout = (a & b) | (b & cin) | (cin & a) ;

endmodule
