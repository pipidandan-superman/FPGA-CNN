# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\FPGA_Project\2020_2\CNN\proj\vmda_test\vitis\vdma_ctrl_system\_ide\scripts\systemdebugger_vdma_ctrl_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\FPGA_Project\2020_2\CNN\proj\vmda_test\vitis\vdma_ctrl_system\_ide\scripts\systemdebugger_vdma_ctrl_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A08870-13722093-0"}
fpga -file E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/vdma_ctrl/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/vdma_ctrl/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/vdma_ctrl/Debug/vdma_ctrl.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
