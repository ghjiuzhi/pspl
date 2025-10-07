






create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
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
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list system_i/blk_mem_gen_0/enb]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
