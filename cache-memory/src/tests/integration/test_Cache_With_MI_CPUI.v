`timescale 1ns / 1ps

module TestCacheWithMemoryInterfaceCPUInterface();
    `include "../../modules/cache/Constants.vh"

    // INPUT
    reg CACHE_RESET = 0;
    reg RAM_RESET = 0;
    reg CPU_RESET = 0;

    reg CACHE_CLK = 0;
    reg RAM_CLK = 0;
    reg CPU_CLK = 0;

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
    wire[c_RAM_BUS_SIZE-1:0] OUT_RAM_DATA;
    wire[c_ADDR_SIZE-1:0] OUT_RAM_ADDR;
    wire RAM_READ_NOT_WRITE;
    wire[c_CPU_DATA_SIZE-1:0] CPU_IN_DATA;
    wire CPU_ACK;

    // INTERNAL
    wire SIG_RAM_RD;
    wire SIG_RAM_WR;
    wire[c_RAM_DATA_SIZE-1:0] MI_IN_DATA;
    wire[c_RAM_DATA_SIZE-1:0] MI_OUT_DATA;
    wire MI_SIG_RAM_ACK;
    wire CACHE_ACK;
    wire[c_CPU_DATA_SIZE-1:0] CACHE_OUT_DATA;

    wire [c_ADDR_SIZE-1:0] CACHE_ADDR;
    wire CACHE_WR;
    wire CACHE_RD;
    wire[c_CPU_DATA_SIZE-1:0] CACHE_IN_DATA;
    wire[c_B_VAL_SIZE-1:0] CACHE_BVAL;

    CacheMemory cache(
        //INPUT
        CACHE_RESET,
        CACHE_CLK,
        CACHE_ADDR,
        CACHE_RD,
        CACHE_WR,
        CACHE_IN_DATA,
        CACHE_BVAL,
        MI_OUT_DATA,
        MI_SIG_RAM_ACK,
        // OUTPUT
        CACHE_ACK,
        SIG_RAM_RD,
        SIG_RAM_WR,
        MI_IN_DATA,
        CACHE_OUT_DATA
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

    CPUInterface cpu_interface(
        // INPUT
        CPU_RESET,
        CACHE_RESET,
        CPU_ADDR,
        SIG_CPU_WR,
        SIG_CPU_RD,
        CPU_OUT_DATA,
        CPU_B_VAL,
        CPU_CLK,
        // OUTPUT
        CPU_IN_DATA,
        CPU_ACK,
        // INPUT
        CACHE_OUT_DATA,
        CACHE_ACK,
        CACHE_CLK,
        // OUTPUT
        CACHE_ADDR,
        CACHE_WR,
        CACHE_RD,
        CACHE_IN_DATA,
        CACHE_BVAL
    );

    integer i;

    always #15 CPU_CLK <= ~CPU_CLK;
    always #10 CACHE_CLK <= ~CACHE_CLK;
    always #5 RAM_CLK <= ~RAM_CLK;
    
    initial begin
        CACHE_RESET <= 1;
        RAM_RESET <= 1;
        CPU_RESET <= 1;

        SIG_CPU_WR <= 0;
        SIG_CPU_RD <= 0;
        CPU_OUT_DATA <= 'h11111111;
        CPU_B_VAL <= 0;
        ADDR_OFFSET <= 0;
        ADDR_INDEX <= 1;
        ADDR_TAG <= 2;
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);

        CACHE_RESET <= 0;
        RAM_RESET <= 0;
        CPU_RESET <= 0;

        @(negedge CPU_CLK);
        @(posedge CPU_CLK);
        @(negedge CPU_CLK);
        @(negedge CPU_CLK);
        @(negedge CPU_CLK);
        @(negedge CPU_CLK);

        
        // READ MISS PREPARE
        IN_RAM_DATA <= 'h1;
        RAM_ACK <= 1;
        // READ MISS
        SIG_CPU_RD <= 1;
        @(posedge CPU_CLK);
        SIG_CPU_RD <= 0;
        @(negedge CPU_ACK);
        
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        
        // READ HIT
        SIG_CPU_RD <= 1;
        @(posedge CPU_CLK);
        SIG_CPU_RD <= 0;
        @(negedge CPU_ACK);
        
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        
        // WRITE HIT
        ADDR_OFFSET <= 4'b1100;
        CPU_B_VAL <= 4'b1111;
        SIG_CPU_WR <= 1;
        @(posedge CPU_CLK);
        SIG_CPU_WR <= 0;
        @(negedge CPU_ACK);
        
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);
        @(posedge CPU_CLK);

        // WRITE MISS
        SIG_CPU_WR <= 1;
        CPU_B_VAL <= 4'b0011;
        ADDR_TAG <= 6'b111111;
        @(posedge CPU_CLK);
        SIG_CPU_WR <= 0;
    end
endmodule