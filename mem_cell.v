module mem_cell (Clk, data_i, sel_i, rst_i, rw_i, data_o);

input wire Clk;
input wire data_i, sel_i, rst_i, rw_i;
output wire data_o;

wire logic_w;

D_flipflop U1 (
    .Clk_i(Clk),
    .D_i(data_i),
    .w_i(~rw_i & sel_i),
    .rst_i(rst_i),
    .Q_o(logic_w)
);


assign data_o = logic_w & sel_i; 

endmodule