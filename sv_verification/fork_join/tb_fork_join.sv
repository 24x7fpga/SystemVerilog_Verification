module tb_fork_join; 
 
  initial begin
    fork
      #2  $display("t = %0t, fork 1 => process 1", $time);
      #10 $display("t = %0t, fork 1 => process 2", $time);
      #5  $display("t = %0t, fork 1 => process 3", $time);
      join
    end

  initial begin
    fork
      #3 $display("t = %0t, fork 2 => process 1", $time);
      #6 $display("t = %0t, fork 2 => process 2", $time);
      #1 $display("t = %0t, fork 2 => process 3", $time);
      join
    end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/fork_join/*") 
// End:
