/******************************************************************************
 * OV5640摄像头手写数字识别系统
 *
 * 功能:
 *   1. VDMA双通道实现摄像头采集到HDMI显示
 *   2. PL侧预处理: 灰度化、二值化、下采样到28x28
 *   3. PS侧CNN推理: 识别手写数字
 *   4. 结果显示: 通过AXI_LITE控制ROM显示识别结果
 *
 * 分辨率: 640 x 480
 * 日期: 2026/05/04
 ******************************************************************************/

#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xscugic.h"
#include "xil_exception.h"

#include "cnn_inference.h"

/************************** 恒定定义 **************************/

// 分辨率配置
#define H_ACTIVE            640
#define V_ACTIVE            480
#define STRIDE              (H_ACTIVE * 4)

// 帧缓冲地址 (三缓冲)
#define FRAME_BUFFER_BASE   0x10000000
#define FRAME_BUFFER_1      (FRAME_BUFFER_BASE)
#define FRAME_BUFFER_2      (FRAME_BUFFER_BASE + 0x00200000)
#define FRAME_BUFFER_3      (FRAME_BUFFER_BASE + 0x00400000)

// BRAM控制器地址 - 存储PL预处理后的28x28二值图像
#define BRAM_BASEADDR       0x40000000
#define BRAM_DATA_SIZE      784     // 28*28

// AXI Lite IP基地址 - 控制数字显示
#define AXI_LITE_BASEADDR   0x43C00000

// 中断相关
#define INTC_DEVICE_ID      XPAR_PS7_SCUGIC_0_DEVICE_ID
#define PL_INTR_ID          61      // XPAR_FABRIC_RAM_CTRL_0_PS_INTR_INTR

/************************** VDMA寄存器定义 **************************/

#define VDMA_BASEADDR       0x43000000

// MM2S通道 (DDR -> HDMI)
#define MM2S_VDMACR         0x00
#define MM2S_VDMASR         0x04
#define MM2S_START_ADDR_1   0x5C
#define MM2S_START_ADDR_2   0x60
#define MM2S_START_ADDR_3   0x64
#define MM2S_FRMDLY_STRIDE  0x58
#define MM2S_HSIZE          0x54
#define MM2S_VSIZE          0x50

// S2MM通道 (摄像头 -> DDR)
#define S2MM_VDMACR         0x30
#define S2MM_VDMASR         0x34
#define S2MM_START_ADDR_1   0xAC
#define S2MM_START_ADDR_2   0xB0
#define S2MM_START_ADDR_3   0xB4
#define S2MM_FRMDLY_STRIDE  0xA8
#define S2MM_HSIZE          0xA4
#define S2MM_VSIZE          0xA0

// 控制寄存器位定义
#define VDMACR_RS           0x00000001
#define VDMACR_RESET        0x00000004

// 状态寄存器
#define VDMASR_FRMCNT_SHIFT 16

/************************** 全局变量 **************************/

static XScuGic Intc;                    // 中断控制器
static volatile int frame_ready = 0;    // 帧就绪标志
static u8 input_image[784];             // 输入图像缓冲

/************************** 函数声明 **************************/

void VDMA_Reset(void);
void VDMA_Configure_S2MM(void);
void VDMA_Configure_MM2S(void);
u32 VDMA_GetFrameCount(u32 channel);

int Interrupt_Init(void);
void PL_Intr_Handler(void *CallbackRef);

void Read_BRAM_Image(u8 *buffer);
void Print_Image(const u8 *image);

/************************** 主函数 **************************/

int main()
{
    printf("\n");
    printf("========================================\n");
    printf("Handwritten Digit Recognition System\n");
    printf("OV5640 Camera -> CNN -> HDMI Display\n");
    printf("Resolution: %d x %d\n", H_ACTIVE, V_ACTIVE);
    printf("========================================\n\n");

    // Step 1: 初始化中断控制器
    printf("Step 1: Initializing interrupt controller...\n");
    if (Interrupt_Init() != XST_SUCCESS) {
        printf("ERROR: Interrupt init failed!\n");
        return XST_FAILURE;
    }
    printf("Interrupt controller initialized.\n\n");

    // Step 2: 复位并配置VDMA
    printf("Step 2: Configuring VDMA...\n");
    VDMA_Reset();
    VDMA_Configure_S2MM();
    VDMA_Configure_MM2S();
    printf("VDMA configured.\n\n");

    // Step 3: 初始化AXI_LITE显示0
    printf("Step 3: Initializing display...\n");
    Xil_Out32(AXI_LITE_BASEADDR, 0);
    printf("Display initialized (showing 0).\n\n");

    printf("========================================\n");
    printf("System Running!\n");
    printf("Write digit in the recognition area.\n");
    printf("========================================\n\n");

    // 主循环
    int last_result = -1;
    u32 last_frame = 0;
    int inference_count = 0;

    while(1)
    {
        // 检查帧就绪标志
        if (frame_ready)
        {
            frame_ready = 0;

            // 从BRAM读取图像
            Read_BRAM_Image(input_image);

            // 执行CNN推理
            int result = cnn_forward(input_image);
            inference_count++;

            // 更新显示
            Xil_Out32(AXI_LITE_BASEADDR, result);

            // 打印结果
            printf("[%d] Recognized: %d", inference_count, result);

            if (result != last_result) {
                printf(" (changed from %d)", last_result);
            }
            printf("\n");

            last_result = result;
        }

        // 简单延时
        for(volatile int i = 0; i < 100000; i++);
    }

    return XST_SUCCESS;
}

/************************** 中断处理函数 **************************/

void PL_Intr_Handler(void *CallbackRef)
{
    // 设置帧就绪标志
    frame_ready = 1;
}

/************************** 中断初始化 **************************/

int Interrupt_Init(void)
{
    XScuGic_Config *IntcConfig;
    int status;

    // 查找中断控制器配置
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (IntcConfig == NULL) {
        return XST_FAILURE;
    }

    // 初始化中断控制器
    status = XScuGic_CfgInitialize(&Intc, IntcConfig, IntcConfig->CpuBaseAddress);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // 设置中断优先级和触发类型
    XScuGic_SetPriorityTriggerType(&Intc, PL_INTR_ID, 0xA0, 0x1);

    // 注册中断处理函数
    status = XScuGic_Connect(&Intc, PL_INTR_ID,
                             (Xil_ExceptionHandler)PL_Intr_Handler,
                             &Intc);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // 使能中断
    XScuGic_Enable(&Intc, PL_INTR_ID);

    // 使能异常处理
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &Intc);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

/************************** 从BRAM读取图像 **************************/

void Read_BRAM_Image(u8 *buffer)
{
    // BRAM存储格式: 每个地址存储32位，低1位为二值像素
    // 地址范围: 0 ~ 783*4 = 3132
    // 由于PL侧每个32位只存1个像素，需要逐个读取

    for (int i = 0; i < BRAM_DATA_SIZE; i++) {
        u32 data = Xil_In32(BRAM_BASEADDR + i * 4);
        buffer[i] = (u8)(data & 0x01);
    }
}

/************************** 打印图像（调试用） **************************/

void Print_Image(const u8 *image)
{
    printf("\n");
    for (int y = 0; y < 28; y++) {
        for (int x = 0; x < 28; x++) {
            printf("%c", image[y * 28 + x] ? '#' : '.');
        }
        printf("\n");
    }
}

/************************** VDMA复位函数 **************************/

void VDMA_Reset(void)
{
    // 复位MM2S通道
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, VDMACR_RESET);
    while((Xil_In32(VDMA_BASEADDR + MM2S_VDMACR) & VDMACR_RESET) == VDMACR_RESET);

    // 复位S2MM通道
    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, VDMACR_RESET);
    while((Xil_In32(VDMA_BASEADDR + S2MM_VDMACR) & VDMACR_RESET) == VDMACR_RESET);

    for(volatile int i = 0; i < 1000; i++);
}

/************************** S2MM通道配置 (摄像头->DDR) **************************/

void VDMA_Configure_S2MM(void)
{
    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, VDMACR_RS);
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_1, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_2, FRAME_BUFFER_2);
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_3, FRAME_BUFFER_3);
    Xil_Out32(VDMA_BASEADDR + S2MM_FRMDLY_STRIDE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + S2MM_HSIZE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + S2MM_VSIZE, V_ACTIVE);
}

/************************** MM2S通道配置 (DDR->HDMI) **************************/

void VDMA_Configure_MM2S(void)
{
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, VDMACR_RS);
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_1, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_2, FRAME_BUFFER_2);
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_3, FRAME_BUFFER_3);
    Xil_Out32(VDMA_BASEADDR + MM2S_FRMDLY_STRIDE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + MM2S_HSIZE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + MM2S_VSIZE, V_ACTIVE);
}

/************************** 获取帧计数 **************************/

u32 VDMA_GetFrameCount(u32 channel)
{
    u32 status;

    if (channel == 0) {
        status = Xil_In32(VDMA_BASEADDR + S2MM_VDMASR);
    } else {
        status = Xil_In32(VDMA_BASEADDR + MM2S_VDMASR);
    }

    return (status >> VDMASR_FRMCNT_SHIFT) & 0xFF;
}
