# Vitis命令行构建脚本
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "构建项目"
puts "========================================"

# 设置工作空间
setws $ws_path

# 激活平台
puts "\n激活平台..."
platform active design_1_wrapper_platform

# 构建域
puts "\n构建域..."
domain active standalone_domain

# 使用projects命令构建
puts "\n构建所有项目..."
projects -build -type all

puts "\n========================================"
puts "构建完成!"
puts "========================================"

# 检查生成的elf文件
set elf_path "$ws_path/cam_vdma_hdmi/Debug/cam_vdma_hdmi.elf"
if {[file exists $elf_path]} {
    puts "\nELF文件已生成: $elf_path"
} else {
    puts "\n警告: ELF文件未找到"
}
