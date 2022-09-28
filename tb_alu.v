//~ `New testbench
`timescale  1ns / 1ps

module tb_alu;

// alu Parameters
parameter NB_DATA  = 8;
parameter NB_OPS   = 6;

// alu Inputs
reg   [NB_DATA-1 : 0]  i_data_a;
reg   [NB_DATA-1 : 0]  i_data_b;
reg   [NB_OPS-1 : 0]  i_ops;
reg   [2 : 0]  i_valid;

// alu Outputs
wire  [NB_DATA : 0]  o_res                 ;

initial begin
#0
  i_valid = 3'b000;
  i_data_a = 8'b00000000;
  i_data_b = 8'b00000000;
  i_ops = 6'b100000;
#10
//Suma con carry 0xFF + 0x01 = 0x100 
  i_data_a = 8'b11111111;
  i_data_b = 8'b00000001;
  i_ops = 6'b100000;
  i_valid = 3'b111;
#9
  i_valid = 3'b100;
#1
//Suma sin carry 0x0F + 0x01 = 0x010
  i_data_a = 8'b00001111;
  i_data_b = 8'b00000001;
  i_valid = 3'b111;
#9
  i_valid = 3'b011;
#1
  //Resta A > B 0x0F - 0x01 = 0x0E
  i_data_a = 8'b00001111;
  i_data_b = 8'b00000001;
  i_ops = 6'b100010;
  i_valid = 3'b111;
#9
  i_valid = 3'b100;
#1
  //Resta A < B 0x04 - 0x05 = 0xFF (ca2) = -1
  i_data_a = 8'b00000100;
  i_data_b = 8'b00000101;
  i_valid = 3'b111;
#9
  i_valid = 3'b000;
#1
  // Operacion AND  0xD3 & 0x5A = 0x52
  i_data_a = 8'b11010011;
  i_data_b = 8'b01011010;
  i_ops = 6'b100100;
  i_valid = 3'b111;
#9
  i_valid = 3'b011;
#1
  // Operacion OR  0xD3 | 0x5A = 0xDB
  i_data_a = 8'b11010011;
  i_data_b = 8'b01011010;
  i_ops = 6'b100101;
  i_valid = 3'b111;
#9
  i_valid = 3'b000;
#1
  // Operacion XOR  0x6B ^ 0xDD = 0xB6
  i_data_a = 8'b01101011;
  i_data_b = 8'b11011101;
  i_ops = 6'b100110;
  i_valid = 3'b111;
#9
  i_valid = 3'b000;
#1
  //Operacion SRA 8'b11111101 >>> 8'b11111110
  i_data_a = 8'b11111101;      
  i_ops = 6'b000011;
  i_valid = 3'b101;
#9
  i_valid = 3'b001;
#1
  //Operacion SRL 8'b11111101 >> 8'b01111110
  i_data_a = 8'b11111101;      
  i_ops = 6'b000010;
  i_valid = 3'b101;
#9
  i_valid = 3'b000;
#1
  // Operacion NOR  0xB ~| 0xC = 0xf0
  i_data_a = 8'b00001011;
  i_data_b = 8'b00001100;
  i_ops = 6'b100111;
  i_valid = 3'b111;
#9
$finish ;
end


alu #(
  .NB_DATA ( NB_DATA ),
  .NB_OPS  ( NB_OPS  ))
u_alu (
  .i_data_a                ( i_data_a  [NB_DATA-1 : 0] ),
  .i_data_b                ( i_data_b  [NB_DATA-1 : 0] ),
  .i_ops                   ( i_ops     [NB_OPS-1 : 0]  ),
  .i_valid                 ( i_valid   [2 : 0]         ),

  .o_res                   ( o_res     [NB_DATA : 0]   )
);

endmodule
