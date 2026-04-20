/******************************************************************************
 * OV5640摄像头采集到HDMI显示程序
 *
 * 功能: 配置VDMA双通道实现摄像头数据采集到HDMI显示
 * 分辨率: 640 x 480
 *
 * 日期: 2026/04/19
 * 工程: 4_cam_vdma_hdmi
 ******************************************************************************/

#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xstatus.h"

/************************** 恒定定义 **************************/

// 分辨率配置 - 与OV5640输出匹配
#define H_ACTIVE            640     // 水平有效像素
#define V_ACTIVE            480     // 垂直有效行数
#define STRIDE              (H_ACTIVE * 4)  // AXI总线4字节对齐, 每行字节数

// 帧缓冲地址 (三缓冲)
#define FRAME_BUFFER_BASE   0x10000000
#define FRAME_BUFFER_1      (FRAME_BUFFER_BASE)
#define FRAME_BUFFER_2      (FRAME_BUFFER_BASE + 0x00200000)  // 2MB偏移
#define FRAME_BUFFER_3      (FRAME_BUFFER_BASE + 0x00400000)  // 4MB偏移

/************************** VDMA寄存器定义 **************************/

#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR

// MM2S通道寄存器 (读通道: DDR -> HDMI)
#define MM2S_VDMACR         0x00    // 控制寄存器
#define MM2S_VDMASR         0x04    // 状态寄存器
#define MM2S_VDMA_IRQ_MASK  0x08    // 中断掩码
#define MM2S_START_ADDR_1   0x5C    // 起始地址寄存器1
#define MM2S_START_ADDR_2   0x60    // 起始地址寄存器2
#define MM2S_START_ADDR_3   0x64    // 起始地址寄存器3
#define MM2S_FRMDLY_STRIDE  0x58    // 帧延迟和跨步
#define MM2S_HSIZE          0x54    // 水平尺寸
#define MM2S_VSIZE          0x50    // 垂直尺寸

// S2MM通道寄存器 (写通道: 摄像头 -> DDR)
#define S2MM_VDMACR         0x30    // 控制寄存器
#define S2MM_VDMASR         0x34    // 状态寄存器
#define S2MM_VDMA_IRQ_MASK  0x3C    // 中断掩码
#define S2MM_START_ADDR_1   0xAC    // 起始地址寄存器1
#define S2MM_START_ADDR_2   0xB0    // 起始地址寄存器2
#define S2MM_START_ADDR_3   0xB4    // 起始地址寄存器3
#define S2MM_FRMDLY_STRIDE  0xA8    // 帧延迟和跨步
#define S2MM_HSIZE          0xA4    // 水平尺寸
#define S2MM_VSIZE          0xA0    // 垂直尺寸

// 控制寄存器位定义
#define VDMACR_RS           0x00000001  // Run/Stop
#define VDMACR_CIRCULAR     0x00000002  // 循环模式
#define VDMACR_RESET        0x00000004  // 复位
#define VDMACR_FRMCNT_EN    0x00000010  // 帧计数使能

// 状态寄存器位定义
#define VDMASR_HALTED       0x00000001  // 停止状态
#define VDMASR_DMAINTERR    0x00000010  // DMA内部错误
#define VDMASR_SLVERR       0x00000020  // 从机错误
#define VDMASR_DECERR       0x00000040  // 解码错误
#define VDMASR_SOFINTERR    0x00000080  // SOF内部错误
#define VDMASR_EOFINTERR    0x00000100  // EOF内部错误
#define VDMASR_SGINTERR     0x00000200  // SG内部错误
#define VDMASR_FRMCNT_SHIFT 16          // 帧计数偏移

/************************** 函数声明 **************************/

void VDMA_Reset(void);
void VDMA_Configure_S2MM(void);
void VDMA_Configure_MM2S(void);
void VDMA_PrintStatus(void);
u32 VDMA_GetFrameCount(u32 channel);

/************************** 主函数 **************************/

int main()
{
    printf("\n");
    printf("========================================\n");
    printf("OV5640 Camera to HDMI Display System\n");
    printf("Resolution: %d x %d\n", H_ACTIVE, V_ACTIVE);
    printf("Clock: FCLK_CLK0 = 150 MHz\n");
    printf("========================================\n\n");

    // Step 1: 复位VDMA
    printf("Step 1: Resetting VDMA...\n");
    VDMA_Reset();
    printf("VDMA reset complete.\n\n");

    // Step 2: 配置S2MM通道 (摄像头 -> DDR)
    printf("Step 2: Configuring S2MM channel (Camera -> DDR)...\n");
    VDMA_Configure_S2MM();
    printf("S2MM configured.\n\n");

    // Step 3: 配置MM2S通道 (DDR -> HDMI)
    printf("Step 3: Configuring MM2S channel (DDR -> HDMI)...\n");
    VDMA_Configure_MM2S();
    printf("MM2S configured.\n\n");

    // Step 4: 打印状态
    printf("Step 4: VDMA Status:\n");
    VDMA_PrintStatus();

    printf("\n========================================\n");
    printf("System Running!\n");
    printf("Camera should be outputting video.\n");
    printf("Check HDMI output for display.\n");
    printf("========================================\n\n");

    // 主循环 - 监控状态
    while(1)
    {
        // 可以添加帧率监控或其他处理
        // 例如: 检测帧计数变化
        static u32 last_frame = 0;
        u32 current_frame = VDMA_GetFrameCount(0);  // 0=S2MM, 1=MM2S

        if (current_frame != last_frame)
        {
            // 每秒打印一次帧计数
            // printf("Frame: %d\n", current_frame);
            last_frame = current_frame;
        }
    }

    return XST_SUCCESS;
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

    // 等待复位完成
    for(volatile int i = 0; i < 1000; i++);
}

/************************** S2MM通道配置 (摄像头->DDR) **************************/

void VDMA_Configure_S2MM(void)
{
    // 1. 启用VDMA控制器
    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, VDMACR_RS);

    // 2. 设置帧缓冲地址 (三缓冲)
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_1, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_2, FRAME_BUFFER_2);
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR_3, FRAME_BUFFER_3);

    // 3. 设置帧延迟和跨步
    // FRMDLY: 帧延迟 (0=无延迟)
    // STRIDE: 每行字节数
    Xil_Out32(VDMA_BASEADDR + S2MM_FRMDLY_STRIDE, STRIDE);

    // 4. 设置水平尺寸 (每行字节数)
    Xil_Out32(VDMA_BASEADDR + S2MM_HSIZE, STRIDE);

    // 5. 设置垂直尺寸 (行数) - 最后写入启动传输
    Xil_Out32(VDMA_BASEADDR + S2MM_VSIZE, V_ACTIVE);
}

/************************** MM2S通道配置 (DDR->HDMI) **************************/

void VDMA_Configure_MM2S(void)
{
    // 1. 启用VDMA控制器
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, VDMACR_RS);

    // 2. 设置帧缓冲地址 (与S2MM使用相同的缓冲区)
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_1, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_2, FRAME_BUFFER_2);
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR_3, FRAME_BUFFER_3);

    // 3. 设置帧延迟和跨步
    Xil_Out32(VDMA_BASEADDR + MM2S_FRMDLY_STRIDE, STRIDE);

    // 4. 设置水平尺寸
    Xil_Out32(VDMA_BASEADDR + MM2S_HSIZE, STRIDE);

    // 5. 设置垂直尺寸 - 最后写入启动传输
    Xil_Out32(VDMA_BASEADDR + MM2S_VSIZE, V_ACTIVE);
}

/************************** 打印VDMA状态 **************************/

void VDMA_PrintStatus(void)
{
    printf("\n--- S2MM Channel (Camera -> DDR) ---\n");
    printf("  VDMACR:     0x%08X\n", Xil_In32(VDMA_BASEADDR + S2MM_VDMACR));
    printf("  VDMASR:     0x%08X\n", Xil_In32(VDMA_BASEADDR + S2MM_VDMASR));
    printf("  START_ADDR: 0x%08X\n", Xil_In32(VDMA_BASEADDR + S2MM_START_ADDR_1));
    printf("  STRIDE:     0x%08X (%d bytes)\n",
           Xil_In32(VDMA_BASEADDR + S2MM_FRMDLY_STRIDE),
           Xil_In32(VDMA_BASEADDR + S2MM_FRMDLY_STRIDE));
    printf("  HSIZE:      0x%08X (%d bytes)\n",
           Xil_In32(VDMA_BASEADDR + S2MM_HSIZE),
           Xil_In32(VDMA_BASEADDR + S2MM_HSIZE));
    printf("  VSIZE:      0x%08X (%d lines)\n",
           Xil_In32(VDMA_BASEADDR + S2MM_VSIZE),
           Xil_In32(VDMA_BASEADDR + S2MM_VSIZE));

    printf("\n--- MM2S Channel (DDR -> HDMI) ---\n");
    printf("  VDMACR:     0x%08X\n", Xil_In32(VDMA_BASEADDR + MM2S_VDMACR));
    printf("  VDMASR:     0x%08X\n", Xil_In32(VDMA_BASEADDR + MM2S_VDMASR));
    printf("  START_ADDR: 0x%08X\n", Xil_In32(VDMA_BASEADDR + MM2S_START_ADDR_1));
    printf("  STRIDE:     0x%08X (%d bytes)\n",
           Xil_In32(VDMA_BASEADDR + MM2S_FRMDLY_STRIDE),
           Xil_In32(VDMA_BASEADDR + MM2S_FRMDLY_STRIDE));
    printf("  HSIZE:      0x%08X (%d bytes)\n",
           Xil_In32(VDMA_BASEADDR + MM2S_HSIZE),
           Xil_In32(VDMA_BASEADDR + MM2S_HSIZE));
    printf("  VSIZE:      0x%08X (%d lines)\n",
           Xil_In32(VDMA_BASEADDR + MM2S_VSIZE),
           Xil_In32(VDMA_BASEADDR + MM2S_VSIZE));

    // 检查错误标志
    u32 s2mm_sr = Xil_In32(VDMA_BASEADDR + S2MM_VDMASR);
    u32 mm2s_sr = Xil_In32(VDMA_BASEADDR + MM2S_VDMASR);

    printf("\n--- Error Status ---\n");
    if (s2mm_sr & VDMASR_DMAINTERR) printf("  S2MM DMA Internal Error!\n");
    if (s2mm_sr & VDMASR_SLVERR)    printf("  S2MM Slave Error!\n");
    if (s2mm_sr & VDMASR_DECERR)    printf("  S2MM Decode Error!\n");
    if (mm2s_sr & VDMASR_DMAINTERR) printf("  MM2S DMA Internal Error!\n");
    if (mm2s_sr & VDMASR_SLVERR)    printf("  MM2S Slave Error!\n");
    if (mm2s_sr & VDMASR_DECERR)    printf("  MM2S Decode Error!\n");
    if (!(s2mm_sr & (VDMASR_DMAINTERR | VDMASR_SLVERR | VDMASR_DECERR)) &&
        !(mm2s_sr & (VDMASR_DMAINTERR | VDMASR_SLVERR | VDMASR_DECERR)))
    {
        printf("  No errors detected.\n");
    }
}

/************************** 获取帧计数 **************************/

u32 VDMA_GetFrameCount(u32 channel)
{
    u32 status;

    if (channel == 0)  // S2MM
    {
        status = Xil_In32(VDMA_BASEADDR + S2MM_VDMASR);
    }
    else  // MM2S
    {
        status = Xil_In32(VDMA_BASEADDR + MM2S_VDMASR);
    }

    return (status >> VDMASR_FRMCNT_SHIFT) & 0xFF;
}
