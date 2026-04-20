# 强制重建流程
set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set bd_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "强制重建流程"
puts "========================================"

# 打开工程
open_project $project_path

# 打开Block Design
open_bd_design $bd_path

# 验证并保存设计
validate_bd_design
save_bd_design

# 重置并重新生成输出产品
puts "\n重新生成输出产品..."
reset_target all [get_files $bd_path]
generate_target all [get_files $bd_path] -force

# 导出硬件定义
puts "\n导出硬件定义..."
write_hw_platform -fixed -force -file $xsa_path

# 重置综合
puts "\n重置综合..."
reset_run synth_1

# 运行综合
puts "\n运行综合..."
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# 检查综合状态
set synth_status [get_property STATUS [get_runs synth_1]]
puts "综合状态: $synth_status"

if {$synth_status eq "synth_design Complete!"} {
    # 运行实现
    puts "\n运行实现..."
    launch_runs impl_1 -jobs 4
    wait_on_run impl_1
    
    # 检查实现状态
    set impl_status [get_property STATUS [get_runs impl_1]]
    puts "实现状态: $impl_status"
    
    # 检查时序
    puts "\n检查时序..."
    open_run impl_1
    set wns [get_property SLACK [get_timing_paths -max_paths 1 -nworst 1]]
    puts "WNS: $wns ns"
    
    puts "\n========================================"
    puts "构建成功!"
    puts "========================================"
} else {
    puts "\n综合失败,请检查错误"
}
