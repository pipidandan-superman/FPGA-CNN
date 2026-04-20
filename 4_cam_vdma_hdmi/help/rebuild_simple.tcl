# 简化的重新构建脚本
# Block Design已修改,需要重新生成

set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set bd_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "重新构建工程 (简化版)"
puts "========================================"

# 打开工程
open_project $project_path

# 打开Block Design (可能会警告连接变化)
open_bd_design $bd_path

# 验证设计
puts "\n验证设计..."
validate_bd_design

# 保存
puts "\n保存设计..."
save_bd_design

# 重新生成输出产品
puts "\n重新生成输出产品..."
generate_target all [get_files $bd_path]

# 导出硬件
puts "\n导出硬件..."
write_hw_platform -fixed -force -file $xsa_path

puts "\n========================================"
puts "Block Design更新完成!"
puts "========================================"
puts "\n请在Vivado GUI中:"
puts "1. 打开工程: $project_path"
puts "2. 运行综合 (Flow -> Run Synthesis)"
puts "3. 运行实现 (Flow -> Run Implementation)"
puts "4. 生成Bitstream (Flow -> Generate Bitstream)"
puts "5. 导出XSA (File -> Export -> Export Hardware)"
