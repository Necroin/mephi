`timescale 1ns / 1ps

module ORN(IN_DATA, OUT_DATA);
    parameter SIZE = 2;

    input wire[0:SIZE-1] IN_DATA;
    output wire OUT_DATA;

    wire OR_RESULT;
    genvar i;
    generate 
        for (i = 0; i < SIZE; i = i + 1) begin
            if (SIZE == 2) begin
                assign OUT_DATA = IN_DATA[0] || IN_DATA[1];
            end
            if (SIZE > 2) begin
                ORN #(.SIZE(SIZE-1)) or_element (IN_DATA[1:SIZE-1], OR_RESULT);
                assign OUT_DATA = IN_DATA[0] || OR_RESULT;
            end
        end
    endgenerate
endmodule
