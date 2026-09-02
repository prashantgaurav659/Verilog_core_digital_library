// module definition for a basic NOT gate (inverter)
module not_gate (
  input A,        //Sirf ek input hota hai isme
  output Y        //Output jo input ka ulta hoga
);

// Continuous Assignment: Verilog mein NOT ke liye '~' symbol use hota hai 
  assign Y = ~A;
endmodule 
