# Vitis命令行构建脚本 - 使用项目路径
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "使用项目路径构建"
puts "========================================"

# 设置工作空间
setws $ws_path

# 列出所有应用程序
puts "\n当前工作空间中的应用程序:"
app list

# 列出所有平台
puts "\n当前工作空间中的平台:"
platform list

# 激活平台并生成
puts "\n激活平台..."
platform active design_1_wrapper_platform

# 生成BSP
puts "\n生成BSP..."
domain active standalone_domain
bsp generate

# 构建应用程序
puts "\n构建应用程序..."
projects -build

puts "\n========================================"
puts "完成!"
puts "========================================"
