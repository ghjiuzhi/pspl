connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0} -index 1
fpga -file D:/fpga/Embedded_Vitis/ps_pl_bram/vitis/ps_pl_bram/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/fpga/Embedded_Vitis/ps_pl_bram/vitis/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/fpga/Embedded_Vitis/ps_pl_bram/vitis/ps_pl_bram/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/fpga/Embedded_Vitis/ps_pl_bram/vitis/ps_pl_bram/Debug/ps_pl_bram.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
