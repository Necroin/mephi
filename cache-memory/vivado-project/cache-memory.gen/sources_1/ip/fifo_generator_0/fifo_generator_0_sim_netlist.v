// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 26 02:43:58 2023
// Host        : LAPTOP-UI5A9QEU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/projects/mephi/cache-memory/vivado-project/cache-memory.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [32:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [32:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [32:0]din;
  wire [32:0]dout;
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
  (* C_DIN_WIDTH = "33" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "33" *) 
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
  fifo_generator_0_fifo_generator_v13_2_7 U0
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
module fifo_generator_0_xpm_cdc_gray
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
module fifo_generator_0_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77728)
`pragma protect data_block
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
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
