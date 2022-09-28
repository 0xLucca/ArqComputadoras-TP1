`timescale 1ns / 1ps

module alu
    #(
        parameter NB_DATA = 8,
        parameter NB_OPS = 6
    )
    (
        input signed [NB_DATA-1 : 0] i_data_a,
        input signed [NB_DATA-1 : 0] i_data_b,
        input [NB_OPS-1 : 0] i_ops,
        input [2 : 0] i_valid,
        output signed [NB_DATA : 0] o_res
    );

    reg signed [NB_DATA-1 : 0] data_a;
    reg signed [NB_DATA-1 : 0] data_b;
    reg [NB_DATA-1 : 0] data_a_un;
    reg [NB_DATA-1 : 0] data_b_un;
    reg [NB_OPS-1 : 0] ops;
    reg signed [NB_DATA-1 : 0] res;
    reg carry;

    //Depende del boton, si es pullup o pulldown
    always @(posedge i_valid[0]) 
    begin       
        data_a <= i_data_a;
    end

    always @(posedge i_valid[1]) 
    begin        
        data_b <= i_data_b;
    end

    always @(posedge i_valid[2]) 
    begin
        ops <= i_ops;
    end

    always @(*)
    begin
        case(ops)
            6'b100000:
                {carry,res} = data_a_un + data_b_un;
            6'b100010:
                {carry,res} = {1'b0 , data_a - data_b};
            6'b100100:
                {carry,res} = {1'b0 , data_a & data_b};
            6'b100101:
                {carry,res} = {1'b0 , data_a | data_b};
            6'b100110:
                {carry,res} = {1'b0 , data_a ^ data_b};
            6'b000011:
                {carry,res} = {1'b0 , data_a >>> 1};
            6'b000010:
                {carry,res} = {1'b0 , data_a >> 1};
            6'b100111:        
                {carry,res} = {1'b0 , ~(data_a | data_b)};
            default:
                {carry,res} = {1'b0 , data_a - data_b};
        endcase
    end
    
    always @(*)
    begin
        data_a_un = data_a;
        data_b_un = data_b;        
    end
    

    assign o_res = {carry,res};
endmodule