#ifndef GEMM_ACCEL_H
#define GEMM_ACCEL_H

#include "xil_types.h"

int GemmAccel_Init(void);
int GemmAccel_Service(uint8_t *digit);
u32 GemmAccel_LastStatus(void);

#endif
