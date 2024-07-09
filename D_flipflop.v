module D_flipflop(D_i, Clk_i, rst_i, w_i, Q_o);

input D_i, Clk_i, rst_i, w_i;
output reg Q_o;

/* se for latch: D_i or Clk_i or rst_i or w_i */
always @(posedge Clk_i or posedge rst_i) begin
    if(rst_i) Q_o  = 1'b0;
    else if (Clk_i & w_i) Q_o = D_i;
end

endmodule