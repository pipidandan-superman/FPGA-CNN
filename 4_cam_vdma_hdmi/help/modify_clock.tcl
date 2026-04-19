#========================================
# 时钟修改脚本
# 目的: 将FCLK_CLK0从200MHz降低到150MHz以解决时序违例
#========================================

open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

puts "\n========================================"
puts "开始修改时钟配置"
puts "========================================"

# 获取PS7实例
set ps7 [get_bd_cells processing_system7_0]

# 当前配置
puts "\n当前FCLK_CLK0配置:"
puts "  PCW_CLK0_FREQ: [get_property CONFIG.PCW_CLK0_FREQ [get_bd_cells $ps7]]"
puts "  PCW_FCLK0_PERIPHERAL_DIVISOR0: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 [get_bd_cells $ps7]]"
puts "  PCW_FCLK0_PERIPHERAL_DIVISOR1: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 [get_bd_cells $ps7]]"

# 修改FCLK_CLK0为150MHz
# IO PLL通常为1000MHz, 要得到150MHz需要:
# DIVISOR0 = 5, DIVISOR1 = 1 或 DIVISOR0 = 10, DIVISOR1 = 2
# 当前是 DIVISOR0=4, DIVISOR1=2 = 1000/(4*2) = 125MHz 不对
# 实际计算: 1000MHz / DIVISOR0 / DIVISOR1 = 目标频率
# 200MHz = 1000 / 5 / 1 或 1000 / 2 / 5

puts "\n修改FCLK_CLK0为150MHz..."

# 设置分频系数: 1000MHz / 5 / 1 = 200MHz (当前可能是这个)
# 要得到150MHz: 1000MHz / 10 / 1 = 100MHz 或 1000 / 5 / 2 = 100MHz
# 实际上需要确认IO PLL频率
# 对于Zynq-7000, IO PLL通常是1000MHz

# 设置150MHz: DIVISOR0=5, DIVISOR1=1 表示 1000/(5*1) = 200MHz
# DIVISOR0=10, DIVISOR1=1 = 100MHz
# DIVISOR0=20, DIVISOR1=3 = 16.67MHz
# DIVISOR0=4, DIVISOR1=2 = 125MHz

# 计算正确的分频系数得到150MHz
# 1000 / x / y = 150
# x * y = 6.67 - 不是整数
# 尝试 DIVISOR0=4, DIVISOR1=2 = 125MHz
# 或者 DIVISOR0=3, DIVISOR1=2 = 166.67MHz
# 最佳选择: DIVISOR0=5, DIVISOR1=1 = 200MHz (当前)
# 要得到150MHz: DIVISOR0=20, DIVISOR1=3 = 16.67MHz (不对)

# 检查ARM PLL频率
puts "\n检查PLL配置..."
puts "  PCW_FCLK0_PERIPHERAL_CLKSRC: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC [get_bd_cells $ps7]]"

# 尝试设置新的频率
# 对于150MHz，如果IO PLL是1000MHz:
# DIVISOR0 * DIVISOR1 = 1000/150 = 6.67
# 最接近的整数组合:
# DIVISOR0=4, DIVISOR1=2 = 125MHz
# DIVISOR0=2, DIVISOR1=3 = 166.67MHz

# 实际上，应该直接设置频率，让工具计算分频系数
set_property CONFIG.PCW_CLK0_FREQ 150000000 [get_bd_cells $ps7]

# 验证修改
puts "\n修改后FCLK_CLK0配置:"
puts "  PCW_CLK0_FREQ: [get_property CONFIG.PCW_CLK0_FREQ [get_bd_cells $ps7]]"
puts "  PCW_FCLK0_PERIPHERAL_DIVISOR0: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 [get_bd_cells $ps7]]"
puts "  PCW_FCLK0_PERIPHERAL_DIVISOR1: [get_property CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 [get_bd_cells $ps7]]"

# 同时修改Reset IP的频率配置
puts "\n修改Reset IP频率配置..."
set rst [get_bd_cells rst_ps7_0_200M]
puts "  当前Reset名称: $rst"
# 重命名Reset IP
# set_property name rst_ps7_0_150M [get_bd_cells $rst]

# 保存修改
puts "\n保存Block Design..."
save_bd_design

puts "\n========================================"
puts "时钟修改完成"
puts "========================================"
puts "\n注意: 需要重新生成输出产品和综合实现"

close_bd_design [get_bd_designs design_1]
close_project
