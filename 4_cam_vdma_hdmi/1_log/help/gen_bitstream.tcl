# 生成Bitstream并导出XSA
set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set xsa_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa

puts "========================================"
puts "生成Bitstream并导出XSA"
puts "========================================"

open_project $project_path

# 生成Bitstream
puts "\n生成Bitstream..."
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
puts "实现状态: $impl_status"

# 导出XSA
puts "\n导出XSA..."
write_hw_platform -fixed -force -file $xsa_path

puts "\n========================================"
puts "完成!"
puts "Bitstream: vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper.bit"
puts "XSA: $xsa_path"
puts "========================================"
