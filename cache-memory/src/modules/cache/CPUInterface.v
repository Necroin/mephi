`timescale 1ns / 1ps

module CPUInterface(
    // INPUT
    CPU_RESET,
    CACHE_RESET,
    CPU_ADDR,
    CPU_WR,
    CPU_RD,
    CPU_OUT_DATA,
    CPU_BVAL,
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
    `include "Constants.vh"

    input CPU_RESET, CACHE_RESET;
    
    // Inputs-outputs of CPU
    input [c_ADDR_SIZE-1:0] CPU_ADDR;
    input CPU_WR;
    input CPU_RD;
    input [c_CPU_DATA_SIZE-1:0] CPU_OUT_DATA;
    input [c_B_VAL_SIZE-1:0] CPU_BVAL;
    input CPU_CLK;
    
    output reg [c_CPU_DATA_SIZE-1:0] CPU_IN_DATA;
    output reg CPU_ACK;
    
    // Inputs-outputs of cache
    input [c_CPU_DATA_SIZE-1:0] CACHE_OUT_DATA;
    input CACHE_ACK;
    input CACHE_CLK;
    
    output reg [c_ADDR_SIZE-1:0] CACHE_ADDR;
    output reg CACHE_WR;
    output reg CACHE_RD;
    output reg [c_CPU_DATA_SIZE-1:0] CACHE_IN_DATA;
    output reg [c_B_VAL_SIZE-1:0] CACHE_BVAL;
    
    // INTERNAL
    reg [c_CPU_DATA_SIZE + c_ADDR_SIZE + c_B_VAL_SIZE + 2 - 1:0] cpu_cache_buffer;
    reg [c_CPU_DATA_SIZE + 1 - 1:0] cache_cpu_buffer;
    
    // DIRECTION
    reg cpu_cache_direction = 0;
    reg cache_cpu_direction = 0;
    
    always @(posedge CPU_CLK) begin
        if (CPU_RD === 1 || CPU_WR === 1) begin
            cpu_cache_buffer <= {CPU_ADDR, CPU_WR, CPU_RD, CPU_OUT_DATA, CPU_BVAL};
            cpu_cache_direction = 1;
        end
    end

    always @(posedge CACHE_CLK) begin
        if (cpu_cache_direction === 1) begin
            CACHE_ADDR <= cpu_cache_buffer[c_B_VAL_SIZE+c_CPU_DATA_SIZE+c_ADDR_SIZE-1:c_B_VAL_SIZE+c_CPU_DATA_SIZE+2];
            CACHE_WR <= cpu_cache_buffer[c_B_VAL_SIZE+c_CPU_DATA_SIZE+1];
            CACHE_RD <= cpu_cache_buffer[c_B_VAL_SIZE+c_CPU_DATA_SIZE];
            CACHE_IN_DATA <= cpu_cache_buffer[c_B_VAL_SIZE+c_CPU_DATA_SIZE-1:c_B_VAL_SIZE];
            CACHE_BVAL <= cpu_cache_buffer[c_B_VAL_SIZE-1:0];
            cpu_cache_direction = 0;
        end else if(CACHE_ACK === 1) begin
            CACHE_RD <= 0;
            CACHE_WR <= 0;
        end else if (CACHE_RESET) begin
            CACHE_ADDR <= 0;
            CACHE_WR <= 0;
            CACHE_RD <= 0;
            CACHE_IN_DATA <= 0;
            CACHE_BVAL <= 0;
            cpu_cache_direction = 0;
        end
    end

    always @(posedge CACHE_CLK) begin
        if (CACHE_ACK === 1) begin
            cache_cpu_buffer <= {CACHE_OUT_DATA, CACHE_ACK}; 
            cache_cpu_direction = 1;
        end
    end

    always @(posedge CPU_CLK) begin
        if (cache_cpu_direction === 1) begin
            CPU_IN_DATA <= cache_cpu_buffer[c_CPU_DATA_SIZE:1];
            CPU_ACK   <= cache_cpu_buffer[0];
            cache_cpu_direction = 0;
        end else if (CPU_RESET) begin
            CPU_IN_DATA <= 0;
            CPU_ACK <= 0;
        end else
            CPU_ACK <= 0;
    end

endmodule