open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

puts "\n========================================"
puts "Clock Wizard Output Mapping"
puts "========================================"

set clk_wiz [get_bd_cells clk_wiz_0]
puts "\nClock Wizard: $clk_wiz"

# 获取所有输出引脚
set out_pins [get_bd_pins -of_objects [get_bd_cells $clk_wiz] -quiet]
foreach pin $out_pins {
    set pin_name [lindex [split $pin "/"] end]
    if {[string match "clk_out*" $pin_name] || [string match "locked" $pin_name]} {
        set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
        puts "\n  $pin_name -> net: $net"
        if {$net != ""} {
            set connected_pins [get_bd_pins -of_objects [get_bd_nets $net] -quiet]
            foreach cpin $connected_pins {
                set ccell [get_bd_cells -of_objects [get_bd_pins $cpin]]
                set cpin_name [lindex [split $cpin "/"] end]
                if {$ccell != $clk_wiz} {
                    puts "    -> [lindex [split $ccell "/"] end] / $cpin_name"
                }
            }
        }
    }
}

# VDMA时钟详细分析
puts "\n========================================"
puts "VDMA Clock Domains"
puts "========================================"

set vdma [get_bd_cells axi_vdma_0]
set vdma_pins [get_bd_pins -of_objects [get_bd_cells $vdma] -filter {TYPE == clk} -quiet]
foreach pin $vdma_pins {
    set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
    set pin_name [lindex [split $pin "/"] end]
    puts "  $pin_name -> $net"
}

# 视频IP时钟域分析
puts "\n========================================"
puts "Video Pipeline Clock Domains"
puts "========================================"

set video_ips {v_tc_0 v_axi4s_vid_out_0 v_vid_in_axi4s_0 HDMI_top_0 cam_captrue_data_0}
foreach vip $video_ips {
    set cell [get_bd_cells $vip -quiet]
    if {$cell != ""} {
        puts "\n$vip:"
        set clk_pins [get_bd_pins -of_objects [get_bd_cells $cell] -quiet]
        foreach pin $clk_pins {
            set pin_name [lindex [split $pin "/"] end]
            if {[string match "*clk*" $pin_name]} {
                set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
                puts "  $pin_name -> $net"
            }
        }
    }
}

close_bd_design [get_bd_designs design_1]
close_project
