# Vitis项目创建脚本 - 从XSA创建完整系统
# 使用XSCT命令行工具

set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "Step 1: 设置工作空间"
puts "========================================"
setws $ws_path

puts "========================================"
puts "Step 2: 创建硬件平台项目"
puts "========================================"
# 从XSA创建平台
platform create -name design_1_wrapper_platform \
                -hw $xsa_path \
                -proc ps7_cortexa9_0 \
                -os standalone \
                -out $ws_path

puts "平台创建完成"

puts "\n========================================"
puts "Step 3: 创建应用程序项目"
puts "========================================"
app create -name cam_vdma_hdmi \
           -platform design_1_wrapper_platform \
           -domain standalone_domain \
           -proc ps7_cortexa9_0 \
           -os standalone \
           -lang C

puts "应用程序项目创建完成"

puts "\n========================================"
puts "Step 4: 导入源代码"
puts "========================================"
importsources -name cam_vdma_hdmi \
              -path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/cam_vdma_hdmi.c

puts "源代码导入完成"

puts "\n========================================"
puts "Step 5: 构建应用程序"
puts "========================================"
app build cam_vdma_hdmi

puts "\n构建完成"

puts "\n========================================"
puts "全部完成!"
puts "========================================"
