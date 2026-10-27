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
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform clean
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform clean
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_debug1/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_true_gray/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/4_cam_vdma_hdmi_true_gray/4_cam_vdma_hdmi_debug1/4_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_PROJ/my/7_cam_vdma_hdmi_true_gray/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/7_cam_vdma_hdmi_debug1/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform clean
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform clean
platform generate
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform config -updatehw {E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
catch {bsp regenerate}
domain active {standalone_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
