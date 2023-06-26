// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jun 25 16:11:18 2023
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [29:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [29:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [29:0]din;
  wire [29:0]dout;
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
  (* C_DIN_WIDTH = "30" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "30" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 78224)
`pragma protect data_block
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
zdUmJEFLFbUsYmJLTpRCNvmLhPI=
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
