




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list system_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {system_i/blk_mem_gen_0/doutb[0]} {system_i/blk_mem_gen_0/doutb[1]} {system_i/blk_mem_gen_0/doutb[2]} {system_i/blk_mem_gen_0/doutb[3]} {system_i/blk_mem_gen_0/doutb[4]} {system_i/blk_mem_gen_0/doutb[5]} {system_i/blk_mem_gen_0/doutb[6]} {system_i/blk_mem_gen_0/doutb[7]} {system_i/blk_mem_gen_0/doutb[8]} {system_i/blk_mem_gen_0/doutb[9]} {system_i/blk_mem_gen_0/doutb[10]} {system_i/blk_mem_gen_0/doutb[11]} {system_i/blk_mem_gen_0/doutb[12]} {system_i/blk_mem_gen_0/doutb[13]} {system_i/blk_mem_gen_0/doutb[14]} {system_i/blk_mem_gen_0/doutb[15]} {system_i/blk_mem_gen_0/doutb[16]} {system_i/blk_mem_gen_0/doutb[17]} {system_i/blk_mem_gen_0/doutb[18]} {system_i/blk_mem_gen_0/doutb[19]} {system_i/blk_mem_gen_0/doutb[20]} {system_i/blk_mem_gen_0/doutb[21]} {system_i/blk_mem_gen_0/doutb[22]} {system_i/blk_mem_gen_0/doutb[23]} {system_i/blk_mem_gen_0/doutb[24]} {system_i/blk_mem_gen_0/doutb[25]} {system_i/blk_mem_gen_0/doutb[26]} {system_i/blk_mem_gen_0/doutb[27]} {system_i/blk_mem_gen_0/doutb[28]} {system_i/blk_mem_gen_0/doutb[29]} {system_i/blk_mem_gen_0/doutb[30]} {system_i/blk_mem_gen_0/doutb[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {system_i/blk_mem_gen_0/addrb[0]} {system_i/blk_mem_gen_0/addrb[1]} {system_i/blk_mem_gen_0/addrb[2]} {system_i/blk_mem_gen_0/addrb[3]} {system_i/blk_mem_gen_0/addrb[4]} {system_i/blk_mem_gen_0/addrb[5]} {system_i/blk_mem_gen_0/addrb[6]} {system_i/blk_mem_gen_0/addrb[7]} {system_i/blk_mem_gen_0/addrb[8]} {system_i/blk_mem_gen_0/addrb[9]} {system_i/blk_mem_gen_0/addrb[10]} {system_i/blk_mem_gen_0/addrb[11]} {system_i/blk_mem_gen_0/addrb[12]} {system_i/blk_mem_gen_0/addrb[13]} {system_i/blk_mem_gen_0/addrb[14]} {system_i/blk_mem_gen_0/addrb[15]} {system_i/blk_mem_gen_0/addrb[16]} {system_i/blk_mem_gen_0/addrb[17]} {system_i/blk_mem_gen_0/addrb[18]} {system_i/blk_mem_gen_0/addrb[19]} {system_i/blk_mem_gen_0/addrb[20]} {system_i/blk_mem_gen_0/addrb[21]} {system_i/blk_mem_gen_0/addrb[22]} {system_i/blk_mem_gen_0/addrb[23]} {system_i/blk_mem_gen_0/addrb[24]} {system_i/blk_mem_gen_0/addrb[25]} {system_i/blk_mem_gen_0/addrb[26]} {system_i/blk_mem_gen_0/addrb[27]} {system_i/blk_mem_gen_0/addrb[28]} {system_i/blk_mem_gen_0/addrb[29]} {system_i/blk_mem_gen_0/addrb[30]} {system_i/blk_mem_gen_0/addrb[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {system_i/pl_bram_rd_0/s00_axi_awaddr[2]} {system_i/pl_bram_rd_0/s00_axi_awaddr[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {system_i/pl_bram_rd_0/s00_axi_wdata[0]} {system_i/pl_bram_rd_0/s00_axi_wdata[1]} {system_i/pl_bram_rd_0/s00_axi_wdata[2]} {system_i/pl_bram_rd_0/s00_axi_wdata[3]} {system_i/pl_bram_rd_0/s00_axi_wdata[4]} {system_i/pl_bram_rd_0/s00_axi_wdata[5]} {system_i/pl_bram_rd_0/s00_axi_wdata[6]} {system_i/pl_bram_rd_0/s00_axi_wdata[7]} {system_i/pl_bram_rd_0/s00_axi_wdata[8]} {system_i/pl_bram_rd_0/s00_axi_wdata[9]} {system_i/pl_bram_rd_0/s00_axi_wdata[10]} {system_i/pl_bram_rd_0/s00_axi_wdata[11]} {system_i/pl_bram_rd_0/s00_axi_wdata[12]} {system_i/pl_bram_rd_0/s00_axi_wdata[13]} {system_i/pl_bram_rd_0/s00_axi_wdata[14]} {system_i/pl_bram_rd_0/s00_axi_wdata[15]} {system_i/pl_bram_rd_0/s00_axi_wdata[16]} {system_i/pl_bram_rd_0/s00_axi_wdata[17]} {system_i/pl_bram_rd_0/s00_axi_wdata[18]} {system_i/pl_bram_rd_0/s00_axi_wdata[19]} {system_i/pl_bram_rd_0/s00_axi_wdata[20]} {system_i/pl_bram_rd_0/s00_axi_wdata[21]} {system_i/pl_bram_rd_0/s00_axi_wdata[22]} {system_i/pl_bram_rd_0/s00_axi_wdata[23]} {system_i/pl_bram_rd_0/s00_axi_wdata[24]} {system_i/pl_bram_rd_0/s00_axi_wdata[25]} {system_i/pl_bram_rd_0/s00_axi_wdata[26]} {system_i/pl_bram_rd_0/s00_axi_wdata[27]} {system_i/pl_bram_rd_0/s00_axi_wdata[28]} {system_i/pl_bram_rd_0/s00_axi_wdata[29]} {system_i/pl_bram_rd_0/s00_axi_wdata[30]} {system_i/pl_bram_rd_0/s00_axi_wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 12 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {system_i/axi_bram_ctrl_0/s_axi_awaddr[0]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[1]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[2]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[3]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[4]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[5]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[6]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[7]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[8]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[9]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[10]} {system_i/axi_bram_ctrl_0/s_axi_awaddr[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {system_i/axi_bram_ctrl_0/s_axi_wdata[0]} {system_i/axi_bram_ctrl_0/s_axi_wdata[1]} {system_i/axi_bram_ctrl_0/s_axi_wdata[2]} {system_i/axi_bram_ctrl_0/s_axi_wdata[3]} {system_i/axi_bram_ctrl_0/s_axi_wdata[4]} {system_i/axi_bram_ctrl_0/s_axi_wdata[5]} {system_i/axi_bram_ctrl_0/s_axi_wdata[6]} {system_i/axi_bram_ctrl_0/s_axi_wdata[7]} {system_i/axi_bram_ctrl_0/s_axi_wdata[8]} {system_i/axi_bram_ctrl_0/s_axi_wdata[9]} {system_i/axi_bram_ctrl_0/s_axi_wdata[10]} {system_i/axi_bram_ctrl_0/s_axi_wdata[11]} {system_i/axi_bram_ctrl_0/s_axi_wdata[12]} {system_i/axi_bram_ctrl_0/s_axi_wdata[13]} {system_i/axi_bram_ctrl_0/s_axi_wdata[14]} {system_i/axi_bram_ctrl_0/s_axi_wdata[15]} {system_i/axi_bram_ctrl_0/s_axi_wdata[16]} {system_i/axi_bram_ctrl_0/s_axi_wdata[17]} {system_i/axi_bram_ctrl_0/s_axi_wdata[18]} {system_i/axi_bram_ctrl_0/s_axi_wdata[19]} {system_i/axi_bram_ctrl_0/s_axi_wdata[20]} {system_i/axi_bram_ctrl_0/s_axi_wdata[21]} {system_i/axi_bram_ctrl_0/s_axi_wdata[22]} {system_i/axi_bram_ctrl_0/s_axi_wdata[23]} {system_i/axi_bram_ctrl_0/s_axi_wdata[24]} {system_i/axi_bram_ctrl_0/s_axi_wdata[25]} {system_i/axi_bram_ctrl_0/s_axi_wdata[26]} {system_i/axi_bram_ctrl_0/s_axi_wdata[27]} {system_i/axi_bram_ctrl_0/s_axi_wdata[28]} {system_i/axi_bram_ctrl_0/s_axi_wdata[29]} {system_i/axi_bram_ctrl_0/s_axi_wdata[30]} {system_i/axi_bram_ctrl_0/s_axi_wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list system_i/blk_mem_gen_0/enb]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list system_i/axi_bram_ctrl_0/s_axi_wvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list system_i/axi_bram_ctrl_0/bram_en_a]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list system_i/axi_bram_ctrl_0/s_axi_aclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list system_i/axi_bram_ctrl_0/s_axi_aresetn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list system_i/axi_bram_ctrl_0/s_axi_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list system_i/blk_mem_gen_0/clka]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list system_i/blk_mem_gen_0/clkb]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list system_i/blk_mem_gen_0/rsta]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list system_i/blk_mem_gen_0/rstb]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list system_i/pl_bram_rd_0/s00_axi_aclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list system_i/pl_bram_rd_0/s00_axi_aresetn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list system_i/pl_bram_rd_0/s00_axi_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list system_i/pl_bram_rd_0/s00_axi_awvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list system_i/pl_bram_rd_0/s00_axi_bready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list system_i/pl_bram_rd_0/s00_axi_bvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list system_i/pl_bram_rd_0/s00_axi_wready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list system_i/pl_bram_rd_0/s00_axi_wvalid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
