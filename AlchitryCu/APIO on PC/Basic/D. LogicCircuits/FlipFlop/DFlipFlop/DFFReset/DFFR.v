// D type flip flop with reset

module DFFR  (
  input wire clk, notres, d,
  output reg q);          
  reg res;
  always @(posedge clk)
    begin
      res = !notres;
    if ( res )       // reset
      q <= 1'b0;
    else
      q <= d;
    end
endmodule
