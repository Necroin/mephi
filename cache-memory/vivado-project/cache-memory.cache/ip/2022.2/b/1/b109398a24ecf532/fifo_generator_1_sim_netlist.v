// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jun 25 19:03:09 2023
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
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
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79952)
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
