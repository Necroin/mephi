`timescale 1ns / 1ps

module Mux8(
    IN_DATA1,
    IN_DATA2,
    IN_DATA3,
    IN_DATA4,
    IN_DATA5,
    IN_DATA6,
    IN_DATA7,
    IN_DATA8,
    IN_ADDR,
    OUT_DATA
);
    parameter SIZE = 1;
    input wire[SIZE-1:0] IN_DATA1;
    input wire[SIZE-1:0] IN_DATA2;
    input wire[SIZE-1:0] IN_DATA3;
    input wire[SIZE-1:0] IN_DATA4;
    input wire[SIZE-1:0] IN_DATA5;
    input wire[SIZE-1:0] IN_DATA6;
    input wire[SIZE-1:0] IN_DATA7;
    input wire[SIZE-1:0] IN_DATA8;

    wire[SIZE-1:0] IN_DATA[0:7];
    assign IN_DATA[0] = IN_DATA1;
    assign IN_DATA[1] = IN_DATA2;
    assign IN_DATA[2] = IN_DATA3;
    assign IN_DATA[3] = IN_DATA4;
    assign IN_DATA[4] = IN_DATA5;
    assign IN_DATA[5] = IN_DATA6;
    assign IN_DATA[6] = IN_DATA7;
    assign IN_DATA[7] = IN_DATA8;

    input wire[SIZE-1:0] IN_ADDR;
    output wire[SIZE-1:0] OUT_DATA;

    assign OUT_DATA = IN_DATA[IN_ADDR];
endmodule
