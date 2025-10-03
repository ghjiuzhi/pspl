vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_2
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_crossbar_v2_1_21
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_protocol_converter_v2_1_20

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_bram_ctrl_v4_1_2 riviera/axi_bram_ctrl_v4_1_2
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 riviera/axi_crossbar_v2_1_21
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/ruanjian/Vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_2 -93 \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/a002/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../ps_pl_bram.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+D:/ruanjian/Vivado/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ipshared/af21/hdl/bram_rd.v" \
"../../../bd/system/ipshared/af21/hdl/pl_bram_rd_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/af21/hdl/pl_bram_rd_v1_0.v" \
"../../../bd/system/ip/system_pl_bram_rd_0_1/sim/system_pl_bram_rd_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

