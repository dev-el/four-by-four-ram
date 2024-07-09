`timescale 1ns/1ps

module ram_tb;

reg clk_tb;
reg rst_tb;
reg rw_tb;
reg [1:0] sel_tb;
reg [3:0] data_tb;

always begin
    #5 clk_tb = !clk_tb;
end

wire [3:0] w_o;

initial
begin
  clk_tb = 1'b0;
  rst_tb = 1'b1;
  rw_tb = 1'b0; //1 is read, 0 is write
  sel_tb = 2'b00;
  data_tb = 4'b0000;
  @(negedge clk_tb);
  rst_tb = 1'b0;
  @(negedge clk_tb);
  rw_tb = 1'b0; //1 is read, 0 is write
  sel_tb = 2'b00;
  data_tb = 4'b0110;
  @(negedge clk_tb);
  rw_tb = 1'b0;
  sel_tb = 2'b01;
  data_tb = 4'b1011;
  @(negedge clk_tb);
  rw_tb = 1'b1;
  sel_tb = 2'b00;
  data_tb = 4'b0000;
  @(negedge clk_tb);
  rw_tb = 1'b1;
  sel_tb = 2'b01;
  data_tb = 4'b0000;
end

four_by_four_ram U1(
  .Clk(clk_tb), .sel_i(sel_tb), .rst_i(rst_tb), .rw_i(rw_tb), .data_i(data_tb), .data_o(w_o)
);


endmodule
