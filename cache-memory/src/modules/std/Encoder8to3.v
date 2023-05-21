`timescale 1ns / 1ps

module Encoder8to3(IN_DATA, OUT_DATA);
    input wire[0:7] IN_DATA;
    output wire[2:0] OUT_DATA;

    assign OUT_DATA = IN_DATA[0] == 1 ? 3'b000 :
                      IN_DATA[1] == 1 ? 3'b001 :
                      IN_DATA[2] == 1 ? 3'b010 :
                      IN_DATA[3] == 1 ? 3'b011 :
                      IN_DATA[4] == 1 ? 3'b100 :
                      IN_DATA[5] == 1 ? 3'b101 :
                      IN_DATA[6] == 1 ? 3'b110 :
                      IN_DATA[7] == 1 ? 3'b111 : 3'bx;
endmodule
