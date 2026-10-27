#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper/export/design_1_wrapper/design_1_wrapper.xpfm
SYS_CONFIG = design_1_wrapper
DOMAINS = standalone_ps7_cortexa9_0
BIF_PATH = E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/vdma_ctrl_system/Debug/system.bif

BITSTREAM_PATH = E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf E:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/Debug/vdma_ctrl.elf,ps7_cortexa9_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 58424 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


