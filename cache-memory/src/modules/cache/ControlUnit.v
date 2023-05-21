`timescale 1ns / 1ps

module CacheControlUnit(
    IN_RESET,
    IN_CLK,
    IN_CPU_RD,
    IN_CPU_WR,
    IN_HIT,
    IN_RAM_ACK,
    OUT_ACK,
    OUT_LRU,
    OUT_TAG_LOAD,
    OUT_RAM_LOAD,
    OUT_DATA_LOAD,
    OUT_RAM_RD,
    OUT_RAM_WR,
    OUT_WR_FLAG
);
    // INPuT
    input wire IN_RESET;
    input wire IN_CLK;
    input wire IN_CPU_WR;
    input wire IN_CPU_RD;
    input wire IN_HIT;
    input wire IN_RAM_ACK;

    // OUTPUT
    output reg OUT_ACK;
    output reg OUT_LRU;
    output reg OUT_TAG_LOAD;
    output reg OUT_RAM_LOAD;
    output reg OUT_DATA_LOAD;
    output reg OUT_RAM_WR;
    output reg OUT_RAM_RD;
    output reg OUT_WR_FLAG;

    localparam state_IDLE = 0;
    localparam state_ACK = 1;
    localparam state_RD_HIT = state_ACK;
    localparam state_WR_HIT_1 = 2;
    localparam state_WR_HIT_2 = state_ACK;
    localparam state_RD_RAM_1 = 3;
    localparam state_RD_RAM_2 = 4;
    localparam state_RD_RAM_3 = state_ACK;
    localparam state_WR_RAM_1 = 5;
    localparam state_WR_RAM_2 = 6;
    localparam state_WR_RAM_3 = state_ACK;

    reg[3:0] state;

    always @(posedge IN_CLK) begin
        if (IN_RESET === 1) state <= state_IDLE;
        else begin
            if (state == state_IDLE) begin
                if      (IN_HIT === 1 & IN_CPU_RD === 1) state <= state_RD_HIT; 
                else if (IN_HIT === 1 & IN_CPU_WR === 1) state <= state_WR_HIT_1;
                else if (IN_HIT !== 1 & IN_CPU_RD === 1) state <= state_RD_RAM_1;
                else if (IN_HIT !== 1 & IN_CPU_WR === 1) state <= state_WR_RAM_1;
                else state <= state_IDLE;
            end
            else if (state == state_WR_HIT_1 & IN_RAM_ACK) state <= state_WR_HIT_2;
            else if (state == state_RD_RAM_1 & IN_RAM_ACK) state <= state_RD_RAM_2;
            else if (state == state_RD_RAM_2) state <= state_RD_RAM_3;
            else if (state == state_WR_RAM_1 & IN_RAM_ACK) state <= state_WR_RAM_2;
            else if (state == state_WR_RAM_2 & IN_RAM_ACK) state <= state_WR_RAM_3;
            else if (state == state_ACK) state <= state_IDLE;
            else ;
        end
    end

    always @(*) begin
        case (state)
            state_IDLE:     {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________0_____________0_____________0______________0___________0___________0;
            state_ACK:      {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b1__________1__________0_____________0_____________0______________0___________0___________0;
            state_WR_HIT_1: {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________0_____________0_____________1______________1___________0___________1;
            state_RD_RAM_1: {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________0_____________1_____________0______________0___________1___________0;
            state_RD_RAM_2: {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________1_____________1_____________1______________0___________0___________0;
            state_WR_RAM_1: {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________0_____________1_____________0______________0___________1___________1;
            state_WR_RAM_2: {OUT_ACK, OUT_LRU, OUT_TAG_LOAD, OUT_RAM_LOAD, OUT_DATA_LOAD, OUT_RAM_WR, OUT_RAM_RD, OUT_WR_FLAG} <=
                            'b0__________0__________1_____________1_____________1______________1___________0___________1;
        endcase
    end
endmodule