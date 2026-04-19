# Vitis完整构建脚本
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "Vitis项目构建"
puts "========================================"

# 设置工作空间
setws $ws_path

# 设置活动平台
puts "\n设置活动平台..."
platform active design_1_wrapper_platform

# 设置活动域
puts "设置活动域..."
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
puts "完成!"
puts "========================================"

# 检查生成的文件
set debug_dir "$ws_path/cam_vdma_hdmi/Debug"
if {[file exists $debug_dir]} {
    puts "\nDebug目录内容:"
    foreach f [glob -nocomplain "$debug_dir/*"] {
        puts "  [file tail $f]"
    }
} else {
    puts "\nDebug目录不存在"
}
