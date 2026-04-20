#========================================
# 重新生成输出产品并综合实现
#========================================

open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr

puts "\n========================================"
puts "Step 1: 验证当前时钟配置"
puts "========================================"

open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

set ps7 [get_bd_cells processing_system7_0]
puts "\nFCLK_CLK0配置:"
puts "  频率: [get_property CONFIG.PCW_CLK0_FREQ [get_bd_cells $ps7]] Hz"
puts "  分频器0: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 [get_bd_cells $ps7]]"
puts "  分频器1: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 [get_bd_cells $ps7]]"
puts "  时钟源: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC [get_bd_cells $ps7]]"

puts "\nClock Wizard配置:"
set clk_wiz [get_bd_cells clk_wiz_0]
for {set i 1} {$i <= 4} {incr i} {
    set freq [get_property CONFIG.CLKOUT${i}_REQUESTED_OUT_FREQ [get_bd_cells $clk_wiz]]
    puts "  CLKOUT${i}: ${freq} MHz"
}

close_bd_design [get_bd_designs design_1]

puts "\n========================================"
puts "Step 2: 重新生成Block Design输出产品"
puts "========================================"

# 重新生成输出产品
generate_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]

puts "\n========================================"
puts "Step 3: 开始综合"
puts "========================================"

# 重置综合运行
reset_run synth_1

# 开始综合
launch_runs synth_1 -jobs 4
wait_on_run synth_1

puts "\n========================================"
puts "Step 4: 开始实现"
puts "========================================"

# 重置实现运行
reset_run impl_1

# 开始实现
launch_runs impl_1 -jobs 4
wait_on_run impl_1

puts "\n========================================"
puts "Step 5: 检查时序"
puts "========================================"

# 打开实现后的设计检查时序
open_run impl_1

# 获取时序摘要
set wns [get_property SLACK [get_timing_paths -max_paths 1 -setup]]
set tns [get_property TOTAL_NEGATIVE_SLACK [get_timing_paths -setup]]
set num_failing [get_property NUM_FAILING_ENDPOINTS [get_timing_paths -setup]]

puts "\n时序摘要:"
puts "  WNS (Worst Negative Slack): $wns ns"
puts "  TNS (Total Negative Slack): $tns ns"
puts "  Failing Endpoints: $num_failing"

if {$wns >= 0} {
    puts "\n*** 时序收敛! WNS = $wns ns ***"
} else {
    puts "\n*** 时序违例! WNS = $wns ns ***"
}

# 保存时序报告
report_timing_summary -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/timing_summary.rpt

close_project

puts "\n========================================"
puts "完成!"
puts "========================================"
