/******************************************************************************
* OV5640摄像头 + HDMI显示系统
* 功能：配置VDMA和VTC，实现摄像头数据到HDMI显示的实时传输
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"

#include "xaxivdma.h"
#include "xvtc.h"
#include "xscugic.h"

/************************** 宏定义 *******************************/

/* 视频参数定义 */
#define VIDEO_HSIZE         640             /* 水平分辨率 */
#define VIDEO_VSIZE         480             /* 垂直分辨率 */
#define VIDEO_STRIDE        (VIDEO_HSIZE * 3) /* 行跨度 (RGB888: 3字节/像素) */

/* DDR帧缓冲区地址 */
#define DDR_BASE_ADDR       XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define FRAME_BUFFER_ADDR   (DDR_BASE_ADDR + 0x1000000)  /* 帧缓冲区起始地址 */

/* VDMA参数 */
#define VDMA_DEVICE_ID      XPAR_AXI_VDMA_0_DEVICE_ID
#define VDMA_NUM_FRAMES     3               /* 三缓冲 */

/* VTC参数 */
#define VTC_DEVICE_ID       XPAR_VTC_0_DEVICE_ID

/* 中断控制器 */
#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID

/* FPGA中断ID (VDMA中断通过FPGA PL端路由到PS) */
#define VDMA_S2MM_INTR_ID   61U    /* FPGA0中断 - VDMA写通道 */
#define VDMA_MM2S_INTR_ID   62U    /* FPGA1中断 - VDMA读通道 */

/************************** 全局变量 *******************************/

XAxiVdma    VdmaInstance;           /* VDMA实例 */
XVtc        VtcInstance;            /* VTC实例 */
XScuGic     IntcInstance;           /* 中断控制器实例 */

/* VDMA配置结构体 */
XAxiVdma_DmaSetup WriteCfg;         /* S2MM (写) 通道配置 */
XAxiVdma_DmaSetup ReadCfg;          /* MM2S (读) 通道配置 */

/* 帧计数器 */
volatile u32 FrameCount = 0;

/************************** 函数声明 *******************************/

int Vdma_Init(void);
int Vtc_Init(void);
int Vdma_StartTransfer(void);
int SetupInterrupts(void);
static void WriteCallBack(void *CallbackRef, u32 Mask);
static void ReadCallBack(void *CallbackRef, u32 Mask);
static void WriteErrorCallBack(void *CallbackRef, u32 Mask);
static void ReadErrorCallBack(void *CallbackRef, u32 Mask);

/************************** 主函数 *******************************/

int main(void)
{
    int Status;

    xil_printf("\r\n");
    xil_printf("========================================\r\n");
    xil_printf("  OV5640 HDMI Display System\r\n");
    xil_printf("  Resolution: %d x %d\r\n", VIDEO_HSIZE, VIDEO_VSIZE);
    xil_printf("========================================\r\n");

    /* 初始化VTC (视频时序控制器) */
    xil_printf("Initializing VTC...\r\n");
    Status = Vtc_Init();
    if (Status != XST_SUCCESS) {
        xil_printf("VTC initialization failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("VTC initialized successfully.\r\n");

    /* 初始化VDMA */
    xil_printf("Initializing VDMA...\r\n");
    Status = Vdma_Init();
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA initialization failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("VDMA initialized successfully.\r\n");

    /* 设置中断 */
    xil_printf("Setting up interrupts...\r\n");
    Status = SetupInterrupts();
    if (Status != XST_SUCCESS) {
        xil_printf("Interrupt setup failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("Interrupts configured.\r\n");

    /* 启动VDMA传输 */
    xil_printf("Starting VDMA transfer...\r\n");
    Status = Vdma_StartTransfer();
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA start failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("VDMA transfer started.\r\n");

    xil_printf("\r\n");
    xil_printf("System running!\r\n");
    xil_printf("Camera data will be displayed on HDMI monitor.\r\n");
    xil_printf("\r\n");

    /* 主循环 */
    while (1) {
        sleep(1);
        /* 可以在这里添加帧计数打印或其他处理 */
    }

    return XST_SUCCESS;
}

/************************** VTC初始化 *******************************/

int Vtc_Init(void)
{
    int Status;
    XVtc_Config *VtcConfig;
    XVtc_Timing Timing;

    /* 查找VTC配置 */
    VtcConfig = XVtc_LookupConfig(VTC_DEVICE_ID);
    if (NULL == VtcConfig) {
        xil_printf("VTC lookup config failed!\r\n");
        return XST_FAILURE;
    }

    /* 初始化VTC */
    Status = XVtc_CfgInitialize(&VtcInstance, VtcConfig, VtcConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("VTC configuration initialize failed!\r\n");
        return XST_FAILURE;
    }

    /* 配置视频时序 - 640x480 @ 60Hz */
    /* 参考: VESA标准 */
    XVtc_DisableGenerator(&VtcInstance);
    XVtc_DisableDetector(&VtcInstance);

    /* 设置时序参数 */
    Timing.HActiveVideo = VIDEO_HSIZE;          /* 水平有效像素 */
    Timing.HFrontPorch = 16;                     /* 水平前肩 */
    Timing.HSyncWidth = 96;                      /* 水平同步脉宽 */
    Timing.HBackPorch = 48;                      /* 水平后肩 */
    Timing.HSyncPolarity = 0;                    /* 水平同步极性 (0: 低有效) */
    Timing.VActiveVideo = VIDEO_VSIZE;          /* 垂直有效行数 */
    Timing.V0FrontPorch = 10;                    /* 垂直前肩 */
    Timing.V0SyncWidth = 2;                      /* 垂直同步脉宽 */
    Timing.V0BackPorch = 33;                     /* 垂直后肩 */
    Timing.V1FrontPorch = 10;
    Timing.V1SyncWidth = 2;
    Timing.V1BackPorch = 33;
    Timing.VSyncPolarity = 0;                    /* 垂直同步极性 (0: 低有效) */
    Timing.Interlaced = 0;                       /* 非隔行扫描 */

    XVtc_SetGeneratorTiming(&VtcInstance, &Timing);

    /* 使能VTC生成器 */
    XVtc_EnableGenerator(&VtcInstance);
    XVtc_RegUpdateEnable(&VtcInstance);

    return XST_SUCCESS;
}

/************************** VDMA初始化 *******************************/

int Vdma_Init(void)
{
    int Status;
    int Index;
    u32 Addr;
    XAxiVdma_Config *VdmaConfig;

    /* 查找VDMA配置 */
    VdmaConfig = XAxiVdma_LookupConfig(VDMA_DEVICE_ID);
    if (NULL == VdmaConfig) {
        xil_printf("VDMA lookup config failed!\r\n");
        return XST_FAILURE;
    }

    /* 初始化VDMA */
    Status = XAxiVdma_CfgInitialize(&VdmaInstance, VdmaConfig, VdmaConfig->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA configuration initialize failed!\r\n");
        return XST_FAILURE;
    }

    /* 清除帧缓冲区 */
    memset((void *)FRAME_BUFFER_ADDR, 0, VIDEO_STRIDE * VIDEO_VSIZE * VDMA_NUM_FRAMES);

    /* ==================== 配置S2MM (写) 通道 ==================== */
    /* 摄像头 -> DDR */

    WriteCfg.VertSizeInput = VIDEO_VSIZE;
    WriteCfg.HoriSizeInput = VIDEO_STRIDE;      /* 640 * 3 = 1920 bytes */
    WriteCfg.Stride = VIDEO_STRIDE;
    WriteCfg.FrameDelay = 0;
    WriteCfg.EnableCircularBuf = 1;             /* 使能循环缓冲 */
    WriteCfg.EnableSync = 1;                    /* 使能同步(Gen-Lock) */
    WriteCfg.PointNum = 0;
    WriteCfg.EnableFrameCounter = 0;
    WriteCfg.FixedFrameStoreAddr = 0;

    Status = XAxiVdma_DmaConfig(&VdmaInstance, XAXIVDMA_WRITE, &WriteCfg);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Write channel config failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* 设置帧缓冲区地址 */
    Addr = FRAME_BUFFER_ADDR;
    for (Index = 0; Index < VDMA_NUM_FRAMES; Index++) {
        WriteCfg.FrameStoreStartAddr[Index] = Addr;
        Addr += (VIDEO_STRIDE * VIDEO_VSIZE);
    }

    Status = XAxiVdma_DmaSetBufferAddr(&VdmaInstance, XAXIVDMA_WRITE,
                                        WriteCfg.FrameStoreStartAddr);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Write set buffer address failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* ==================== 配置MM2S (读) 通道 ==================== */
    /* DDR -> HDMI显示 */

    ReadCfg.VertSizeInput = VIDEO_VSIZE;
    ReadCfg.HoriSizeInput = VIDEO_STRIDE;
    ReadCfg.Stride = VIDEO_STRIDE;
    ReadCfg.FrameDelay = 0;
    ReadCfg.EnableCircularBuf = 1;
    ReadCfg.EnableSync = 1;
    ReadCfg.PointNum = 0;
    ReadCfg.EnableFrameCounter = 0;
    ReadCfg.FixedFrameStoreAddr = 0;

    Status = XAxiVdma_DmaConfig(&VdmaInstance, XAXIVDMA_READ, &ReadCfg);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Read channel config failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* 设置帧缓冲区地址 (与写通道使用相同的缓冲区) */
    Addr = FRAME_BUFFER_ADDR;
    for (Index = 0; Index < VDMA_NUM_FRAMES; Index++) {
        ReadCfg.FrameStoreStartAddr[Index] = Addr;
        Addr += (VIDEO_STRIDE * VIDEO_VSIZE);
    }

    Status = XAxiVdma_DmaSetBufferAddr(&VdmaInstance, XAXIVDMA_READ,
                                        ReadCfg.FrameStoreStartAddr);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Read set buffer address failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* 使能VDMA中断 */
    XAxiVdma_IntrEnable(&VdmaInstance, XAXIVDMA_IXR_ERROR_MASK, XAXIVDMA_WRITE);
    XAxiVdma_IntrEnable(&VdmaInstance, XAXIVDMA_IXR_ERROR_MASK, XAXIVDMA_READ);

    return XST_SUCCESS;
}

/************************** 启动VDMA传输 *******************************/

int Vdma_StartTransfer(void)
{
    int Status;

    /* 先启动写通道 (S2MM: 摄像头->DDR) */
    Status = XAxiVdma_DmaStart(&VdmaInstance, XAXIVDMA_WRITE);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Write channel start failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* 再启动读通道 (MM2S: DDR->HDMI) */
    Status = XAxiVdma_DmaStart(&VdmaInstance, XAXIVDMA_READ);
    if (Status != XST_SUCCESS) {
        xil_printf("VDMA Read channel start failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

/************************** 中断配置 *******************************/

int SetupInterrupts(void)
{
    int Status;
    XScuGic_Config *IntcConfig;

    /* 查找中断控制器配置 */
    IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == IntcConfig) {
        xil_printf("Interrupt controller lookup failed!\r\n");
        return XST_FAILURE;
    }

    /* 初始化中断控制器 */
    Status = XScuGic_CfgInitialize(&IntcInstance, IntcConfig,
                                    IntcConfig->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("Interrupt controller initialize failed!\r\n");
        return XST_FAILURE;
    }

    /* 设置异常处理 */
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &IntcInstance);
    Xil_ExceptionEnable();

    /* 连接VDMA写通道中断 */
    Status = XScuGic_Connect(&IntcInstance, VDMA_S2MM_INTR_ID,
                             (Xil_InterruptHandler)XAxiVdma_WriteIntrHandler,
                             &VdmaInstance);
    if (Status != XST_SUCCESS) {
        xil_printf("Connect VDMA write interrupt failed!\r\n");
        return XST_FAILURE;
    }

    /* 连接VDMA读通道中断 */
    Status = XScuGic_Connect(&IntcInstance, VDMA_MM2S_INTR_ID,
                             (Xil_InterruptHandler)XAxiVdma_ReadIntrHandler,
                             &VdmaInstance);
    if (Status != XST_SUCCESS) {
        xil_printf("Connect VDMA read interrupt failed!\r\n");
        return XST_FAILURE;
    }

    /* 注册回调函数 */
    XAxiVdma_SetCallBack(&VdmaInstance, XAXIVDMA_HANDLER_GENERAL,
                         WriteCallBack, (void *)&VdmaInstance, XAXIVDMA_WRITE);
    XAxiVdma_SetCallBack(&VdmaInstance, XAXIVDMA_HANDLER_ERROR,
                         WriteErrorCallBack, (void *)&VdmaInstance, XAXIVDMA_WRITE);
    XAxiVdma_SetCallBack(&VdmaInstance, XAXIVDMA_HANDLER_GENERAL,
                         ReadCallBack, (void *)&VdmaInstance, XAXIVDMA_READ);
    XAxiVdma_SetCallBack(&VdmaInstance, XAXIVDMA_HANDLER_ERROR,
                         ReadErrorCallBack, (void *)&VdmaInstance, XAXIVDMA_READ);

    /* 使能中断 */
    XScuGic_Enable(&IntcInstance, VDMA_S2MM_INTR_ID);
    XScuGic_Enable(&IntcInstance, VDMA_MM2S_INTR_ID);

    return XST_SUCCESS;
}

/************************** 中断回调函数 *******************************/

/* 写通道完成回调 */
static void WriteCallBack(void *CallbackRef, u32 Mask)
{
    FrameCount++;
}

/* 读通道完成回调 */
static void ReadCallBack(void *CallbackRef, u32 Mask)
{
    /* 可以添加帧处理逻辑 */
}

/* 写通道错误回调 */
static void WriteErrorCallBack(void *CallbackRef, u32 Mask)
{
    if (Mask & XAXIVDMA_S2MM_IRQ_FSZLESS_SOF_ERLY_MASK) {
        xil_printf("Write Error: SOF Early\r\n");
    }
    if (Mask & XAXIVDMA_S2MM_IRQ_FSZMORE_SOF_LATE_MASK) {
        xil_printf("Write Error: SOF Late\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_FSZ_LESS_MASK) {
        xil_printf("Write Error: Frame Size Less\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_FSZ_MORE_MASK) {
        xil_printf("Write Error: Frame Size More\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_INTERNAL_MASK) {
        xil_printf("Write Error: DMA Internal Error\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_SLAVE_MASK) {
        xil_printf("Write Error: DMA Slave Error\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_DECODE_MASK) {
        xil_printf("Write Error: DMA Decode Error\r\n");
    }
}

/* 读通道错误回调 */
static void ReadErrorCallBack(void *CallbackRef, u32 Mask)
{
    if (Mask & XAXIVDMA_S2MM_IRQ_FSZLESS_SOF_ERLY_MASK) {
        xil_printf("Read Error: SOF Early\r\n");
    }
    if (Mask & XAXIVDMA_S2MM_IRQ_FSZMORE_SOF_LATE_MASK) {
        xil_printf("Read Error: SOF Late\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_FSZ_LESS_MASK) {
        xil_printf("Read Error: Frame Size Less\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_FSZ_MORE_MASK) {
        xil_printf("Read Error: Frame Size More\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_INTERNAL_MASK) {
        xil_printf("Read Error: DMA Internal Error\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_SLAVE_MASK) {
        xil_printf("Read Error: DMA Slave Error\r\n");
    }
    if (Mask & XAXIVDMA_SR_ERR_DECODE_MASK) {
        xil_printf("Read Error: DMA Decode Error\r\n");
    }
}
