`timescale 1ns / 1ps

module TestCacheTagMemory();
    localparam c_ADDR_INDEX_SIZE = 6;
    localparam c_ADDR_TAG_SIZE = 6;
    localparam c_COUNTER_SIZE = 3;
    localparam c_CHANNEL_SIZE = 3;
    
    // INPUT
    reg RESET;
    reg CLK = 0;
    reg[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    reg[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    reg SIG_LRU;
    reg SIG_LOAD;

    // OUTPUT
    wire[c_CHANNEL_SIZE-1:0] CHANNEL;
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
    
    integer i;

    always #10 CLK <= ~CLK;

    initial begin
        RESET <= 1;
        SIG_LRU <= 0;
        SIG_LOAD = 0;
        @(posedge CLK);
        @(posedge CLK);

        RESET = 0;
        ADDR_INDEX = 6'b000000;

        for (i = 0; i< 8; i =i+1) begin
            ADDR_TAG = i;
            SIG_LOAD = 1;
            
            @(posedge CLK);
            SIG_LOAD = 0;
            SIG_LRU = 1;
            
            @(posedge CLK);
            SIG_LRU = 0;
        end
        
        for (i = 4; i< 6; i =i+1) begin
            ADDR_TAG = i;
            
            @(posedge CLK);
            SIG_LRU = 1;
            
            @(posedge CLK);
            SIG_LRU = 0;
        end
        
        @(posedge CLK);
        @(posedge CLK);
        ADDR_TAG = 6'b111111;
        SIG_LOAD = 1;
        
        @(posedge CLK);
        SIG_LOAD = 0;
        SIG_LRU = 1;
            
        @(posedge CLK);
        SIG_LRU = 0;
    end
endmodule