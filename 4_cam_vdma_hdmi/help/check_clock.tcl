# 打开Vivado工程
open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr

# 打开Block Design
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

# 获取PS7的时钟配置
puts "\n========================================"
puts "Zynq PS7 Clock Configuration:"
puts "========================================"

set ps7 [get_bd_cells -filter {NAME =~ "*processing_system7*"}]
if {$ps7 != ""} {
    # 获取PS7的配置
    set props [list_property [get_bd_cells $ps7]]
    
    # 打印FCLK时钟配置
    puts "\nFCLK_CLK0: [get_property CONFIG.FCLK_CLK0_FREQ [get_bd_cells $ps7]] MHz"
    puts "FCLK_CLK1: [get_property CONFIG.FCLK_CLK1_FREQ [get_bd_cells $ps7]] MHz"
    puts "FCLK_CLK2: [get_property CONFIG.FCLK_CLK2_FREQ [get_bd_cells $ps7]] MHz"
    puts "FCLK_CLK3: [get_property CONFIG.FCLK_CLK3_FREQ [get_bd_cells $ps7]] MHz"
    
    # 检查哪些时钟已启用
    puts "\nFCLK_CLK0_EN: [get_property CONFIG.FCLK_CLK0_EN [get_bd_cells $ps7]]"
    puts "FCLK_CLK1_EN: [get_property CONFIG.FCLK_CLK1_EN [get_bd_cells $ps7]]"
    puts "FCLK_CLK2_EN: [get_property CONFIG.FCLK_CLK2_EN [get_bd_cells $ps7]]"
    puts "FCLK_CLK3_EN: [get_property CONFIG.FCLK_CLK3_EN [get_bd_cells $ps7]]"
}

# 获取Clock Wizard配置
puts "\n========================================"
puts "Clock Wizard Configuration:"
puts "========================================"

set clk_wiz [get_bd_cells -filter {NAME =~ "*clk_wiz*"}]
if {$clk_wiz != ""} {
    puts "Clock Wizard: $clk_wiz"
    set props [list_property [get_bd_cells $clk_wiz]]
    
    # 检查输入时钟
    puts "\nInput Clock:"
    puts "  PRIM_IN_FREQ: [get_property CONFIG.PRIM_IN_FREQ [get_bd_cells $clk_wiz]] MHz"
    
    # 检查输出时钟数量
    set num_clks [get_property CONFIG.NUM_OUT_CLKS [get_bd_cells $clk_wiz]]
    puts "\nNumber of output clocks: $num_clks"
    
    for {set i 1} {$i <= $num_clks} {incr i} {
        set freq [get_property CONFIG.CLKOUT${i}_REQUESTED_OUT_FREQ [get_bd_cells $clk_wiz]]
        puts "  CLKOUT${i}: ${freq} MHz"
    }
}

# 分析时钟网络连接
puts "\n========================================"
puts "Clock Network Analysis:"
puts "========================================"

# 获取所有时钟相关的连接
set clk_nets [get_bd_nets -filter {NAME =~ "*clk*"}]
foreach net $clk_nets {
    set source [get_bd_intf_pins -of_objects [get_bd_nets $net] -filter {MODE == Master}]
    set sinks [get_bd_intf_pins -of_objects [get_bd_nets $net] -filter {MODE == Slave}]
    if {$source != "" || [llength $sinks] > 0} {
        puts "Net: $net"
        if {$source != ""} {
            puts "  Source: $source"
        }
        foreach sink $sinks {
            puts "  Sink: $sink"
        }
    }
}

# 获取视频相关IP的时钟连接
puts "\n========================================"
puts "Video IP Clock Connections:"
puts "========================================"

set video_ips [list "axi_vdma" "v_tc" "v_axi4s_vid_out" "v_vid_in_axi4s" "HDMI_top"]
foreach ip_type $video_ips {
    set ips [get_bd_cells -filter "NAME =~ *${ip_type}*"]
    foreach ip $ips {
        puts "\n$ip:"
        set clk_pins [get_bd_pins -of_objects [get_bd_cells $ip] -filter {NAME =~ "*clk*" || NAME =~ "*aclk*"}]
        foreach pin $clk_pins {
            set net [get_bd_nets -of_objects [get_bd_pins $pin]]
            puts "  $pin -> $net"
        }
    }
}

puts "\n========================================"
puts "Analysis Complete"
puts "========================================"

# 不保存，只查看
close_bd_design [get_bd_designs design_1]
close_project
