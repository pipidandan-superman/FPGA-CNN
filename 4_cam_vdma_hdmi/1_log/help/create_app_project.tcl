# Vitis应用程序项目创建脚本
# 使用XSCT命令行工具创建摄像头采集显示程序

# 设置工作空间
setws E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

puts "========================================"
puts "Step 1: 检查硬件平台"
puts "========================================"

# 列出现有平台
platform list
puts "平台检查完成"

puts "\n========================================"
puts "Step 2: 创建应用程序项目"
puts "========================================"

# 创建应用程序项目
# 注意: -proc 而不是 -processor
app create -name cam_vdma_hdmi \
           -domain standalone_domain \
           -platform design_1_wrapper \
           -proc ps7_cortexa9_0 \
           -os standalone \
           -lang C

puts "\n应用程序项目创建完成"

puts "\n========================================"
puts "Step 3: 导入源代码"
puts "========================================"

# 导入源代码文件
importsources -name cam_vdma_hdmi \
              -path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/cam_vdma_hdmi.c

puts "源代码导入完成"

puts "\n========================================"
puts "Step 4: 构建项目"
puts "========================================"

# 构建应用程序
app build cam_vdma_hdmi

puts "\n构建完成"

puts "\n========================================"
puts "完成!"
puts "========================================"
