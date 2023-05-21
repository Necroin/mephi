localparam c_ADDR_INDEX_SIZE = 6;
localparam c_ADDR_TAG_SIZE = 6;
localparam c_ADDR_OFFSET_SIZE = 4;
localparam c_ARRD_SIZE = c_ADDR_TAG_SIZE + c_ADDR_INDEX_SIZE + c_ADDR_OFFSET_SIZE;
localparam c_COUNTER_SIZE = 3;
localparam c_VALID_SIZE = 1;
localparam c_LINE_SIZE = c_COUNTER_SIZE + c_ADDR_TAG_SIZE + c_VALID_SIZE;
localparam c_CHANNEL_SIZE = 3;
localparam c_B_VAL_SIZE = 4;
localparam c_CPU_DATA_SIZE = 32;
localparam c_RAM_DATA_SIZE = 16*8;
localparam c_RAM_BUS_SIZE = 2;

