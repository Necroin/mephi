`timescale 1ns / 1ps

module MemoryInterface(
    CACHE_RESET,
    RAM_RESET,
    CACHE_CLK,
    RAM_CLK,
    SIG_RD,
    SIG_WR,
    IN_ADDR,
    IN_DATA,
    IN_RAM_DATA,
    RAM_ACK,
    
    OUT_DATA,
    ACK,
    OUT_RAM_DATA,
    OUT_RAM_ADDR,
    RAM_READ_NOT_WRITE
);
    `include "Constants.vh"

    // INPUT
    input wire CACHE_RESET;
    input wire RAM_RESET;
    input wire CACHE_CLK;
    input wire RAM_CLK;
    input wire SIG_RD;
    input wire SIG_WR;
    input wire[c_ADDR_SIZE-1:0] IN_ADDR;
    input wire[c_RAM_DATA_SIZE-1:0] IN_DATA;
    // RAM
    input wire[c_RAM_BUS_SIZE-1:0] IN_RAM_DATA;
    input wire RAM_ACK;

    // OUTPUT
    output reg[c_RAM_DATA_SIZE-1:0] OUT_DATA;
    output reg ACK;
    // RAM
    output reg[c_RAM_BUS_SIZE-1:0] OUT_RAM_DATA;
    output reg[c_ADDR_SIZE-1:0] OUT_RAM_ADDR;
    output reg RAM_READ_NOT_WRITE;

    // INTERNAL
    reg[c_RAM_DATA_SIZE-1:0] buffer;
    reg[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE-1:0] addr_buffer;
    reg[c_RAM_BUS_SIZE-1:0] bus;
    reg[c_INTERFACE_COUNTER_SIZE-1:0] cache_iteration;
    reg[c_INTERFACE_COUNTER_SIZE-1:0] ram_iteration;

    wire[c_INTERFACE_COUNTER_SIZE-1:0] dec_cache_iteration = cache_iteration - 1;
    wire[c_INTERFACE_COUNTER_SIZE-1:0] dec_ram_iteration = ram_iteration - 1;

    wire[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE-1:0] IN_RAM_ADDR;
    assign IN_RAM_ADDR = IN_ADDR[c_ADDR_SIZE-1:c_ADDR_OFFSET_SIZE];

    // FIFO FROM CACHE TO RAM
    wire fifo_cache_ram_empty;
    wire fifo_cache_ram_full;
    reg[c_RAM_BUS_SIZE+c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE:0] fifo_cache_ram_input;
    wire[c_RAM_BUS_SIZE+c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE:0] fifo_cache_ram_output;
    reg fifo_cache_ram_sig_rd;
    reg fifo_cache_ram_sig_wr;

    fifo_generator_0 #() fifo_cache_ram(
        .wr_clk(CACHE_CLK),
        .wr_rst(CACHE_RESET),
        .rd_clk(RAM_CLK),
        .rd_rst(RAM_RESET),
        .din(fifo_cache_ram_input),
        .wr_en(fifo_cache_ram_sig_wr),
        .rd_en(fifo_cache_ram_sig_rd),
        .dout(fifo_cache_ram_output),
        .full(fifo_cache_ram_full),
        .empty(fifo_cache_ram_empty)
    );

    // FIFO FROM RAM TO CACHE
    wire fifo_ram_cache_empty;
    wire fifo_ram_cache_full;
    reg[c_RAM_BUS_SIZE+c_INTERFACE_COUNTER_SIZE-1:0] fifo_ram_cache_input;
    wire[c_RAM_BUS_SIZE+c_INTERFACE_COUNTER_SIZE-1:0] fifo_ram_cache_output;
    reg fifo_ram_cache_sig_rd;
    reg fifo_ram_cache_sig_wr;

    fifo_generator_1 #() fifo_ram_cache (
        .wr_clk(RAM_CLK),
        .wr_rst(RAM_RESET),
        .rd_clk(CACHE_CLK),
        .rd_rst(CACHE_RESET),
        .din(fifo_ram_cache_input),
        .wr_en(fifo_ram_cache_sig_wr),
        .rd_en(fifo_ram_cache_sig_rd),
        .dout(fifo_ram_cache_output),
        .full(fifo_ram_cache_full),
        .empty(fifo_ram_cache_empty)
    );

    // STATES
    reg[3:0] cache_state;
    localparam CACHE_IDLE_STATE = 0;
    localparam CACHE_ACK_STATE = 1;
    localparam CACHE_RD_STATE = 2;
    localparam CACHE_WR_STATE = 3;
    localparam CACHE_RAM_WAIT_STATE = 4;
    localparam CACHE_OPERATION_FIN_STATE = 5;

    reg[3:0] ram_state;
    localparam RAM_IDLE_STATE = 0;
    localparam RAM_ACK_STATE = 1;
    localparam RAM_RD_STATE = 2;
    localparam RAM_WR_STATE = 3;
    
    always @(posedge CACHE_CLK) begin
        if (CACHE_RESET) cache_state <= CACHE_IDLE_STATE;
        else begin
            case (cache_state)
                CACHE_IDLE_STATE: begin
                    cache_iteration <= 1;
                    ACK <= 0;

                    if (SIG_RD && ~ACK) begin 
                        cache_state <= CACHE_RD_STATE;
                        fifo_cache_ram_sig_wr <= 1;
                        fifo_cache_ram_input <= {16'h0, IN_RAM_ADDR, cache_iteration, 1'b1};
                    end
                    if (SIG_WR && ~ACK) begin
                        cache_state <= CACHE_WR_STATE;
                        buffer <= IN_DATA;
                        fifo_cache_ram_sig_wr <= 1;
                        fifo_cache_ram_input <= {16'h0, IN_RAM_ADDR, cache_iteration, 1'b0};
                    end
                end
                CACHE_RD_STATE: begin
                    fifo_cache_ram_sig_wr <= 0;
                    fifo_ram_cache_sig_rd <= 0;
                    if (~fifo_ram_cache_empty) fifo_ram_cache_sig_rd <= 1;
                    if (fifo_ram_cache_output[c_INTERFACE_COUNTER_SIZE-1:0] === cache_iteration) begin
                        if (cache_iteration === c_INTERFACE_COUNTER_END_VALUE) cache_state <= CACHE_OPERATION_FIN_STATE;
                        fifo_ram_cache_sig_rd <= 1;
                        OUT_DATA[(cache_iteration-1)*2*8 +: 2*8] <= fifo_ram_cache_output[c_RAM_BUS_SIZE+c_INTERFACE_COUNTER_SIZE-1:c_INTERFACE_COUNTER_SIZE];
                        cache_iteration <= cache_iteration + 1;
                    end
                end
                CACHE_WR_STATE: begin
                    if (cache_iteration === c_INTERFACE_COUNTER_END_VALUE) cache_state <= CACHE_OPERATION_FIN_STATE;
                    fifo_cache_ram_input <= {buffer[(cache_iteration-1)*2*8 +: 2*8], IN_RAM_ADDR, cache_iteration, 1'b0};
                    fifo_cache_ram_sig_wr <= 1;
                    cache_iteration <= cache_iteration + 1;
                end
                CACHE_OPERATION_FIN_STATE: begin
                    fifo_cache_ram_input <= {16'h0, IN_RAM_ADDR, 4'h0, 1'b0};
                    fifo_cache_ram_sig_wr <= 1;
                    cache_state <= CACHE_RAM_WAIT_STATE;
                end
                CACHE_RAM_WAIT_STATE: begin
                    fifo_cache_ram_sig_wr <= 0;
                    fifo_ram_cache_sig_rd <= 1;
                    if (~fifo_ram_cache_empty) fifo_ram_cache_sig_rd <= 1;
                    if (fifo_ram_cache_output[c_INTERFACE_COUNTER_SIZE-1:0] === cache_iteration) begin
                        cache_state <= CACHE_ACK_STATE;
                    end
                end
                CACHE_ACK_STATE: begin
                    fifo_ram_cache_sig_rd <= 0;
                    cache_state <= CACHE_IDLE_STATE;
                    cache_iteration <= 1;
                    ACK <= 1;
                end
            endcase
        end
    end

    always @(posedge RAM_CLK) begin
        if (RAM_RESET) ram_state <= RAM_IDLE_STATE;
        case (ram_state)
            RAM_IDLE_STATE: begin 
                ram_iteration <= 1;
                fifo_cache_ram_sig_rd <= 0;
                fifo_ram_cache_sig_wr <= 0;
                if (~fifo_cache_ram_empty) fifo_cache_ram_sig_rd <= 1;
                if (fifo_cache_ram_output[c_INTERFACE_COUNTER_SIZE:1] === ram_iteration) begin
                    if (fifo_cache_ram_output[0]) ram_state <= RAM_RD_STATE;
                    else ram_state <= RAM_WR_STATE;
                    addr_buffer <= fifo_cache_ram_output[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE:c_INTERFACE_COUNTER_SIZE+1];
                    OUT_RAM_ADDR <= {fifo_cache_ram_output[c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE:c_INTERFACE_COUNTER_SIZE+1], dec_ram_iteration[2:0], 1'b0};
                    RAM_READ_NOT_WRITE <= 1;
                end
            end
            RAM_RD_STATE: begin
                OUT_RAM_ADDR <= {addr_buffer, dec_ram_iteration[2:0], 1'b0};
                if (RAM_ACK) begin
                    if (ram_iteration == c_INTERFACE_COUNTER_END_VALUE) ram_state <= RAM_ACK_STATE;
                    fifo_ram_cache_sig_wr <= 1;
                    fifo_ram_cache_input <= {IN_RAM_DATA, ram_iteration};
                    ram_iteration <= ram_iteration + 1;
                end
                else fifo_ram_cache_sig_wr <= 0;
            end
            RAM_WR_STATE: begin
                OUT_RAM_ADDR <= {addr_buffer, dec_ram_iteration[2:0], 1'b0};
                fifo_cache_ram_sig_rd <= 0;
                if (~fifo_cache_ram_empty) fifo_cache_ram_sig_rd <= 1;
                if (fifo_cache_ram_output[c_INTERFACE_COUNTER_SIZE:1] === ram_iteration) begin
                    if (ram_iteration == c_INTERFACE_COUNTER_END_VALUE) ram_state <= RAM_ACK_STATE;
                    RAM_READ_NOT_WRITE <= 0;
                    OUT_RAM_DATA <= fifo_cache_ram_output[c_RAM_BUS_SIZE+c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE:c_ADDR_TAG_SIZE+c_ADDR_INDEX_SIZE+c_INTERFACE_COUNTER_SIZE+1];
                    ram_iteration <= ram_iteration + 1;
                end
            end
            RAM_ACK_STATE: begin
                fifo_cache_ram_sig_rd <= 0;
                if (~fifo_cache_ram_empty) fifo_cache_ram_sig_rd <= 1;
                if (fifo_cache_ram_output[c_INTERFACE_COUNTER_SIZE:1] === 4'b0) begin
                    fifo_ram_cache_sig_wr <= 1;
                    fifo_ram_cache_input <= {16'h0, ram_iteration};
                    ram_state <= RAM_IDLE_STATE;
                    ram_iteration <= 1;
                end
                
            end
        endcase
    end
endmodule