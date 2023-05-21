`timescale 1ns / 1ps

module MemoryInterface();
    `include "Constants.vh"

    // INPUT
    input wire CLK;
    input wire SIG_RD;
    input wire SIG_WR;
    input wire[c_ARRD_SIZE-1:0] IN_ADDR;
    input wire[c_RAM_DATA_SIZE-1:0] IN_DATA;
    // RAM
    input wire[c_RAM_DATA_SIZE-1:0] IN_RAM_DATA;

    // OUTPUT
    output wire[c_RAM_DATA_SIZE-1:0] OUT_DATA;
    output wire ACK;
    // RAM
    output wire[c_RAM_DATA_SIZE-1:0] OUT_RAM_DATA;
    output wire[c_ARRD_SIZE-1:0] OUT_RAM_ADDR;


    // INTERNAL
    reg[c_RAM_DATA_SIZE-1:0] buffer;
    reg[c_RAM_BUS_SIZE-1:0] bus;
    assign OUT_RAM_ADDR = IN_ADDR;

    always @(posedge CLK) begin
        if (SIG_RD === 1) begin

        end

        if (SIG_WR === 1) begin

        end
    end

endmodule