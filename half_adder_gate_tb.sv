module half_adder_gate_tb;
  
  reg a;
  reg b;
  wire sum;
  wire carry;
  
  //dut connection
  half_adder_gate dut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, half_adder_gate_tb);
    
    $display("Time\t a \t b \t sum \t carry");
    $display("-----------------------");
    //case1 : 0+0 = sum:1, carry:0
    a = 0 ; b = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b", $time, a, b, sum, carry);
    //case2 : 0+1 = sum:1, carry:0
    a = 0 ; b = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b", $time, a, b, sum, carry);
    //case3 : 1+0 = sum: 1, carry:0
    a = 1 ; b = 0 ; #10;
    $display("0dns\t %b \t %b \t %b \t %b", $time, a, b, sum, carry);
    //case4 : 1+1 = sum:0, carry:1
    a = 1 ; b = 1 ; #10;
    $display("0dns\t %b \t %b \t %b \t %b", $time, a, b, sum, carry);
    
    $finish;
  end
endmodule
