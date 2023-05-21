`timescale 1ns / 1ps

module CacheMemory(
    //INPUT
    RESET,
    CLK,
    CPU_ADDR,
    SIG_CPU_RD,
    SIG_CPU_WR,
    CPU_OUT_DATA,
    CPU_B_VAL,
    MI_OUT_DATA,
    MI_SIG_RAM_ACK,
    // OUTPUT
    ACK,
    SIG_RAM_RD,
    SIG_RAM_WR,
    MI_IN_DATA,
    CPU_IN_DATA
);
    `include "Constants.vh"

    // INPUT
    input wire RESET;
    input wire CLK = 0;

    // INPUT from CPU
    input wire[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_ADDR_OFFSET_SIZE-1:0] CPU_ADDR;
    input wire SIG_CPU_RD;
    input wire SIG_CPU_WR;
    input wire[c_CPU_DATA_SIZE-1:0] CPU_OUT_DATA;
    input wire[c_B_VAL_SIZE-1:0] CPU_B_VAL;
    

    // INTERNAL fron CPU
    wire[c_ADDR_OFFSET_SIZE-1:0] ADDR_OFFSET;
    wire[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    wire[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    assign ADDR_OFFSET = CPU_ADDR[c_ADDR_OFFSET_SIZE-1:0];
    assign ADDR_INDEX  = CPU_ADDR[c_ADDR_OFFSET_SIZE+c_ADDR_INDEX_SIZE-1:c_ADDR_OFFSET_SIZE];
    assign ADDR_TAG    = CPU_ADDR[c_ADDR_OFFSET_SIZE+c_ADDR_INDEX_SIZE+c_ADDR_TAG_SIZE-1:c_ADDR_OFFSET_SIZE+c_ADDR_INDEX_SIZE];

    // INPUT from Memory Interface
    input wire[c_RAM_DATA_SIZE-1:0] MI_OUT_DATA;
    input wire MI_SIG_RAM_ACK;

    // OUTPUT
    output wire ACK;
    output wire SIG_RAM_RD;
    output wire SIG_RAM_WR; 
    output wire[c_RAM_DATA_SIZE-1:0] MI_IN_DATA;
    output wire[c_CPU_DATA_SIZE-1:0] CPU_IN_DATA;


    // INTERNAL
    reg[c_RAM_DATA_SIZE-1:0] data_mem[c_CHANNEL_SIZE-1:0][2**c_ADDR_INDEX_SIZE-1:0];
    wire SIG_LRU;
    wire SIG_LOAD;
    wire HIT;
    wire[c_CHANNEL_SIZE-1:0] CHANNEL;
    wire[c_RAM_DATA_SIZE-1:0] CACHE_IN_DATA;
    wire[c_RAM_DATA_SIZE-1:0] CACHE_OUT_DATA;
    assign CACHE_OUT_DATA = data_mem[ADDR_INDEX][CHANNEL];
    wire SIG_RAM_LOAD;
    wire SIG_DATA_LOAD;
    wire WR_FLAG;

    assign MI_IN_DATA = CACHE_IN_DATA;

    CacheTagMemory tag_memory(
        RESET,
        CLK,
        ADDR_INDEX,
        ADDR_TAG,
        SIG_LRU,
        SIG_LOAD,
        CHANNEL,
        HIT
    );

    CacheControlUnit control_unit(
        RESET,
        CLK,
        SIG_CPU_RD,
        SIG_CPU_WR,
        HIT,
        MI_SIG_RAM_ACK,
        ACK,
        SIG_LRU,
        SIG_LOAD,
        SIG_RAM_LOAD,
        SIG_DATA_LOAD,
        SIG_RAM_RD,
        SIG_RAM_WR,
        WR_FLAG
    );

    InputDataSelectScheme in_data_select(
        SIG_RAM_LOAD,
        CPU_B_VAL,
        ADDR_OFFSET,
        CPU_OUT_DATA,
        MI_OUT_DATA,
        CACHE_OUT_DATA,
        WR_FLAG,
        CACHE_IN_DATA
    );

    OutputDataSelectScheme out_data_select(
        CACHE_OUT_DATA,
        ADDR_OFFSET,
        CPU_IN_DATA
    );
    
    always @(posedge CLK) begin
        if (SIG_DATA_LOAD === 1) data_mem[ADDR_INDEX][CHANNEL] = CACHE_IN_DATA;
    end
endmodule