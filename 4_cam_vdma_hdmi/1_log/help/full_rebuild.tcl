# 完整重建流程 - 强制重新生成所有内容
set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set bd_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "完整重建流程"
puts "========================================"

# 打开工程
open_project $project_path

# 打开Block Design
open_bd_design $bd_path

# 强制使Block Design变为dirty状态
puts "\n使Block Design需要重新生成..."
set_property needs_refresh true [get_files $bd_path]

# 保存
save_bd_design

# 重新生成输出产品 - 强制
puts "\n强制重新生成输出产品..."
reset_target all [get_files $bd_path]
generate_target all [get_files $bd_path]

# 重置综合运行
puts "\n重置综合..."
reset_run synth_1

# 运行综合
puts "\n运行综合 (这可能需要几分钟)..."
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# 检查综合状态
set synth_status [get_property STATUS [get_runs synth_1]]
puts "综合状态: $synth_status"

# 运行实现
puts "\n运行实现..."
launch_runs impl_1 -jobs 4
wait_on_run impl_1

# 检查实现状态
set impl_status [get_property STATUS [get_runs impl_1]]
puts "实现状态: $impl_status"

# 打开实现结果检查时序
puts "\n检查时序..."
open_run impl_1
set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1]]
puts "WNS: $wns ns"

# 导出XSA
puts "\n导出XSA..."
write_hw_platform -fixed -force -file $xsa_path

puts "\n========================================"
puts "构建完成!"
puts "========================================"
