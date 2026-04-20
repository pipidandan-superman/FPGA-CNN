# 修复VTC循环依赖问题
# 问题: VTC的gen_clken连接到v_axi4s_vid_out的vtg_ce形成循环依赖
# 解决: 将gen_clken连接到常量1,让VTC持续生成时序

set project_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
set bd_path E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd

puts "========================================"
puts "修复VTC循环依赖问题"
puts "========================================"

# 打开工程
puts "\n[1/7] 打开工程..."
open_project $project_path

# 打开Block Design
puts "\n[2/7] 打开Block Design..."
open_bd_design $bd_path

# 查找现有连接
puts "\n[3/7] 查找现有连接..."
set existing_net [get_bd_nets -quiet v_axi4s_vid_out_0_vtg_ce]
if {$existing_net ne ""} {
    puts "  找到现有连接: $existing_net"
    puts "  连接的引脚:"
    foreach pin [get_bd_pins -of_objects $existing_net] {
        puts "    - $pin"
    }
} else {
    puts "  未找到现有连接"
}

# 创建常量1
puts "\n[4/7] 创建常量1..."
set const_1 [get_bd_cells -quiet const_1_for_vtc]
if {$const_1 eq ""} {
    puts "  创建新的常量IP..."
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_1_for_vtc
    set_property -name CONFIG.CONST_VAL -value 1 -objects [get_bd_cells const_1_for_vtc]
    puts "  常量IP已创建: const_1_for_vtc"
} else {
    puts "  常量IP已存在: $const_1"
}

# 断开现有连接
puts "\n[5/7] 断开现有连接..."
if {$existing_net ne ""} {
    # 删除整个net
    delete_bd_objs $existing_net
    puts "  已删除连接: v_axi4s_vid_out_0_vtg_ce"
}

# 创建新连接
puts "\n[6/7] 创建新连接..."
# 连接常量1到VTC的gen_clken
connect_bd_net [get_bd_pins const_1_for_vtc/dout] [get_bd_pins v_tc_0/gen_clken]
puts "  已连接: const_1_for_vtc/dout -> v_tc_0/gen_clken"

# v_axi4s_vid_out的vtg_ce保持未连接状态(这是正常的)

# 验证设计
puts "\n[7/7] 验证设计..."
validate_bd_design
puts "  设计验证通过!"

# 保存
puts "\n保存设计..."
save_bd_design
puts "设计已保存!"

puts "\n========================================"
puts "修复完成!"
puts "========================================"
puts "\n后续步骤:"
puts "1. 重新生成Block Design输出产品"
puts "2. 重新综合"
puts "3. 重新实现"
puts "4. 生成Bitstream"
puts "5. 导出XSA"
puts "6. 重新编译Vitis程序"
puts "\n运行以下命令继续:"
puts "  source E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/rebuild_after_fix.tcl"
