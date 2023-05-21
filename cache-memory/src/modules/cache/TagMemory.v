`timescale 1ns / 1ps

module CacheTagMemoryChannel(
    RESET,
    CLK,
    SIG_LOAD,
    SIG_LRU,
    ADDR_INDEX,
    ADDR_TAG,
    COUNTER,
    DATA_COUNTER,
    HIT,
    REPLACE
);
    parameter DATA_COUNTER_INITIAL = 0;

    // CONSTANTS
    `include "Constants.vh"

    // INPUT
    input wire RESET;
    input wire CLK;
    input wire SIG_LOAD;
    input wire SIG_LRU;
    input wire[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    input wire[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    input wire[c_COUNTER_SIZE-1:0] COUNTER;

    // OUTPUT
    output wire[c_COUNTER_SIZE-1:0] DATA_COUNTER;
    output wire HIT;
    output wire REPLACE;

    // INTERNAL DATA
    reg[c_LINE_SIZE-1:0] data[2**c_ADDR_INDEX_SIZE-1:0];
    wire[c_ADDR_TAG_SIZE-1:0] DATA_TAG;
    reg[c_ADDR_INDEX_SIZE:0] i;

    // INTERNAL DEPENDENCIES
    assign DATA_VALID = data[ADDR_INDEX][c_COUNTER_SIZE+c_ADDR_TAG_SIZE+c_VALID_SIZE-1:c_COUNTER_SIZE+c_ADDR_TAG_SIZE];
    assign DATA_TAG = data[ADDR_INDEX][c_COUNTER_SIZE+c_ADDR_TAG_SIZE-1:c_COUNTER_SIZE];

    assign EQUAL_COMPARATOR = DATA_COUNTER === 3'b111;
    assign LESS_COMPARATOR = DATA_COUNTER < COUNTER;
    assign INTERNAL_SIG_LOAD = SIG_LOAD && EQUAL_COMPARATOR;
    assign INTERNAL_SIG_COUNTER_RESET = SIG_LRU && HIT;
    assign INTERNAL_SIG_COUNTER_INC = SIG_LRU && LESS_COMPARATOR;

    // OUTPUT DEPENDENCIES
    assign DATA_COUNTER = data[ADDR_INDEX][c_COUNTER_SIZE-1:0];
    assign REPLACE = EQUAL_COMPARATOR;
    assign HIT = DATA_VALID && (ADDR_TAG === DATA_TAG);

    // EVENTS
    always @(posedge CLK) begin
        if (INTERNAL_SIG_COUNTER_RESET === 1) data[ADDR_INDEX][c_COUNTER_SIZE-1:0] <= 0;
        if (INTERNAL_SIG_COUNTER_INC === 1) data[ADDR_INDEX][c_COUNTER_SIZE-1:0] = data[ADDR_INDEX][c_COUNTER_SIZE-1:0] + 1;
        if (INTERNAL_SIG_LOAD === 1 && REPLACE === 1) begin
            data[ADDR_INDEX][c_COUNTER_SIZE+c_ADDR_TAG_SIZE-1:c_COUNTER_SIZE] = ADDR_TAG;
            data[ADDR_INDEX][c_COUNTER_SIZE+c_ADDR_TAG_SIZE+c_VALID_SIZE-1:c_COUNTER_SIZE+c_ADDR_TAG_SIZE] = 1;
        end
        if (RESET === 1) begin
            for (i = 0; i < 2**c_ADDR_INDEX_SIZE; i = i + 1) begin
                data[i] <= 0;
                data[i][c_COUNTER_SIZE-1:0] <= DATA_COUNTER_INITIAL;
            end
        end
    end
endmodule

module CacheTagMemory(
    RESET,
    CLK,
    ADDR_INDEX,
    ADDR_TAG,
    SIG_LRU,
    SIG_LOAD,
    CHANNEL,
    HIT
);
    `include "Constants.vh"

    input wire RESET;
    input wire CLK;
    input wire[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    input wire[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    input wire SIG_LRU;
    input wire SIG_LOAD;

    output wire[c_CHANNEL_SIZE-1:0] CHANNEL;
    output wire HIT;

    // CHANNELS OUTPUT
    wire[c_COUNTER_SIZE-1:0] CHANNELS_DATA_COUNTER[0:2**c_CHANNEL_SIZE-1];
    wire [0:2**c_CHANNEL_SIZE-1] CHANNELS_HIT;
    wire [0:2**c_CHANNEL_SIZE-1] CHANNELS_REPLACE;

    // INTERNAL DEPENDECIES
    wire [c_COUNTER_SIZE-1:0] COUNTER;
    Mux8 #(.SIZE(c_CHANNEL_SIZE)) counter_mux(
        CHANNELS_DATA_COUNTER[0],
        CHANNELS_DATA_COUNTER[1],
        CHANNELS_DATA_COUNTER[2],
        CHANNELS_DATA_COUNTER[3],
        CHANNELS_DATA_COUNTER[4],
        CHANNELS_DATA_COUNTER[5],
        CHANNELS_DATA_COUNTER[6],
        CHANNELS_DATA_COUNTER[7],
        CHANNEL,
        COUNTER
    );

    wire [c_COUNTER_SIZE-1:0] HIT_CHANNEL;
    wire [c_COUNTER_SIZE-1:0] REPLACE_CHANNEL;

    Encoder8to3 hit_encoder(CHANNELS_HIT, HIT_CHANNEL);
    Encoder8to3 replace_encoder(CHANNELS_REPLACE, REPLACE_CHANNEL);
    Mux2 channel_mux(REPLACE_CHANNEL, HIT_CHANNEL, HIT, CHANNEL);

    genvar i;
    generate
        for (i = 0; i < 2**c_CHANNEL_SIZE; i = i + 1) begin
            CacheTagMemoryChannel #(.DATA_COUNTER_INITIAL(i)) channel(
                RESET,
                CLK,
                SIG_LOAD,
                SIG_LRU,
                ADDR_INDEX,
                ADDR_TAG,
                COUNTER,
                CHANNELS_DATA_COUNTER[i],
                CHANNELS_HIT[i],
                CHANNELS_REPLACE[i]
            );
        end
    endgenerate
    

    ORN #(.SIZE(2**c_CHANNEL_SIZE)) hit_result(CHANNELS_HIT, HIT);
endmodule
