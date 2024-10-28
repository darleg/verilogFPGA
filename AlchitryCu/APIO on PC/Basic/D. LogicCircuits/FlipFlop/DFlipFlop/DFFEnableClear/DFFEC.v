// D-Flip Flop with enable and clear added on

module DFFEC  (
  input wire clk, notres, d, en, clr,
  output reg  q);
  reg res;
  always @( posedge clk )
    begin
      res = !notres;
    if ( res )                 // reset
      q <= 1'b0;
    else if ( clr == 1'b0 )    // clear
      q <= 1'b0;
    else if ( en )             // enable
      q <= d;
    end
endmodule
