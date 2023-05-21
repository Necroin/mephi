`timescale 1ns / 1ps

module TestCacheWithControlUnit();
    localparam c_ADDR_INDEX_SIZE = 6;
    localparam c_ADDR_TAG_SIZE = 6;
    localparam c_COUNTER_SIZE = 3;
    localparam c_CHANNEL_SIZE = 3;

    // INPUT
    reg RESET;
    reg CLK = 0;
    reg[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    reg[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    reg SIG_RAM_ACK;
    reg SIG_CPU_RD;
    reg SIG_CPU_WR;



    // OUTPUT
    wire[c_CHANNEL_SIZE-1:0] CHANNEL;
    wire ACK;
    wire SIG_RAM_LOAD;
    wire SIG_DATA_LOAD;
    wire SIG_RAM_RD;
    wire SIG_RAM_WR;
    wire WR_FLAG;

    // INTERNAL
    wire SIG_LRU;
    wire SIG_LOAD;
    wire HIT;


    CacheTagMemory memory(
        RESET,
        CLK,
        ADDR_INDEX,
        ADDR_TAG,
        SIG_LRU,
        SIG_LOAD,
        CHANNEL,
        HIT
    );

    CacheControlUnit cu(
        RESET,
        CLK,
        SIG_CPU_RD,
        SIG_CPU_WR,
        HIT,
        SIG_RAM_ACK,
        ACK,
        SIG_LRU,
        SIG_LOAD,
        SIG_RAM_LOAD,
        SIG_DATA_LOAD,
        SIG_RAM_RD,
        SIG_RAM_WR,
        WR_FLAG
    );

    always #10 CLK <= ~CLK;
    
    initial begin
        RESET <= 1;
        SIG_CPU_WR <= 0;
        SIG_CPU_RD <= 0;
        SIG_RAM_ACK <= 0;
        @(posedge CLK);
        @(posedge CLK);

        RESET <= 0;
        ADDR_INDEX <= 6'b000000;
        ADDR_TAG <= 1;

        
        // READ MISS
        SIG_CPU_RD <= 1;
        @(posedge CLK);
        SIG_CPU_RD <= 0;
        @(posedge CLK);
        @(posedge CLK);
        SIG_RAM_ACK <= 1;
        @(posedge CLK);
        SIG_RAM_ACK <= 0;
        @(posedge CLK);
        @(posedge CLK);

        // READ HIT
        SIG_CPU_RD <= 1;
        @(posedge CLK);
        SIG_CPU_RD <= 0;
        @(posedge CLK);
        
        // WRITE HIT
        SIG_CPU_WR <= 1;
        @(posedge CLK);
        SIG_CPU_WR <= 0;
        @(posedge CLK);
        @(posedge CLK);
        SIG_RAM_ACK <= 1;
        @(posedge CLK);
        SIG_RAM_ACK <= 0;
        @(posedge CLK);
        
        // WRITE MISS
        SIG_CPU_WR <= 1;
        ADDR_TAG <= 2;
        @(posedge CLK);
        SIG_CPU_WR <= 0;
        @(posedge CLK);
        @(posedge CLK);
        SIG_RAM_ACK <= 1;
        @(posedge CLK);
        SIG_RAM_ACK <= 0;
        @(posedge CLK);
        @(posedge CLK);
        SIG_RAM_ACK <= 1;
        @(posedge CLK);
        SIG_RAM_ACK <= 0;

    end
endmodule