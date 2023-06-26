`timescale 1ns / 1ps

module TestCacheWithMemoryInterface();
    `include "../../modules/cache/Constants.vh"

    // INPUT
    reg CACHE_RESET = 0;
    reg RAM_RESET = 0;

    reg CACHE_CLK = 0;
    reg RAM_CLK = 0;

    reg[c_ADDR_OFFSET_SIZE-1:0] ADDR_OFFSET;
    reg[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    reg[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    wire[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_ADDR_OFFSET_SIZE-1:0] CPU_ADDR;
    assign CPU_ADDR = {ADDR_TAG, ADDR_INDEX, ADDR_OFFSET};
    reg SIG_CPU_RD;
    reg SIG_CPU_WR;
    reg[c_CPU_DATA_SIZE-1:0] CPU_OUT_DATA;
    reg[c_B_VAL_SIZE-1:0] CPU_B_VAL;
    reg[c_RAM_BUS_SIZE-1:0] IN_RAM_DATA;
    reg RAM_ACK;
    // OUTPUT
    wire ACK;
    wire[c_RAM_BUS_SIZE-1:0] OUT_RAM_DATA;
    wire[c_ADDR_SIZE-1:0] OUT_RAM_ADDR;
    wire RAM_READ_NOT_WRITE;

    // INTERNAL
    wire SIG_RAM_RD;
    wire SIG_RAM_WR;
    wire[c_RAM_DATA_SIZE-1:0] MI_IN_DATA;
    wire[c_RAM_DATA_SIZE-1:0] MI_OUT_DATA;
    wire MI_SIG_RAM_ACK;
    wire[c_CPU_DATA_SIZE-1:0] CPU_IN_DATA;

    CacheMemory cache(
        //INPUT
        CACHE_RESET,
        CACHE_CLK,
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

    MemoryInterface memory_interface(
        // INPUT
        CACHE_RESET,
        RAM_RESET,
        CACHE_CLK,
        RAM_CLK,
        SIG_RAM_RD,
        SIG_RAM_WR,
        CPU_ADDR,
        MI_IN_DATA,
        IN_RAM_DATA,
        RAM_ACK,

        // OUTPUT
        MI_OUT_DATA,
        MI_SIG_RAM_ACK,
        OUT_RAM_DATA,
        OUT_RAM_ADDR,
        RAM_READ_NOT_WRITE
    );

    integer i;

    always #10 CACHE_CLK <= ~CACHE_CLK;
    always #5 RAM_CLK <= ~RAM_CLK;
    
    initial begin
        CACHE_RESET <= 1;
        RAM_RESET <= 1;

        SIG_CPU_WR <= 0;
        SIG_CPU_RD <= 0;
        CPU_OUT_DATA <= 'h11111111;
        CPU_B_VAL <= 0;
        ADDR_OFFSET <= 0;
        ADDR_INDEX <= 1;
        ADDR_TAG <= 2;
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);

        CACHE_RESET <= 0;
        RAM_RESET <= 0;
        
        @(negedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(negedge CACHE_CLK);
        @(negedge CACHE_CLK);
        @(negedge CACHE_CLK);
        @(negedge CACHE_CLK);

        
        // READ MISS PREPARE
        IN_RAM_DATA <= 'h1;
        RAM_ACK <= 1;
        // READ MISS
        SIG_CPU_RD <= 1;
        @(posedge CACHE_CLK);
        SIG_CPU_RD <= 0;
        @(negedge ACK);
        
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        
        // READ HIT
        SIG_CPU_RD <= 1;
        @(posedge CACHE_CLK);
        SIG_CPU_RD <= 0;
        @(negedge ACK);
        
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        
        // WRITE HIT
        ADDR_OFFSET <= 4'b1100;
        CPU_B_VAL <= 4'b1111;
        SIG_CPU_WR <= 1;
        @(posedge CACHE_CLK);
        SIG_CPU_WR <= 0;
        @(negedge ACK);
        
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);
        @(posedge CACHE_CLK);

        // WRITE MISS
        SIG_CPU_WR <= 1;
        CPU_B_VAL <= 4'b0011;
        ADDR_TAG <= 6'b111111;
        @(posedge CACHE_CLK);
        SIG_CPU_WR <= 0;
    end
endmodule