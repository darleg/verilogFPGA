// D type Flip Flop Simple

module DFFS(
  input wire clk, d,
  output reg q);
  always @(posedge clk)
    begin
      q <= d;
    end
  endmodule
