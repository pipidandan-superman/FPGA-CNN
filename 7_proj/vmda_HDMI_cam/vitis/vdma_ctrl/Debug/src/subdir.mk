################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/cam_vdma_hdmi.c \
../src/debug_frame_capture.c \
../src/gemm_accel.c 

OBJS += \
./src/cam_vdma_hdmi.o \
./src/debug_frame_capture.o \
./src/gemm_accel.o 

C_DEPS += \
./src/cam_vdma_hdmi.d \
./src/debug_frame_capture.d \
./src/gemm_accel.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IE:/FPGA_Project/2020_2/cnn_PS_PL_ACC_final/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vitis/design_1_wrapper/export/design_1_wrapper/sw/design_1_wrapper/standalone_ps7_cortexa9_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


