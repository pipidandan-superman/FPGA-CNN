#========================================
# 单独执行实现流程
#========================================

open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr

puts "\n========================================"
puts "Step 1: 运行实现"
puts "========================================"

# 重置并运行实现
reset_run impl_1
launch_runs impl_1 -jobs 4
wait_on_run impl_1

puts "\n实现完成"

puts "\n========================================"
puts "Step 2: 检查时序"
puts "========================================"

open_run impl_1

# 生成时序报告
report_timing_summary -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/timing_summary.rpt

# 获取关键时序参数
set wns [get_property SLACK [get_timing_paths -max_paths 1 -setup]]

puts "\n========================================"
puts "时序结果"
puts "========================================"
puts "WNS: $wns ns"

if {$wns >= 0} {
    puts "\n*** 时序收敛! WNS = $wns ns ***"
} else {
    puts "\n*** 时序违例! WNS = $wns ns ***"
}

puts "\n========================================"
puts "Step 3: 生成Bitstream"
puts "========================================"

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

puts "\nBitstream生成完成"

puts "\n========================================"
puts "Step 4: 导出XSA"
puts "========================================"

file mkdir E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis
write_hw_platform -fixed -force -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "\nXSA导出完成"

close_project

puts "\n========================================"
puts "全部完成!"
puts "========================================"
