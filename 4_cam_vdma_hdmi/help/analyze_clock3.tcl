open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

puts "\n========================================"
puts "Complete Clock Architecture Analysis"
puts "========================================"

# 列出所有时钟相关引脚及其连接
set all_cells [get_bd_cells]
foreach cell $all_cells {
    set clk_pins [get_bd_pins -of_objects [get_bd_cells $cell] -filter {TYPE == clk} -quiet]
    if {[llength $clk_pins] > 0} {
        puts "\n[$cell]:"
        foreach pin $clk_pins {
            set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
            if {$net != ""} {
                puts "  $pin -> $net"
            }
        }
    }
}

puts "\n========================================"
puts "Clock Wizard Output Mapping"
puts "========================================"
set clk_wiz [get_bd_cells clk_wiz_0]
puts "\nClock Wizard outputs:"
set out_pins [get_bd_pins -of_objects [get_bd_cells $clk_wiz]]
foreach pin $out_pins {
    if {[string match "clk_out*" $pin]} {
        set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
        puts "  $pin -> $net"
        if {$net != ""} {
            set connected_pins [get_bd_pins -of_objects [get_bd_nets $net] -quiet]
            foreach cpin $connected_pins {
                set ccell [get_bd_cells -of_objects [get_bd_pins $cpin]]
                if {$ccell != $clk_wiz} {
                    puts "    -> $ccell"
                }
            }
        }
    }
}

# 检查Reset配置
puts "\n========================================"
puts "Reset Configuration"
puts "========================================"
set rst_cells [get_bd_cells -filter {NAME =~ "*rst*" || NAME =~ "*reset*"}]
foreach cell $rst_cells {
    puts "\n[$cell]:"
    set props [list_property [get_bd_cells $cell]]
    foreach prop $props {
        if {[string match "*FREQ*" $prop] || [string match "*CLK*" $prop]} {
            set val [get_property $prop [get_bd_cells $cell]]
            if {$val != ""} {
                puts "  $prop: $val"
            }
        }
    }
}

close_bd_design [get_bd_designs design_1]
close_project
