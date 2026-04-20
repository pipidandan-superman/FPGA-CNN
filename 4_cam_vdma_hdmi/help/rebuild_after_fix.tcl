# 修复后重新构建工程
# 运行此脚本前请先运行 fix_vtc_gen_clken.tcl

set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set bd_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "重新构建工程"
puts "========================================"

# 打开工程
puts "\n[1/6] 打开工程..."
open_project $project_path

# 打开Block Design
puts "\n[2/6] 打开Block Design..."
open_bd_design $bd_path

# 重新生成输出产品
puts "\n[3/6] 重新生成Block Design输出产品..."
generate_target all [get_files $bd_path]
puts "  输出产品已生成"

# 重置并运行综合
puts "\n[4/6] 综合设计..."
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
set synth_status [get_property STATUS [get_runs synth_1]]
puts "  综合状态: $synth_status"

# 运行实现
puts "\n[5/6] 实现设计..."
reset_run impl_1
launch_runs impl_1 -jobs 4
wait_on_run impl_1
set impl_status [get_property STATUS [get_runs impl_1]]
puts "  实现状态: $impl_status"

# 检查时序
puts "\n[6/6] 检查时序..."
open_run impl_1
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1]]
puts "  WNS: $wns ns"
if {$wns >= 0} {
    puts "  时序收敛!"
} else {
    puts "  警告: 时序违例!"
}

# 导出XSA
puts "\n导出XSA..."
write_hw_platform -fixed -force -file $xsa_path
puts "XSA已导出: $xsa_path"

puts "\n========================================"
puts "硬件构建完成!"
puts "========================================"
puts "\n后续步骤:"
puts "1. 在Vitis中更新硬件平台"
puts "2. 重新编译应用程序"
puts "3. 下载到板卡测试"
