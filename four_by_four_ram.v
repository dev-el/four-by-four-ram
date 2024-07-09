module four_by_four_ram(Clk, sel_i, rst_i, rw_i, data_i, data_o);

input wire Clk;
input wire rst_i, rw_i;
input wire [1:0] sel_i;
input wire [3:0] data_i;
output wire [3:0] data_o;

wire col_1_o;
wire col_2_o;
wire col_3_o;
wire col_4_o;

wire sel_i_l1;
wire sel_i_l2;
wire sel_i_l3;
wire sel_i_l4;

wire data_o_u1;
wire data_o_u2;
wire data_o_u3;
wire data_o_u4;
wire data_o_u5;
wire data_o_u6;
wire data_o_u7;
wire data_o_u8;
wire data_o_u9;
wire data_o_u10;
wire data_o_u11;
wire data_o_u12;
wire data_o_u13;
wire data_o_u14;
wire data_o_u15;
wire data_o_u16;


two_to_four_decoder U0(
    .a_i(sel_i[1]), .b_i(sel_i[0]), .en_i(1'b1), .a_o(sel_i_l1), .b_o(sel_i_l2), .c_o(sel_i_l3), .d_o(sel_i_l4)
);

mem_cell U1(
    .Clk(Clk),
    .data_i(data_i[0]),
    .sel_i(sel_i_l1),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u1)
);

mem_cell U2(
    .Clk(Clk),
    .data_i(data_i[1]),
    .sel_i(sel_i_l1),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u2)
);

mem_cell U3(
    .Clk(Clk),
    .data_i(data_i[2]),
    .sel_i(sel_i_l1),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u3)
);

mem_cell U4(
    .Clk(Clk),
    .data_i(data_i[3]),
    .sel_i(sel_i_l1),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u4)
);

mem_cell U5(
    .Clk(Clk),
    .data_i(data_i[0]),
    .sel_i(sel_i_l2),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u5)
);

mem_cell U6(
    .Clk(Clk),
    .data_i(data_i[1]),
    .sel_i(sel_i_l2),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u6)
);

mem_cell U7(
    .Clk(Clk),
    .data_i(data_i[2]),
    .sel_i(sel_i_l2),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u7)
);

mem_cell U8(
    .Clk(Clk),
    .data_i(data_i[3]),
    .sel_i(sel_i_l2),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u8)
);

mem_cell U9(
    .Clk(Clk),
    .data_i(data_i[0]),
    .sel_i(sel_i_l3),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u9)
);

mem_cell U10(
    .Clk(Clk),
    .data_i(data_i[1]),
    .sel_i(sel_i_l3),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u10)
);

mem_cell U11(
    .Clk(Clk),
    .data_i(data_i[2]),
    .sel_i(sel_i_l3),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u11)
);

mem_cell U12(
    .Clk(Clk),
    .data_i(data_i[3]),
    .sel_i(sel_i_l3),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u12)
);

mem_cell U13(
    .Clk(Clk),
    .data_i(data_i[0]),
    .sel_i(sel_i_l4),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u13)
);

mem_cell U14(
    .Clk(Clk),
    .data_i(data_i[1]),
    .sel_i(sel_i_l4),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u14)
);

mem_cell U15(
    .Clk(Clk),
    .data_i(data_i[2]),
    .sel_i(sel_i_l4),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u15)
);

mem_cell U16(
    .Clk(Clk),
    .data_i(data_i[3]),
    .sel_i(sel_i_l4),
    .rst_i(rst_i),
    .rw_i(rw_i),
    .data_o(data_o_u16)
);

assign col_1_o = data_o_u1 | data_o_u5 | data_o_u9 | data_o_u13;
assign col_2_o = data_o_u2 | data_o_u6 | data_o_u10 | data_o_u14;
assign col_3_o = data_o_u3 | data_o_u7 | data_o_u11 | data_o_u15;
assign col_4_o = data_o_u4 | data_o_u8 | data_o_u12 | data_o_u16;
assign data_o = {col_4_o, col_3_o, col_2_o, col_1_o};
//4 outputs (or of col), line select

endmodule
