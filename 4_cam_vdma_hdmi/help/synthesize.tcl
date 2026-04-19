#========================================
# 重新生成并综合实现 - 验证150MHz时序
#========================================

open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr

puts "\n========================================"
puts "Step 1: 重新生成Block Design输出产品"
puts "========================================"

# 强制重新生成
reset_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]
generate_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]

puts "\n输出产品生成完成"

puts "\n========================================"
puts "Step 2: 开始综合"
puts "========================================"

reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1

puts "\n综合完成"

puts "\n========================================"
puts "Step 3: 开始实现"
puts "========================================"

launch_runs impl_1 -jobs 4
wait_on_run impl_1

puts "\n实现完成"

puts "\n========================================"
puts "Step 4: 检查时序"
puts "========================================"

open_run impl_1

report_timing_summary -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/timing_summary.rpt

set wns [get_property SLACK [get_timing_paths -max_paths 1 -setup]]

puts "\n========================================"
puts "时序结果"
puts "========================================"
puts "WNS: $wns ns"

if {$wns >= 0} {
    puts "\n*** 时序收敛! WNS = $wns ns ***"
} else {
    puts "\n*** 时序仍有违例! WNS = $wns ns ***"
}

# 生成bitstream
puts "\n========================================"
puts "Step 5: 生成Bitstream"
puts "========================================"

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

puts "\nBitstream生成完成"

# 导出硬件
puts "\n========================================"
puts "Step 6: 导出硬件 (XSA)"
puts "========================================"

file mkdir E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis
write_hw_platform -fixed -force -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "\nXSA导出完成"

close_project

puts "\n========================================"
puts "全部完成!"
puts "========================================"
