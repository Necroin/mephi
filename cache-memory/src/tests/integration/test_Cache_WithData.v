`timescale 1ns / 1ps

module TestCacheWithData();
    `include "../../modules/cache/Constants.vh"

    // INPUT
    reg RESET;
    reg CLK = 0;
    reg[c_ADDR_OFFSET_SIZE-1:0] ADDR_OFFSET;
    reg[c_ADDR_INDEX_SIZE-1:0] ADDR_INDEX;
    reg[c_ADDR_TAG_SIZE-1:0] ADDR_TAG;
    wire[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_ADDR_OFFSET_SIZE-1:0] CPU_ADDR;
    assign CPU_ADDR = {ADDR_TAG, ADDR_INDEX, ADDR_OFFSET};
    reg SIG_CPU_RD;
    reg SIG_CPU_WR;
    reg[c_CPU_DATA_SIZE-1:0] CPU_OUT_DATA;
    reg[c_B_VAL_SIZE-1:0] CPU_B_VAL;
    reg[c_RAM_DATA_SIZE-1:0] MI_OUT_DATA;
    reg MI_SIG_RAM_ACK;

    // OUTPUT
    wire ACK;
    wire SIG_RAM_RD;
    wire SIG_RAM_WR;
    wire[c_RAM_DATA_SIZE-1:0] MI_IN_DATA;
    wire[c_CPU_DATA_SIZE-1:0] CPU_IN_DATA;

    CacheMemory cache(
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

    integer i;

    always #10 CLK <= ~CLK;
    
    initial begin
        RESET <= 1;
        SIG_CPU_WR <= 0;
        SIG_CPU_RD <= 0;
        MI_SIG_RAM_ACK <= 0;
        CPU_OUT_DATA <= 'h11111111;
        CPU_B_VAL <= 0;
        MI_OUT_DATA <= 'h88888888;
        ADDR_OFFSET <= 0;
        ADDR_INDEX <= 1;
        ADDR_TAG <= 2;
        @(posedge CLK);
        @(posedge CLK);

        RESET <= 0;

        
        // READ MISS
        SIG_CPU_RD <= 1;
        @(posedge CLK);
        SIG_CPU_RD <= 0;
        @(posedge CLK);
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 1;
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 0;
        @(posedge CLK);
        @(posedge CLK);

        // READ HIT
        SIG_CPU_RD <= 1;
        @(posedge CLK);
        SIG_CPU_RD <= 0;
        @(posedge CLK);
        
        // WRITE HIT
        ADDR_OFFSET <= 4'b1100;
        CPU_B_VAL <= 4'b1111;
        SIG_CPU_WR <= 1;
        @(posedge CLK);
        SIG_CPU_WR <= 0;
        @(posedge CLK);
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 1;
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 0;
        @(posedge CLK);
        
        // WRITE MISS
        SIG_CPU_WR <= 1;
        CPU_B_VAL <= 4'b0011;
        ADDR_TAG <= 6'b111111;
        @(posedge CLK);
        SIG_CPU_WR <= 0;
        @(posedge CLK);
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 1;
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 0;
        @(posedge CLK);
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 1;
        @(posedge CLK);
        MI_SIG_RAM_ACK <= 0;
    end
endmodule