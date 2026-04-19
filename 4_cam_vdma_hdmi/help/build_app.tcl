# 构建应用程序脚本
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "设置工作空间并构建"
puts "========================================"

setws $ws_path

puts "工作空间设置完成"

# 先构建平台
puts "\n构建平台..."
platform active design_1_wrapper_platform

# 构建应用程序
puts "\n构建应用程序..."
app build cam_vdma_hdmi

puts "\n========================================"
puts "构建完成!"
puts "========================================"
