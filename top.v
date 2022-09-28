`timescale 1ns / 1ps

module top(
 input [7:0] i_sw,
 input [2:0] i_but,
 input i_clk,
 output [8:0] o_res 
);
      
    alu 
    #(
        8,
        6
    )
    alu1
    (
        .i_data_a(i_sw),
        .i_data_b(i_sw),
        .i_ops(i_sw[5:0]),
        .i_valid(i_but),
        .o_res(o_res)
    );
endmodule
