module XOR_gate_tb;
  //step 1 : input ko reg aur output ko wire banana
  reg A;
  reg B;
  wire Y;

  // step 2 : chip (DUT) ko testbench se jodna
  XOR_gate dut (
    .A(a),
    .B(B),
    .Y(Y)
  );

  // step 3 : input badal ke check karna 
  initial begin
    $dumpfile("dupmp.vcd");
    $dumpvars(1 , XOR_gate_tb);

    $display(" Time\t A \ B \t Output Y (XOR)");
    $display("-------------------------");

    A =0; B=0; #10;
    $display("%Odns\t %b \t %b \t   %b",$time,A, B, Y);
    A =0; B=1; #10;
    $display("%Odns\t %b \t %b \t   %b",$time,A, B, Y);
    A =1; B=0; #10;
    $display("%Odns\t %b \t %b \t   %b",$time,A, B, Y);
    A =1; B=1; #10;
    $display("%Odns\t %b \t %b \t   %b",$time,A, B, Y);

    $finish;
  end
endmodule
