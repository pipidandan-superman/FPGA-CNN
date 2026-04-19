# 更详细的时钟分析
open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

puts "\n========================================"
puts "Zynq PS7 Detailed Clock Configuration:"
puts "========================================"

set ps7 [get_bd_cells processing_system7_0]

# 列出所有时钟相关属性
puts "\n--- PS7 Clock Properties ---"
set props [list_property [get_bd_cells $ps7]]
foreach prop $props {
    if {[string match "*CLK*" $prop] || [string match "*clk*" $prop]} {
        set val [get_property $prop [get_bd_cells $ps7]]
        if {$val != ""} {
            puts "  $prop: $val"
        }
    }
}

# 检查preset
puts "\n--- PS7 Preset ---"
puts "  PRESET: [get_property CONFIG.preset [get_bd_cells $ps7]]"

# Clock Wizard详细配置
puts "\n========================================"
puts "Clock Wizard Detailed Configuration:"
puts "========================================"

set clk_wiz [get_bd_cells clk_wiz_0]
puts "\nInput:"
puts "  PRIM_IN_FREQ: [get_property CONFIG.PRIM_IN_FREQ [get_bd_cells $clk_wiz]] MHz"
puts "  PRIM_SOURCE: [get_property CONFIG.PRIM_SOURCE [get_bd_cells $clk_wiz]]"

puts "\nOutput Clocks:"
for {set i 1} {$i <= 4} {incr i} {
    set freq [get_property CONFIG.CLKOUT${i}_REQUESTED_OUT_FREQ [get_bd_cells $clk_wiz]]
    set used [get_property CONFIG.CLKOUT${i}_USED [get_bd_cells $clk_wiz]]
    set drva [get_property CONFIG.CLKOUT${i}_DRIVES [get_bd_cells $clk_wiz]]
    puts "  CLKOUT${i}: ${freq} MHz, Used=${used}"
}

# 检查实际的时钟网络
puts "\n========================================"
puts "Actual Clock Net Names and Frequencies:"
puts "========================================"

set nets [get_bd_nets]
foreach net $nets {
    if {[string match "*clk*" [string tolower $net]] && ![string match "*aclken*" $net]} {
        puts "\nNet: $net"
        set pins [get_bd_pins -of_objects [get_bd_nets $net]]
        foreach pin $pins {
            set cell [get_bd_cells -of_objects [get_bd_pins $pin]]
            puts "  -> $cell/$pin"
        }
    }
}

# 检查OV5640相关的时钟配置
puts "\n========================================"
puts "OV5640 Camera Clock Configuration:"
puts "========================================"

set ov5640_cfg [get_bd_cells ov5640_cfg_top_0]
set cam_cap [get_bd_cells cam_captrue_data_0]

puts "\nov5640_cfg_top_0 pins:"
set pins [get_bd_pins -of_objects [get_bd_cells $ov5640_cfg]]
foreach pin $pins {
    if {[string match "*clk*" [string tolower $pin]]} {
        set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
        puts "  $pin -> $net"
    }
}

puts "\ncam_captrue_data_0 pins:"
set pins [get_bd_pins -of_objects [get_bd_cells $cam_cap]]
foreach pin $pins {
    if {[string match "*clk*" [string tolower $pin]]} {
        set net [get_bd_nets -of_objects [get_bd_pins $pin] -quiet]
        puts "  $pin -> $net"
    }
}

close_bd_design [get_bd_designs design_1]
close_project
