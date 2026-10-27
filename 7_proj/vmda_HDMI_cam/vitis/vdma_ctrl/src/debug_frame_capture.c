/******************************************************************************
 * Non-intrusive live-digit capture for PC/RTL cross-checking.
 *
 * VDMA is never stopped. The PS copies the most recently completed DDR ROI
 * into a private snapshot ring. XSCT downloads that ring only after capture.
 ******************************************************************************/

#include "debug_frame_capture.h"

#include "xil_cache.h"
#include "xil_io.h"
#include "xil_types.h"
#include "sleep.h"

#define CAPTURE_CTRL_BASE       0x11000000U
#define CAPTURE_DATA_BASE       0x11010000U
#define CAPTURE_SLOT_SIZE       0x00010000U
#define CAPTURE_SAMPLE_COUNT    8U

#define CAPTURE_CMD_MAGIC       0xD1610000U
#define CAPTURE_CMD_MASK        0xFFFFFF00U
#define CAPTURE_STATUS_BUSY     0xD161B000U
#define CAPTURE_STATUS_DONE     0xD161D000U
#define CAPTURE_SAMPLE_MAGIC    0x53414D50U

#define FRAME_BUFFER_BASE       0x10000000U
#define FRAME_BUFFER_STRIDE     0x00200000U
#define FRAME_STRIDE_BYTES      1920U
#define VDMA_BASEADDR           0x43000000U
#define VDMA_PARK_PTR           0x28U
#define GEMM_STATUS_ADDR        0x43C10004U
#define POOL_BRAM_BASEADDR      0x40000000U
#define POOL_WORD_COUNT         4320U

#define ROI_X                   264U
#define ROI_Y                   184U
#define ROI_WIDTH               112U
#define ROI_HEIGHT              112U
#define ROI_BYTES_PER_ROW       (ROI_WIDTH * 3U)

#define SLOT_META_OFFSET        0x0000U
#define SLOT_ROI_OFFSET         0x1000U
#define SLOT_POOL_OFFSET        0xB000U

static u32 last_command;

static void Capture_Flush_Control(void)
{
    Xil_DCacheFlushRange(CAPTURE_CTRL_BASE, 64U);
}

static void Capture_Set_Status(u32 status)
{
    Xil_Out32(CAPTURE_CTRL_BASE + 0x04U, status);
    Capture_Flush_Control();
}

static u32 Capture_Frame_Source(u32 park_ptr, u32 sample_index)
{
    u32 current = (park_ptr >> 24) & 0x1FU;

    /* This deployed VDMA currently writes only frame buffer zero. */
    if (park_ptr == 0U) {
        return 0U;
    }
    if (current < 3U) {
        return (current + 2U) % 3U;
    }
    return sample_index % 3U;
}

static void Capture_One_Sample(u32 label, u32 sample_index)
{
    u32 slot = CAPTURE_DATA_BASE + sample_index * CAPTURE_SLOT_SIZE;
    u32 roi_dst = slot + SLOT_ROI_OFFSET;
    u32 pool_dst = slot + SLOT_POOL_OFFSET;
    u32 park_before;
    u32 park_after;
    u32 current_before;
    u32 current_after;
    u32 source_buffer;
    u32 stable;
    u32 y;
    u32 i;

    park_before = Xil_In32(VDMA_BASEADDR + VDMA_PARK_PTR);
    source_buffer = Capture_Frame_Source(park_before, sample_index);

    /* Invalidate the selected camera source. VDMA keeps running throughout. */
    for (y = 0; y < ROI_HEIGHT; y++) {
        u32 src = FRAME_BUFFER_BASE + source_buffer * FRAME_BUFFER_STRIDE +
                  (ROI_Y + y) * FRAME_STRIDE_BYTES + ROI_X * 3U;
        Xil_DCacheInvalidateRange(src, ROI_BYTES_PER_ROW);
    }

    for (y = 0; y < ROI_HEIGHT; y++) {
        u32 src = FRAME_BUFFER_BASE + source_buffer * FRAME_BUFFER_STRIDE +
                  (ROI_Y + y) * FRAME_STRIDE_BYTES + ROI_X * 3U;
        u32 dst = roi_dst + y * ROI_BYTES_PER_ROW;
        u32 b;

        for (b = 0; b < ROI_BYTES_PER_ROW; b++) {
            Xil_Out8(dst + b, Xil_In8(src + b));
        }
    }
    park_after = Xil_In32(VDMA_BASEADDR + VDMA_PARK_PTR);

    current_before = (park_before >> 24) & 0x1FU;
    current_after = (park_after >> 24) & 0x1FU;
    stable = (park_before != 0U) &&
             (park_before == park_after) &&
             (current_before < 3U) && (current_after < 3U) &&
             (source_buffer != current_before) &&
             (source_buffer != current_after);

    /* Save the raw PL pool and displayed result alongside the camera ROI. */
    for (i = 0; i < POOL_WORD_COUNT; i++) {
        Xil_Out32(pool_dst + i * 4U, Xil_In32(POOL_BRAM_BASEADDR + i * 4U));
    }

    Xil_Out32(slot + SLOT_META_OFFSET + 0x00U, CAPTURE_SAMPLE_MAGIC);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x04U, label);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x08U, sample_index);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x0CU, source_buffer);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x10U, park_before);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x14U, park_after);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x18U, stable);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x1CU,
              (Xil_In32(GEMM_STATUS_ADDR) >> 4) & 0x0FU);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x20U, ROI_WIDTH);
    Xil_Out32(slot + SLOT_META_OFFSET + 0x24U, ROI_HEIGHT);

    Xil_DCacheFlushRange(slot, CAPTURE_SLOT_SIZE);
}

static void Capture_Run(u32 label)
{
    u32 i;

    Xil_Out32(CAPTURE_CTRL_BASE + 0x08U, 0U);
    Xil_Out32(CAPTURE_CTRL_BASE + 0x0CU, label);
    Capture_Set_Status(CAPTURE_STATUS_BUSY | label);

    for (i = 0; i < CAPTURE_SAMPLE_COUNT; i++) {
        Capture_One_Sample(label, i);
        Xil_Out32(CAPTURE_CTRL_BASE + 0x08U, i + 1U);
        Capture_Flush_Control();
        usleep(40000U);
    }

    Capture_Set_Status(CAPTURE_STATUS_DONE | label);
}

void Debug_Capture_Poll(void)
{
    u32 command;

    /* XSCT writes the command directly to DDR, behind the CPU cache. */
    Xil_DCacheInvalidateRange(CAPTURE_CTRL_BASE, 64U);
    command = Xil_In32(CAPTURE_CTRL_BASE);

    if ((command & CAPTURE_CMD_MASK) == CAPTURE_CMD_MAGIC &&
        command != last_command) {
        last_command = command;
        Capture_Run(command & 0x0FU);
    }
}
