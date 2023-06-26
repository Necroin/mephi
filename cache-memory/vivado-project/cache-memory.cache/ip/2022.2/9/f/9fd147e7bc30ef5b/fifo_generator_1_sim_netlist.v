// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jun 26 04:54:28 2023
// Host        : LAPTOP-UI5A9QEU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79472)
`pragma protect data_block
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
6ziETY5Px8nPeLWmAbY=
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
