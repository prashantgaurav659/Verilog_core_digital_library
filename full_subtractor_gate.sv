//full subtractor Design using Boolean expressions
module full_subtractor_gate (
  input a, // input bit 1
  input b,//input bit 2
  input bin, //input bit 3
  output diff, //diff output (XOR logic)
  output bout //bout output (AND logic)
);
  //diff bit logic
  assign diff = a ^ b ^ bin ;
  //bout bit logic
  assign bout = (~a & b) | ( ~ (a ^ b) & bin ) ;
 
endmodule
