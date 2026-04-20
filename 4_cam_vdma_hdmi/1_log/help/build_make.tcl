# 使用makefile构建
set ws_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis

setws $ws_path

puts "检查vdma_ctrl项目..."
cd $ws_path/vdma_ctrl/Debug

puts "当前目录: [pwd]"

# 使用make重新构建
puts "\n使用make重新构建..."
exec make clean
exec make all

puts "\n构建完成!"

# 检查生成的文件
puts "\n检查生成的文件:"
foreach f [glob -nocomplain "*.elf"] {
    puts "  $f"
}
