module full_adder_gate_tb;
  
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  
  //dut connection
  full_adder_gate dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, full_adder_gate_tb);
    
    $display("Time\t a \t b \t cin \t sum \t cout");
    $display("-----------------------");
    //case1 : 0+0+0 = sum:0, cout:0
    a = 0 ; b = 0; cin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
    //case2 : 0+0+1 = sum:1, cout:0
    a = 0 ; b = 0; cin = 1;  #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case3 : 0+1+0 = sum:1, cout:0
    a = 0 ; b = 1; cin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case4 : 0+1+1 = sum:0, cout:1
    a = 0 ; b = 1; cin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case5 : 1+0+0 = sum:1, cout:0
    a = 1 ; b = 0; cin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case6 : 1+0+1 = sum:0, cout:1
    a = 1 ; b = 0; cin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case7 : 1+1+0 = sum:0, cout:1
    a = 1 ; b = 1; cin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);
     //case8 : 1+1+1 = sum:1, cout:1
    a = 1 ; b = 1; cin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, cin,  sum, cout);

    $finish;
  end
endmodule
