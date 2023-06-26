// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 26 02:43:57 2023
// Host        : LAPTOP-UI5A9QEU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77888)
`pragma protect data_block
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
e/pdjBpoW7WYbz5BEB3y1/p3ohsD9a5GvpA=
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
