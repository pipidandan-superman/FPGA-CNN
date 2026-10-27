/******************************************************************************
 * OV5640 handwritten-digit recognition with PL FC1/FC2 GEMM.
 *
 * Camera -> VDMA -> DDR -> HDMI remains unchanged. The recognition branch is
 * Preprocess -> Conv/ReLU/Pool -> CDC PP -> shared GEMM -> Argmax -> digit ROM.
 * The PS only services the official AXI DMA parameter requests; it no longer
 * executes the fully connected layers or writes the displayed classification.
 ******************************************************************************/

#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xstatus.h"
#include "sleep.h"

#include "gemm_accel.h"
#include "debug_frame_capture.h"

#define H_ACTIVE            640
#define V_ACTIVE            480
#define BYTES_PER_PIXEL     3
#define STRIDE              (H_ACTIVE * BYTES_PER_PIXEL)

#define FRAME_BUFFER_BASE   0x10000000
#define FRAME_BUFFER_1      (FRAME_BUFFER_BASE)
#define FRAME_BUFFER_2      (FRAME_BUFFER_BASE + 0x00200000)
#define FRAME_BUFFER_3      (FRAME_BUFFER_BASE + 0x00400000)

#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR

#define MM2S_VDMACR         0x00
#define MM2S_START_ADDR_1   0x5C
#define MM2S_START_ADDR_2   0x60
#define MM2S_START_ADDR_3   0x64
#define MM2S_FRMDLY_STRIDE  0x58
#define MM2S_HSIZE          0x54
#define MM2S_VSIZE          0x50

#define S2MM_VDMACR         0x30
#define S2MM_START_ADDR_1   0xAC
#define S2MM_START_ADDR_2   0xB0
#define S2MM_START_ADDR_3   0xB4
#define S2MM_FRMDLY_STRIDE  0xA8
#define S2MM_HSIZE          0xA4
#define S2MM_VSIZE          0xA0

#define VDMACR_RS           0x00000001
#define VDMACR_RESET        0x00000004

void VDMA_Reset(void);
void VDMA_Configure_S2MM(void);
void VDMA_Configure_MM2S(void);
void Clear_FrameBuffer(u8 *frame_buffer, u8 r, u8 g, u8 b);

int main(void)
{
    int gemm_enabled;
    int service_result;
    uint8_t digit = 0;
    uint8_t last_digit = 0;
    u32 frame_count = 0;

    printf("\n========================================\n");
    printf("Handwritten Digit Recognition System\n");
    printf("PL Conv/Pool + PL shared FC1/FC2 GEMM\n");
    printf("Resolution: %d x %d\n", H_ACTIVE, V_ACTIVE);
    printf("========================================\n\n");

    printf("Step 1: Resetting VDMA...\n");
    VDMA_Reset();

    printf("Step 2: Clearing frame buffers...\n");
    Clear_FrameBuffer((u8 *)FRAME_BUFFER_1, 0, 0, 0);
    Clear_FrameBuffer((u8 *)FRAME_BUFFER_2, 0, 0, 0);
    Clear_FrameBuffer((u8 *)FRAME_BUFFER_3, 0, 0, 0);

    printf("Step 3: Configuring VDMA channels...\n");
    VDMA_Configure_S2MM();
    VDMA_Configure_MM2S();

    printf("Step 4: Initializing official AXI DMA and GEMM...\n");
    gemm_enabled = (GemmAccel_Init() == 0);
    if (!gemm_enabled) {
        printf("ERROR: GEMM initialization failed; HDMI remains active.\n");
    } else {
        printf("GEMM ready: Argmax drives the digit ROM directly.\n");
    }

    printf("\nSystem Running!\n");
    printf("- Camera: full-screen HDMI display\n");
    printf("- Center: normalized recognition ROI\n");
    printf("- Top-Right: PL FC1/FC2 classification\n\n");

    while (1) {
        if (gemm_enabled) {
            service_result = GemmAccel_Service(&digit);
            if (service_result < 0) {
                printf("GEMM service error=%d status=0x%08lX\n",
                       service_result, GemmAccel_LastStatus());
                gemm_enabled = 0;
            } else if (service_result == 1) {
                frame_count++;
                if (digit != last_digit) {
                    printf("[%lu] PL digit: %u\n", frame_count, digit);
                    last_digit = digit;
                }
            }
        }

        /* Non-intrusive DDR snapshot request; VDMA keeps running. */
        Debug_Capture_Poll();
        usleep(1000);
    }

    return XST_SUCCESS;
}

void VDMA_Reset(void)
{
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, VDMACR_RESET);
    while ((Xil_In32(VDMA_BASEADDR + MM2S_VDMACR) & VDMACR_RESET) == VDMACR_RESET)
        ;

    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, VDMACR_RESET);
    while ((Xil_In32(VDMA_BASEADDR + S2MM_VDMACR) & VDMACR_RESET) == VDMACR_RESET)
        ;

    for (volatile int i = 0; i < 1000; i++)
        ;
}

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

void Clear_FrameBuffer(u8 *frame_buffer, u8 r, u8 g, u8 b)
{
    for (int y = 0; y < V_ACTIVE; y++) {
        for (int x = 0; x < H_ACTIVE; x++) {
            u32 offset = (y * H_ACTIVE + x) * BYTES_PER_PIXEL;
            frame_buffer[offset + 0] = r;
            frame_buffer[offset + 1] = g;
            frame_buffer[offset + 2] = b;
        }
    }
    Xil_DCacheFlush();
}
