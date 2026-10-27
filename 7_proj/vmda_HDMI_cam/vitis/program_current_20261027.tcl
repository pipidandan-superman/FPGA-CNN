set project_dir [file normalize [file dirname [file dirname [info script]]]]
set ws "$project_dir/vitis"
set bit "$project_dir/vmda_test.runs/impl_1/design_1_wrapper.bit"
set xsa "$ws/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa"
set ps7init "$ws/design_1_wrapper/export/design_1_wrapper/hw/ps7_init.tcl"
if {![file exists $ps7init]} {
    set ps7init "$ws/design_1_wrapper/hw/ps7_init.tcl"
}
set elf "$ws/vdma_ctrl/Debug/vdma_ctrl.elf"
foreach required_file [list $bit $xsa $ps7init $elf] {
    if {![file exists $required_file]} { error "Download input missing: $required_file" }
}
puts "BOARD_DOWNLOAD_BIT=$bit"
puts "BOARD_DOWNLOAD_XSA=$xsa"
puts "BOARD_DOWNLOAD_PS7INIT=$ps7init"
puts "BOARD_DOWNLOAD_ELF=$elf"
connect -url tcp:127.0.0.1:3121
targets
targets -set -nocase -filter {name =~ "APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~ "xc7z*"}
fpga -file "$bit"
targets -set -nocase -filter {name =~ "APU*"}
loadhw -hw "$xsa" -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~ "APU*"}
source "$ps7init"
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow "$elf"
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
after 5000
puts "BOARD_PROGRAMMED_BIT=$bit"
puts "BOARD_RUNNING_ELF=$elf"
puts "GEMM_STATUS_AXI_SAMPLE=[mrd -force 0x43C10004]"
puts "GEMM_DMA_STATUS_AXI_SAMPLE=[mrd -force 0x43010004]"
disconnect
puts "BOARD_PROGRAM_AND_RUN_PASS"
