#include "gemm_accel.h"

#include <stdint.h>
#include "xil_cache.h"
#include "xil_io.h"
#include "gemm_params.h"

#define GEMM_CTRL_BASE                 0x43C10000U
#define GEMM_DMA_BASE                  0x43010000U

#define GEMM_CTRL_CMD                  0x00U
#define GEMM_CTRL_STATUS               0x04U
#define GEMM_CTRL_FC1_WEIGHT_BASE      0x08U
#define GEMM_CTRL_FC1_BIAS_BASE        0x0CU
#define GEMM_CTRL_FC2_WEIGHT_BASE      0x10U
#define GEMM_CTRL_FC2_BIAS_BASE        0x14U
#define GEMM_CTRL_REQUANT_MULTIPLIER   0x18U
#define GEMM_CTRL_REQUANT_SHIFT        0x1CU

#define GEMM_STATUS_BUSY               (1U << 0)
#define GEMM_STATUS_DONE               (1U << 1)
#define GEMM_STATUS_ERROR              (1U << 2)
#define GEMM_STATUS_DIGIT_VALID        (1U << 3)

#define DMA_MM2S_DMACR                 0x00U
#define DMA_MM2S_DMASR                 0x04U
#define DMA_MM2S_SA                    0x18U
#define DMA_MM2S_LENGTH                0x28U
#define DMA_DMACR_RESET                (1U << 2)
#define DMA_DMACR_RS                   (1U << 0)
#define DMA_DMACR_IOC_IRQ_EN           (1U << 12)
#define DMA_DMACR_ERR_IRQ_EN           (1U << 14)
#define DMA_DMASR_HALTED               (1U << 0)
#define DMA_DMASR_IOC_IRQ              (1U << 12)
#define DMA_DMASR_ERR_IRQ              (1U << 13)

#define GEMM_REQUANT_MULTIPLIER        74845108U
#define GEMM_REQUANT_SHIFT             31U
#define GEMM_POLL_LIMIT                20000000U

static u32 gemm_last_status;

static int DmaWaitMask(u32 mask, u32 expected)
{
    u32 polls;
    for (polls = 0; polls < GEMM_POLL_LIMIT; ++polls) {
        u32 status = Xil_In32(GEMM_DMA_BASE + DMA_MM2S_DMASR);
        if ((status & mask) == expected)
            return 0;
        if ((status & DMA_DMASR_ERR_IRQ) != 0U)
            return -1;
    }
    return -1;
}

static int DmaTransfer(const uint64_t *source, u32 bytes)
{
    u32 status;
    u32 polls;
    INTPTR address = (INTPTR)source;

    if ((address & 7U) != 0U || bytes == 0U || (bytes & 7U) != 0U)
        return -1;
    /* PG021 Direct Register Mode: RS=1 must first make Halted deassert.
     * Idle is a completion indication, not a first-transfer start condition. */
    if (DmaWaitMask(DMA_DMASR_HALTED, 0U) != 0)
        return -1;

    /* MM2S_LENGTH must be written last; its non-zero write starts the DMA. */
    Xil_Out32(GEMM_DMA_BASE + DMA_MM2S_SA, (u32)address);
    Xil_Out32(GEMM_DMA_BASE + DMA_MM2S_LENGTH, bytes);

    for (polls = 0; polls < GEMM_POLL_LIMIT; ++polls) {
        status = Xil_In32(GEMM_DMA_BASE + DMA_MM2S_DMASR);
        if ((status & (DMA_DMASR_IOC_IRQ | DMA_DMASR_ERR_IRQ)) != 0U) {
            Xil_Out32(GEMM_DMA_BASE + DMA_MM2S_DMASR,
                      status & (DMA_DMASR_IOC_IRQ | DMA_DMASR_ERR_IRQ));
            if ((status & DMA_DMASR_ERR_IRQ) != 0U)
                return -1;
            return 0;
        }
    }
    return -1;
}

int GemmAccel_Init(void)
{
    u32 polls;

    gemm_last_status = 0U;
    Xil_Out32(GEMM_DMA_BASE + DMA_MM2S_DMACR, DMA_DMACR_RESET);
    for (polls = 0; polls < GEMM_POLL_LIMIT; ++polls) {
        if ((Xil_In32(GEMM_DMA_BASE + DMA_MM2S_DMACR) & DMA_DMACR_RESET) == 0U)
            break;
    }
    if (polls == GEMM_POLL_LIMIT)
        return -1;

    Xil_Out32(GEMM_DMA_BASE + DMA_MM2S_DMACR,
              DMA_DMACR_RS | DMA_DMACR_IOC_IRQ_EN | DMA_DMACR_ERR_IRQ_EN);
    if (DmaWaitMask(DMA_DMASR_HALTED, 0U) != 0)
        return -1;

    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_FC1_BIAS_BASE,
              (u32)(uintptr_t)gemm_fc1_bias_words);
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_FC1_WEIGHT_BASE,
              (u32)(uintptr_t)gemm_fc1_weight_words);
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_FC2_BIAS_BASE,
              (u32)(uintptr_t)gemm_fc2_bias_words);
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_FC2_WEIGHT_BASE,
              (u32)(uintptr_t)gemm_fc2_weight_words);
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_REQUANT_MULTIPLIER,
              GEMM_REQUANT_MULTIPLIER);
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_REQUANT_SHIFT, GEMM_REQUANT_SHIFT);

    if (Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_FC1_WEIGHT_BASE) !=
            (u32)(uintptr_t)gemm_fc1_weight_words ||
        Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_FC1_BIAS_BASE) !=
            (u32)(uintptr_t)gemm_fc1_bias_words ||
        Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_FC2_WEIGHT_BASE) !=
            (u32)(uintptr_t)gemm_fc2_weight_words ||
        Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_FC2_BIAS_BASE) !=
            (u32)(uintptr_t)gemm_fc2_bias_words)
        return -1;

    Xil_DCacheFlushRange((INTPTR)gemm_fc1_bias_words,
                         sizeof(gemm_fc1_bias_words));
    Xil_DCacheFlushRange((INTPTR)gemm_fc1_weight_words,
                         sizeof(gemm_fc1_weight_words));
    Xil_DCacheFlushRange((INTPTR)gemm_fc2_bias_words,
                         sizeof(gemm_fc2_bias_words));
    Xil_DCacheFlushRange((INTPTR)gemm_fc2_weight_words,
                         sizeof(gemm_fc2_weight_words));

    /* Discard any frame started with reset-default addresses. */
    Xil_Out32(GEMM_CTRL_BASE + GEMM_CTRL_CMD, 2U);
    return 0;
}

static int GemmWaitSectionClear(u32 section)
{
    u32 polls;
    for (polls = 0; polls < GEMM_POLL_LIMIT; ++polls) {
        u32 status = Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_STATUS);
        gemm_last_status = status;
        if ((status & GEMM_STATUS_ERROR) != 0U)
            return -2;
        if (((status >> 8) & 0xFU) != section)
            return 0;
    }
    return -4;
}

int GemmAccel_Service(uint8_t *digit)
{
    u32 status = Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_STATUS);
    u32 section = (status >> 8) & 0xFU;
    int result = 0;

    gemm_last_status = status;
    if ((status & GEMM_STATUS_ERROR) != 0U)
        return -2;

    switch (section) {
    case 0x0U:
        break;
    case 0x1U:
        result = DmaTransfer(gemm_fc1_bias_words, sizeof(gemm_fc1_bias_words));
        break;
    case 0x2U:
        result = DmaTransfer(gemm_fc1_weight_words, sizeof(gemm_fc1_weight_words));
        break;
    case 0x4U:
        result = DmaTransfer(gemm_fc2_bias_words, sizeof(gemm_fc2_bias_words));
        break;
    case 0x8U:
        result = DmaTransfer(gemm_fc2_weight_words, sizeof(gemm_fc2_weight_words));
        break;
    default:
        return -3;
    }
    if (result != 0)
        return result;

    /* DMA IOC and withdrawal of the GEMM request are separate events. */
    if (section != 0U) {
        result = GemmWaitSectionClear(section);
        if (result != 0)
            return result;
    }

    status = Xil_In32(GEMM_CTRL_BASE + GEMM_CTRL_STATUS);
    gemm_last_status = status;
    if ((status & GEMM_STATUS_ERROR) != 0U)
        return -2;
    if ((status & (GEMM_STATUS_DONE | GEMM_STATUS_DIGIT_VALID)) ==
            (GEMM_STATUS_DONE | GEMM_STATUS_DIGIT_VALID)) {
        if (digit != 0)
            *digit = (uint8_t)((status >> 4) & 0xFU);
        return 1;
    }
    return 0;
}

u32 GemmAccel_LastStatus(void)
{
    return gemm_last_status;
}
