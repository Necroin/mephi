// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 26 04:54:29 2023
// Host        : LAPTOP-UI5A9QEU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/projects/mephi/cache-memory/vivado-project/cache-memory.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [19:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [19:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [19:0]din;
  wire [19:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "20" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "20" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_1_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79312)
`pragma protect data_block
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
4nbCEVgibZr+ipEVz9v2sYWP0jZndB6ZRA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
