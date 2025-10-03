-makelib xcelium_lib/xilinx_vip -sv \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_6 -sv \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_2 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/a002/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ipshared/af21/hdl/bram_rd.v" \
  "../../../bd/system/ipshared/af21/hdl/pl_bram_rd_v1_0_S00_AXI.v" \
  "../../../bd/system/ipshared/af21/hdl/pl_bram_rd_v1_0.v" \
  "../../../bd/system/ip/system_pl_bram_rd_0_1/sim/system_pl_bram_rd_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

