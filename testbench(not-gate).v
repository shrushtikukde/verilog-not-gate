module tb;
  reg a;
  wire y;
  not_gate dut(y,a);
  initial begin
    $dumpfile("dump.vcd");
              $dumpvars(0,tb);
              a=0;
              #100
              a=1;
              #100 $finish;
              end
              initial  begin
                $monitor("time=%0t a=%b y=%b ",$time,a,y);
              end
              endmodule