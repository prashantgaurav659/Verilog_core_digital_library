module full_subtractor_gate_tb;
  
  reg a;
  reg b;
  reg bin;
  wire diff;
  wire bout;
  
  //dut connection
  full_subtractor_gate dut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, full_subtractor_gate_tb);
    
    $display("Time\t a \t b \t bin \t diff \t bout");
    $display("-----------------------");
    //case1 : 0+0+0 = diff:0, bout:0
    a = 0 ; b = 0; bin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
    //case2 : 0+0+1 = diff:1, bout:1
    a = 0 ; b = 0; bin = 1;  #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case3 : 0+1+0 = diff:1, bout:1
    a = 0 ; b = 1; bin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case4 : 0+1+1 = diff:0, bout:1
    a = 0 ; b = 1; bin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case5 : 1+0+0 = diff:1, bout:0
    a = 1 ; b = 0; bin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case6 : 1+0+1 = diff:0, bout:0
    a = 1 ; b = 0; bin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case7 : 1+1+0 = diff:0, bout:0
    a = 1 ; b = 1; bin = 0; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);
     //case8 : 1+1+1 = diff :1 bout:1
    a = 1 ; b = 1; bin = 1; #10;
    $display("0dns\t %b \t %b \t %b \t %b \t %b", $time, a, b, bin,  diff, bout);

    $finish;
  end
endmodule
