`timescale 1ns / 1ps

module Mux2(IN_DATA1, IN_DATA2, IN_ADDR, OUT_DATA);
    input wire[2:0] IN_DATA1;
    input wire[2:0] IN_DATA2;
    input wire IN_ADDR;
    output wire[2:0] OUT_DATA;

    assign OUT_DATA = IN_ADDR ? IN_DATA2 : IN_DATA1;
endmodule
