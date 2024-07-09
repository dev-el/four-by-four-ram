module two_to_four_decoder(a_i, b_i, en_i, a_o, b_o, c_o, d_o);

input wire a_i, b_i, en_i;
output wire a_o, b_o, c_o, d_o;

wire logic_w1, logic_w2, logic_w3, logic_w4;

and U1(logic_w1, ~a_i, ~b_i);
and U2(logic_w2, ~a_i, b_i);
and U3(logic_w3, a_i, ~b_i);
and U4(logic_w4, a_i, b_i);

and U5(a_o, logic_w1, en_i);
and U6(b_o, logic_w2, en_i);
and U7(c_o, logic_w3, en_i);
and U8(d_o, logic_w4, en_i);

endmodule