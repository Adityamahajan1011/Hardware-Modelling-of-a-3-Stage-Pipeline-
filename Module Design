module pipee (a, b, c, d, clk1, clk2, f);

  input  [4:0] a, b, c, d;
  input        clk1, clk2;
  output reg   [11:0] f;

  reg [5:0] latch_s1_x1, latch_s1_x2;
  reg [4:0] latch_s1_d;
  reg [6:0] latch_s2_x3;
  reg [4:0] latch_s2_d;
initial begin
  latch_s1_x1 = 0;
  latch_s1_x2 = 0;
  latch_s1_d  = 0;
  latch_s2_x3 = 0;
  latch_s2_d  = 0;
  f = 0;
end
  // stage 1
  always @(posedge clk1) begin
    latch_s1_x1 <= a + b;
    latch_s1_x2 <= c - d;
    latch_s1_d  <= d;
  end

  // stage 2
  always @(posedge clk2) begin
    latch_s2_x3 <= latch_s1_x1 + latch_s1_x2;
    latch_s2_d  <= latch_s1_d;
  end

  // stage 3
  always @(posedge clk1) begin
    f <= latch_s2_x3 * latch_s2_d;
  end

endmodule
