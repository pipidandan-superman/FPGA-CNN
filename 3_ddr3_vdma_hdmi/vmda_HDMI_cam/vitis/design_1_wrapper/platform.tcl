# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\FPGA_Project\2020_2\CNN\proj\vmda_test\vitis\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\FPGA_Project\2020_2\CNN\proj\vmda_test\vitis\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {E:\FPGA_Project\2020_2\CNN\proj\vmda_test\vitis\design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/vmda_test/vitis/design_1_wrapper.xsa}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/3_ddr3_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
