`timescale 1ns / 1ps

module DataSelectScheme(
    SIG_RAM_LOAD,
    IN_B_VAL,
    IN_ADDR_OFFSET,
    IN_CPU_DATA,
    IN_RAM_DATA,
    IN_CACHE_DATA,
    WR_FLAG,
    OUT_DATA
);
    `include "Constants.vh"

    // INPUT
    input wire SIG_RAM_LOAD;
    input wire[c_B_VAL_SIZE-1:0] IN_B_VAL;
    input wire[c_ADDR_OFFSET_SIZE-1:0] IN_ADDR_OFFSET;
    input wire[c_CPU_DATA_SIZE-1:0] IN_CPU_DATA;
    input wire[c_RAM_DATA_SIZE-1:0] IN_RAM_DATA;
    input wire[c_RAM_DATA_SIZE-1:0] IN_CACHE_DATA;
    input wire WR_FLAG;


    // OUTPUT
    output reg[c_RAM_DATA_SIZE-1:0] OUT_DATA;

    // INTERNAL
    wire[c_ADDR_OFFSET_SIZE-1:c_ADDR_OFFSET_SIZE/2] ADDR_OFFSET;
    assign ADDR_OFFSET = IN_ADDR_OFFSET[c_ADDR_OFFSET_SIZE-1:c_ADDR_OFFSET_SIZE/2];
    reg[c_RAM_DATA_SIZE-1:0] data;
    reg[c_CPU_DATA_SIZE-1:0] offset_data;
    reg[c_CPU_DATA_SIZE-1:0] b_val_filtered_data;

    always @(*) begin
        if (SIG_RAM_LOAD) data <= IN_RAM_DATA;
        else data <= IN_CACHE_DATA;

        case (ADDR_OFFSET)
            'b00: offset_data <= data[c_RAM_DATA_SIZE/4-1:0];
            'b01: offset_data <= data[c_RAM_DATA_SIZE/2-1:c_RAM_DATA_SIZE/4];
            'b10: offset_data <= data[c_RAM_DATA_SIZE/4*3-1:c_RAM_DATA_SIZE/2];
            'b11: offset_data <= data[c_RAM_DATA_SIZE-1:c_RAM_DATA_SIZE/4*3];
            default: ;
        endcase

        if (WR_FLAG === 1) begin
            case (IN_B_VAL)
                'b0001: b_val_filtered_data <= {offset_data[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/4],   IN_CPU_DATA[c_CPU_DATA_SIZE/4-1:0]                                                        };
                'b0010: b_val_filtered_data <= {offset_data[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/2],   IN_CPU_DATA[c_CPU_DATA_SIZE/2-1: c_CPU_DATA_SIZE/4],  offset_data[c_CPU_DATA_SIZE/4-1:0]  };
                'b0100: b_val_filtered_data <= {offset_data[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/4*3], IN_CPU_DATA[c_CPU_DATA_SIZE/4*3-1:c_CPU_DATA_SIZE/2], offset_data[c_CPU_DATA_SIZE/2-1:0]  };
                'b1000: b_val_filtered_data <= {                                                    IN_CPU_DATA[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/4*3],   offset_data[c_CPU_DATA_SIZE/4*3-1:0]};
                'b0011: b_val_filtered_data <= {offset_data[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/2],   IN_CPU_DATA[c_CPU_DATA_SIZE/2-1:0]                                                        };
                'b1100: b_val_filtered_data <= {                                                    IN_CPU_DATA[c_CPU_DATA_SIZE-1:c_CPU_DATA_SIZE/2],     offset_data[c_CPU_DATA_SIZE/2-1:0]  };
                'b1111: b_val_filtered_data <= IN_CPU_DATA;
                default: b_val_filtered_data <= offset_data;
            endcase
        end
        else b_val_filtered_data <= offset_data;
       
        case (ADDR_OFFSET)
            'b00: OUT_DATA <= {data[c_RAM_DATA_SIZE-1:c_RAM_DATA_SIZE/4],   b_val_filtered_data                               };
            'b01: OUT_DATA <= {data[c_RAM_DATA_SIZE-1:c_RAM_DATA_SIZE/2],   b_val_filtered_data, data[c_RAM_DATA_SIZE/4-1:0]  };
            'b10: OUT_DATA <= {data[c_RAM_DATA_SIZE-1:c_RAM_DATA_SIZE/4*3], b_val_filtered_data, data[c_RAM_DATA_SIZE/2-1:0]  };
            'b11: OUT_DATA <= {                                             b_val_filtered_data, data[c_RAM_DATA_SIZE/4*3-1:0]};
            default: ;
        endcase
    end
endmodule