# Vitis重新构建脚本
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "Vitis重新构建"
puts "========================================"

# 设置工作空间
setws $ws_path

# 列出所有平台
puts "\n当前平台:"
platform list

# 激活平台
puts "\n激活平台..."
platform active design_1_wrapper_platform

# 激活域
puts "\n激活域..."
domain active standalone_domain

# 重新生成BSP
puts "\n重新生成BSP..."
bsp regenerate

# 构建平台
puts "\n构建平台..."
platform generate

# 构建应用程序
puts "\n构建应用程序..."
app build -name cam_vdma_hdmi

puts "\n========================================"
puts "Vitis构建完成!"
puts "========================================"

# 检查生成的elf文件
set elf_path "$ws_path/cam_vdma_hdmi/Debug/cam_vdma_hdmi.elf"
if {[file exists $elf_path]} {
    puts "\nELF文件: $elf_path"
    puts "文件大小: [file size $elf_path] 字节"
}
