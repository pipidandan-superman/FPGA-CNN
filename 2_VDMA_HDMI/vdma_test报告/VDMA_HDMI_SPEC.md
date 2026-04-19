# VDMA HDMI Display System Specification

**Project:** VDMA HDMI Test
**Version:** 1.0
**Date:** 2026-04-07
**Status:** Verified

---

## 1. Overview

基于Xilinx Zynq-7000的VDMA驱动HDMI显示系统，实现从DDR内存读取视频数据并通过HDMI接口输出720p高清视频。

### 1.1 System Block Diagram

```
+------------------+     +------------+     +------------+     +----------+
|  Zynq PS7 (ARM)  |---->| AXI VDMA   |---->|  data_gen  |---->| HDMI_top |
|  (SW Control)    |     | (MM2S)     |     |  (RGB拆分) |     | (TMDS)   |
+------------------+     +------------+     +------------+     +----------+
        |                      |                                     |
        v                      v                                     v
   AXI Interconnect        DDR Memory                           TMDS Output
   (0x43000000)           (0x10000000)                        (HDMI TX)
```

---

## 2. Video Specifications

| Parameter | Value |
|-----------|-------|
| Resolution | 1280 x 720 (720p) |
| Pixel Format | RGB888 (24-bit) |
| Frame Rate | 60 Hz |
| Pixel Clock | 75 MHz |
| Bytes Per Pixel | 3 |
| Line Stride | 3840 bytes |
| Frame Size | 2,764,800 bytes |

### 2.1 Video Timing Parameters (VTC Configuration)

| Parameter | Value (pixels/clocks) |
|-----------|----------------------|
| H_ACTIVE | 1280 |
| H_TOTAL | 1650 |
| H_SYNC_START | 1390 |
| H_SYNC_END | 1430 |
| V_ACTIVE | 720 |
| V_TOTAL | 750 |
| V_SYNC_START | 724 |
| V_SYNC_END | 729 |
| Sync Polarity | Active High |

---

## 3. Hardware Architecture

### 3.1 FPGA Device

| Parameter | Value |
|-----------|-------|
| Device | XC7Z010-CLG400 |
| Family | Zynq-7000 |
| Speed Grade | -1 |
| Tool Version | Vivado 2020.2 |

### 3.2 IP Cores

| IP Core | Description |
|---------|-------------|
| processing_system7_0 | Zynq PS (ARM Cortex-A9) |
| axi_vdma_0 | AXI Video Direct Memory Access |
| v_tc_0 | Video Timing Controller (Generator Mode) |
| clk_wiz_0 | Clock Wizard (75MHz Pixel Clock Generation) |
| axi_mem_intercon_0 | AXI Memory Interconnect |
| ps7_0_axi_periph_0 | AXI Peripheral Interconnect |
| HDMI_top (Custom) | TMDS Encoder + Serializer |
| data_gen (Custom) | RGB Data Splitter (24-bit to 3x8-bit) |

### 3.3 Custom IP: HDMI_top

**Interface:**

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| pix_clk | Input | 1 | Pixel Clock (75MHz) |
| pix_clk_x5 | Input | 1 | 5x Serial Clock (375MHz) |
| rst_n | Input | 1 | Reset (Active Low) |
| h_sync | Input | 1 | Horizontal Sync |
| v_sync | Input | 1 | Vertical Sync |
| red_data | Input | 8 | Red Channel |
| green_data | Input | 8 | Green Channel |
| blue_data | Input | 8 | Blue Channel |
| de | Input | 1 | Data Enable |
| TMDS_clk_p/n | Output | 1 | TMDS Clock (Differential) |
| TMDS_data_p/n | Output | 3 | TMDS Data Channels (Differential) |
| hdmi_en | Output | 1 | HDMI Enable |

---

## 4. Memory Map

### 4.1 VDMA Register Map

| Register | Offset | Description |
|----------|--------|-------------|
| MM2S_VDMACR | 0x00 | Control Register |
| MM2S_SR | 0x34 | Status Register |
| MM2S_VSIZE | 0x50 | Vertical Size |
| MM2S_HSIZE | 0x54 | Horizontal Size |
| MM2S_FRMDLY_STRIDE | 0x58 | Frame Delay & Stride |
| MM2S_START_ADDRESS | 0x5C | Frame Buffer Start Address |

### 4.2 Address Map

| Module | Base Address |
|--------|-------------|
| AXI VDMA | 0x4300_0000 |
| Frame Buffer | 0x1000_0000 (DDR) |

---

## 5. VDMA Configuration

### 5.1 Register Values

| Register | Value | Description |
|----------|-------|-------------|
| START_ADDRESS | 0x10000000 | DDR Frame Buffer |
| STRIDE | 0x00000F00 | 3840 bytes/line |
| HSIZE | 0x00000F00 | 3840 bytes/line |
| VSIZE | 0x000002D0 | 720 lines |

### 5.2 Initialization Sequence

1. **Reset VDMA**: Write 0x04 to VDMACR, wait for reset bit to clear
2. **Enable VDMA**: Write 0x01 to VDMACR
3. **Set Frame Buffer**: Write START_ADDRESS, STRIDE, HSIZE
4. **Start Transfer**: Write VSIZE last (triggers VDMA operation)

---

## 6. Software API

### 6.1 Key Functions

```c
// Color bar generation
void fill_color_bar(u32 base_addr, int width, int height);

// Memory verification
void verify_memory(u32 base_addr);

// Cache flush (CRITICAL before VDMA starts)
Xil_DCacheFlush();
```

### 6.2 Test Pattern

8-Color Bar Test Pattern (each bar = 160 pixels):

| Bar | Pixels | Color | RGB |
|-----|--------|-------|-----|
| 0 | 0-159 | White | (255,255,255) |
| 1 | 160-319 | Yellow | (255,255,0) |
| 2 | 320-479 | Cyan | (0,255,255) |
| 3 | 480-639 | Green | (0,255,0) |
| 4 | 640-799 | Magenta | (255,0,255) |
| 5 | 800-959 | Red | (255,0,0) |
| 6 | 960-1119 | Blue | (0,0,255) |
| 7 | 1120-1279 | Black | (0,0,0) |

---

## 7. Clock Architecture

```
PS7 PLL
   |
   v
+----------+     +------------+
| clk_wiz  |---->| 75 MHz    |----> VTC, VDMA (MM2S), data_gen
|          |     | (pix_clk) |
|          |     +------------+
|          |          |
|          |          v
|          |     +------------+
|          |---->| 375 MHz    |----> HDMI_top (Serializer)
|                | (pix_clk_x5)|
|                +------------+
```

---

## 8. File Structure

```
E:\FPGA_Project\2020_2\CNN\proj\vmda_test\
├── vmda_test.xpr              # Vivado Project
├── vmda_test.srcs/
│   ├── sources_1/
│   │   ├── bd/design_1/       # Block Design
│   │   └── imports/rtl/       # Custom RTL
│   │       └── HDMI_top.v     # TMDS Encoder
│   └── constrs_1/             # Constraints
└── vitis/
    └── vdma_ctrl/
        └── src/
            └── main_vdma_read.c  # Software Application
```

---

## 9. Known Issues & Solutions

### 9.1 Cache Coherency
**Issue:** VDMA reads stale data from DDR
**Solution:** Call `Xil_DCacheFlush()` before starting VDMA

### 9.2 VSIZE Register
**Issue:** VDMA doesn't start
**Solution:** VSIZE must be written LAST after all other registers

---

## 10. Revision History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0 | 2026-04-07 | - | Initial release, verified working |

---

## 11. References

- PG020: AXI VDMA v6.2 Product Guide
- PG016: Video Timing Controller v6.2 Product Guide
- UG585: Zynq-7000 Technical Reference Manual
