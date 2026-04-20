# 手动创建的Makefile - 编译cam_vdma_hdmi应用程序

# 工具链路径
TOOLCHAIN = D:/work/vivado_2020_2/Vitis/2020.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin

# 工具链
CC = $(TOOLCHAIN)/arm-none-eabi-gcc.exe
AS = $(TOOLCHAIN)/arm-none-eabi-as.exe
AR = $(TOOLCHAIN)/arm-none-eabi-ar.exe
OBJCOPY = $(TOOLCHAIN)/arm-none-eabi-objcopy.exe
SIZE = $(TOOLCHAIN)/arm-none-eabi-size.exe

# 编译选项
CFLAGS = -Wall -O0 -g3 -c -fmessage-length=0
CFLAGS += -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard
CFLAGS += -nostartfiles

# 包含路径
BSP_PATH = E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper_platform/export/design_1_wrapper_platform/sw/design_1_wrapper_platform/standalone_domain
INCLUDES = -I$(BSP_PATH)/bspinclude/include

# 源文件
SRC_DIR = ../src
SOURCES = $(SRC_DIR)/cam_vdma_hdmi.c $(SRC_DIR)/platform.c

# 目标文件
OBJ_DIR = .
OBJECTS = $(OBJ_DIR)/cam_vdma_hdmi.o $(OBJ_DIR)/platform.o

# 输出文件
TARGET = cam_vdma_hdmi.elf

# 库文件 - 使用--start-group处理循环依赖
LIBS = -L$(BSP_PATH)/bsplib/lib -Wl,--start-group,-lxil,-lgcc,-lc,--end-group

# 链接脚本
LDSCRIPT = $(SRC_DIR)/lscript.ld

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	$(CC) -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=../src/Xilinx.spec -Wl,-T -Wl,$(LDSCRIPT) -o $@ $(OBJECTS) $(LIBS)
	@echo 'Finished building target: $@'
	$(SIZE) $@

$(OBJ_DIR)/cam_vdma_hdmi.o: $(SRC_DIR)/cam_vdma_hdmi.c
	@echo 'Building file: $<'
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $<

$(OBJ_DIR)/platform.o: $(SRC_DIR)/platform.c
	@echo 'Building file: $<'
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $<

clean:
	@echo 'Cleaning...'
	-rm -f $(OBJECTS) $(TARGET)
