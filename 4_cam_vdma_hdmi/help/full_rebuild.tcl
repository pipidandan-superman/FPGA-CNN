#========================================
# 完整重新构建流程
#========================================

open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr

puts "\n========================================"
puts "Step 1: 重置所有运行"
puts "========================================"

# 获取所有运行并重置
set runs [get_runs]
foreach run $runs {
    puts "Resetting $run..."
    reset_run $run
}

puts "\n========================================"
puts "Step 2: 重新生成Block Design输出产品"
puts "========================================"

# 打开并重新生成BD
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

# 重置并重新生成
reset_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]
generate_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]

close_bd_design [get_bd_designs design_1]

puts "\n输出产品生成完成"

puts "\n========================================"
puts "Step 3: 综合所有IP"
puts "========================================"

# 获取所有IP合成运行
set ip_runs [get_runs -filter {IS_SYNTHESIS == 1 && NAME != "synth_1"}]
foreach run $ip_runs {
    puts "Launching $run..."
    launch_runs $run -jobs 4
}

# 等待所有IP综合完成
foreach run $ip_runs {
    puts "Waiting for $run..."
    wait_on_run $run
}

puts "\n所有IP综合完成"

puts "\n========================================"
puts "Step 4: 综合顶层设计"
puts "========================================"

launch_runs synth_1 -jobs 4
wait_on_run synth_1

puts "\n顶层综合完成"

puts "\n========================================"
puts "Step 5: 实现"
puts "========================================"

launch_runs impl_1 -jobs 4
wait_on_run impl_1

puts "\n实现完成"

puts "\n========================================"
puts "Step 6: 检查时序"
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
    puts "\n*** 时序违例! WNS = $wns ns ***"
}

puts "\n========================================"
puts "Step 7: 生成Bitstream"
puts "========================================"

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

puts "\nBitstream生成完成"

puts "\n========================================"
puts "Step 8: 导出XSA"
puts "========================================"

file mkdir E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis
write_hw_platform -fixed -force -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "\nXSA导出完成"

close_project

puts "\n========================================"
puts "全部完成!"
puts "========================================"
