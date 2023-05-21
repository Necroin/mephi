`timescale 1ns / 1ps

module OutputDataSelectScheme(
    IN_DATA,
    IN_ADDR_OFFSET,
    OUT_DATA
);
    `include "Constants.vh"

    // INPUT
    input wire[c_RAM_DATA_SIZE-1:0] IN_DATA;
    input wire[c_ADDR_OFFSET_SIZE-1:0] IN_ADDR_OFFSET;

    //OUTPUT
    output reg[c_CPU_DATA_SIZE-1:0] OUT_DATA;

    // INTERNAL
    wire[c_ADDR_OFFSET_SIZE-1:c_ADDR_OFFSET_SIZE/2] ADDR_OFFSET;
    assign ADDR_OFFSET = IN_ADDR_OFFSET[c_ADDR_OFFSET_SIZE-1:c_ADDR_OFFSET_SIZE/2];

    always @(*) begin
        case (ADDR_OFFSET)
            'b00: OUT_DATA <= IN_DATA[c_RAM_DATA_SIZE/4-1:0];
            'b01: OUT_DATA <= IN_DATA[c_RAM_DATA_SIZE/2-1:c_RAM_DATA_SIZE/4];
            'b10: OUT_DATA <= IN_DATA[c_RAM_DATA_SIZE/4*3-1:c_RAM_DATA_SIZE/2];
            'b11: OUT_DATA <= IN_DATA[c_RAM_DATA_SIZE-1:c_RAM_DATA_SIZE/4*3];
            default: ;
        endcase
    end
endmodule