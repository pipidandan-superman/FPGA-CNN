# OV5640摄像头采集到HDMI显示 - 实施计划

> 生成日期: 2026/04/19
> 工程路径: E:\FPGA_Project\2020_2\CNN\proj\4_cam_vdma_hdmi

---

## 一、工程当前状态分析

### 1. 硬件部分（Vivado）- 已完成

| 项目 | 状态 | 说明 |
|------|------|------|
| Block Design设计 | ✅ 完成 | 包含VDMA、视频IP链路完整 |
| 自定义IP封装 | ✅ 完成 | OV5640配置、数据采集、HDMI输出 |
| 管脚约束 | ✅ 完成 | 41行XDC约束 |
| Bitstream生成 | ✅ 完成 | 可下载 |

**Block Design IP列表:**
- processing_system7_0 - Zynq PS7处理系统
- axi_vdma_0_1 - AXI VDMA (视频DMA)
- v_tc_0_0 - 视频时序控制器
- v_axi4s_vid_out_0_0 - AXI Stream转视频输出
- v_vid_in_axi4s_0_0 - 视频输入转AXI Stream
- clk_wiz_0_0 - 时钟向导
- HDMI_top_0_0 - 自定义HDMI输出IP
- ov5640_cfg_top_0_0 - 自定义OV5640配置IP
- cam_captrue_data_0_0 - 自定义数据采集IP
- data_gen_0_0 - 自定义数据生成IP

**数据流架构:**
```
OV5640 Camera -> cam_captrue_data -> v_vid_in_axi4s -> AXI VDMA(S2MM) -> DDR3
                                                              |
                                                              v
HDMI Output <- HDMI_top <- v_axi4s_vid_out <- VDMA(MM2S) <----+
```

### 2. 时序问题分析

```
时钟: clk_fpga_0 (200MHz, 周期5ns)
Setup违例: 69个路径, WNS = -1.177ns, TNS = -17.312ns
Hold违例: 无

违例位置: AXI VDMA IP内部的S2MM Scatter模块
具体路径: design_1_i/axi_vdma_0/U0/I_PRMRY_DATAMOVER/GEN_S2MM_FULL.
          I_S2MM_FULL_WRAPPER/GEN_INCLUDE_REALIGNER.I_S2MM_REALIGNER/
          GEN_INCLUDE_SCATTER.I_S2MM_SCATTER/sig_btt_*

原因分析: VDMA S2MM通道逻辑在200MHz下无法满足时序要求
```

### 3. 软件部分（Vitis）- 未完成

| 项目 | 状态 | 问题 |
|------|------|------|
| XSA导出 | ✅ 完成 | design_1_wrapper.xsa |
| BSP/FSBL | ✅ 完成 | standalone_ps7_cortexa9_0 |
| 彩条测试程序 | ✅ 完成 | vdma_ctrl (仅测试MM2S通道) |
| **摄像头采集程序** | ❌ 缺失 | 缺少S2MM配置 |
| 分辨率匹配 | ❌ 不一致 | OV5640: 640x480, VDMA测试: 1280x720 |

**现有程序分析:**

1. **vdma_ctrl** (main_vdma_read.c):
   - 功能: 生成8条彩条到DDR，VDMA读取显示
   - 分辨率: 1280x720
   - 仅配置MM2S通道
   - 帧缓冲地址: 0x10000000

2. **vdma_1** (vdma.c):
   - 功能: VDMA API演示
   - 分辨率: 1920x1080
   - 双VDMA实例示例

---

## 二、实施计划与方案

### 阶段1: 解决时序违例（硬件层面）

#### 方案A - 降低时钟频率（推荐）

**操作步骤:**
1. 打开Vivado工程: `vmda_HDMI_cam/vmda_test.xpr`
2. 打开Block Design，双击clk_wiz_0_0 IP
3. 修改输出时钟配置:
   - 将clk_out1从200MHz改为150MHz或142MHz
   - 保持其他配置不变
4. 重新生成Block Design输出产品
5. 重新综合和实现
6. 检查时序报告确认WNS > 0

**优点:** 改动小，风险低，对摄像头和HDMI显示足够

#### 方案B - 禁用VDMA Scatter-Gather功能

**操作步骤:**
1. 打开Block Design，双击axi_vdma_0_1 IP
2. 在S2MM通道配置中:
   - 取消勾选 "Enable Scatter Gather"
   - 保留其他配置
3. 重新生成IP输出产品
4. 重新综合和实现

**优点:** 消除违例源，简化VDMA配置

#### 方案C - 增加时序约束豁免（不推荐）

```tcl
# 在pin.xdc中添加（可能导致实际工作不稳定）
set_false_path -through [get_pins -hier *S2MM_SCATTER*]
```

---

### 阶段2: 完善Vitis软件

#### 需创建的摄像头采集显示程序框架

**文件: cam_vdma_hdmi.c**

```c
#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xaxivdma.h"
#include "xv_tc.h"

// 分辨率配置 - 与OV5640输出匹配
#define H_ACTIVE    640
#define V_ACTIVE    480
#define STRIDE      (H_ACTIVE * 4)  // AXI总线4字节对齐

// 帧缓冲地址 (三缓冲)
#define FRAME_BUFFER_BASE   0x10000000
#define FRAME_BUFFER_1      (FRAME_BUFFER_BASE)
#define FRAME_BUFFER_2      (FRAME_BUFFER_BASE + 0x00200000)
#define FRAME_BUFFER_3      (FRAME_BUFFER_BASE + 0x00400000)

// VDMA寄存器偏移
#define MM2S_VDMACR         0x00
#define MM2S_VDMASR         0x04
#define MM2S_START_ADDR     0x5C
#define MM2S_FRMDLY_STRIDE  0x58
#define MM2S_HSIZE          0x54
#define MM2S_VSIZE          0x50

#define S2MM_VDMACR         0x30
#define S2MM_VDMASR         0x34
#define S2MM_START_ADDR     0xAC
#define S2MM_FRMDLY_STRIDE  0xA8
#define S2MM_HSIZE          0xA4
#define S2MM_VSIZE          0xA0

// VDMA基地址
#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR

int main() {
    printf("\n========================================\n");
    printf("OV5640 Camera to HDMI Display\n");
    printf("Resolution: %d x %d\n", H_ACTIVE, V_ACTIVE);
    printf("========================================\n\n");

    // Step 1: 复位VDMA
    printf("Step 1: Resetting VDMA...\n");
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, 0x00000004);
    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, 0x00000004);
    while((Xil_In32(VDMA_BASEADDR + MM2S_VDMACR) & 0x04) == 0x04);
    while((Xil_In32(VDMA_BASEADDR + S2MM_VDMACR) & 0x04) == 0x04);
    printf("VDMA reset complete.\n\n");

    // Step 2: 配置S2MM通道 (摄像头 -> DDR)
    printf("Step 2: Configuring S2MM channel (Camera -> DDR)...\n");
    Xil_Out32(VDMA_BASEADDR + S2MM_VDMACR, 0x00000001);  // Enable
    Xil_Out32(VDMA_BASEADDR + S2MM_START_ADDR, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + S2MM_FRMDLY_STRIDE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + S2MM_HSIZE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + S2MM_VSIZE, V_ACTIVE);     // 最后写入启动
    printf("S2MM configured.\n\n");

    // Step 3: 配置MM2S通道 (DDR -> HDMI)
    printf("Step 3: Configuring MM2S channel (DDR -> HDMI)...\n");
    Xil_Out32(VDMA_BASEADDR + MM2S_VDMACR, 0x00000001);  // Enable
    Xil_Out32(VDMA_BASEADDR + MM2S_START_ADDR, FRAME_BUFFER_1);
    Xil_Out32(VDMA_BASEADDR + MM2S_FRMDLY_STRIDE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + MM2S_HSIZE, STRIDE);
    Xil_Out32(VDMA_BASEADDR + MM2S_VSIZE, V_ACTIVE);     // 最后写入启动
    printf("MM2S configured.\n\n");

    // Step 4: 等待OV5640配置完成
    printf("Step 4: Waiting for OV5640 configuration...\n");
    printf("Camera should be outputting video now.\n\n");

    // Step 5: 打印状态
    printf("Step 5: VDMA Status:\n");
    printf("  MM2S_VDMASR: 0x%08X\n", Xil_In32(VDMA_BASEADDR + MM2S_VDMASR));
    printf("  S2MM_VDMASR: 0x%08X\n", Xil_In32(VDMA_BASEADDR + S2MM_VDMASR));

    printf("\n========================================\n");
    printf("System running! Check HDMI output.\n");
    printf("========================================\n\n");

    while(1) {
        // 可以在此添加帧率监控或其他处理
    }

    return 0;
}
```

#### 关键配置参数说明

| 参数 | 值 | 说明 |
|------|-----|------|
| 分辨率 | 640x480 | 与OV5640输出匹配 |
| STRIDE | 2560 (640*4) | AXI总线4字节对齐 |
| 帧缓冲 | 3个 | 三缓冲避免撕裂 |
| 像素格式 | RGB888 | 24位色深 |

---

### 阶段3: 系统调试流程

```
步骤1: 验证HDMI输出链路
├─ 先运行现有vdma_ctrl彩条测试程序
├─ 确认HDMI显示器显示8条彩条
└─ 如果无显示，检查:
    - HDMI使能信号 (hdmi_en)
    - VTC时序配置
    - v_axi4s_vid_out连接

步骤2: 验证摄像头配置
├─ 确认sccb_cfg_done信号有效
├─ 用示波器检查SCCB通信
└─ 确认OV5640输出:
    - cam_pclk: 像素时钟
    - cam_href: 行有效
    - cam_vsync: 场同步
    - cam_data[7:0]: 数据

步骤3: 验证摄像头数据采集
├─ 运行新程序，配置S2MM通道
├─ 等待几帧后停止VDMA
├─ 通过JTAG读取DDR数据
└─ 分析图像数据是否有效

步骤4: 完整系统联调
├─ S2MM + MM2S同时运行
├─ 确认帧同步
└─ 调整亮度/对比度等参数
```

---

## 三、具体任务清单

| 序号 | 任务 | 优先级 | 状态 | 预估时间 |
|------|------|--------|------|----------|
| 1 | 修改时钟配置，降低到150MHz | 高 | 待执行 | 30分钟 |
| 2 | 重新生成Bitstream，验证时序收敛 | 高 | 待执行 | 20分钟 |
| 3 | 导出新的XSA到Vitis | 高 | 待执行 | 5分钟 |
| 4 | 创建摄像头采集显示程序 | 高 | 待执行 | 2小时 |
| 5 | 统一分辨率配置为640x480 | 中 | 待执行 | 30分钟 |
| 6 | 下载测试，硬件调试 | 中 | 待执行 | 1小时 |

---

## 四、文件清单

### Vivado工程文件
```
vmda_HDMI_cam/
├── vmda_test.xpr                    # Vivado工程文件
├── vmda_test.srcs/
│   ├── sources_1/
│   │   ├── imports/rtl/             # 自定义HDMI模块
│   │   └── bd/design_1/             # Block Design
│   └── constrs_1/new/pin.xdc        # 管脚约束
└── vitis/
    └── design_1_wrapper.xsa         # 硬件导出文件
```

### RTL源文件
```
rtl/
├── ov5640_cfg/
│   ├── ov5640_cfg_top.v             # OV5640配置顶层
│   ├── SCCB.v                       # SCCB协议实现
│   └── OV5640_REG.v                 # 寄存器配置表
└── ov5640_data_cap/
    └── cam_cap_data.v               # 数据采集模块
```

### Vitis工程文件
```
vmda_HDMI_cam/vitis/
├── design_1_wrapper/                # 硬件平台
├── vdma_ctrl/                       # 彩条测试程序
└── vdma_1/                          # VDMA API示例
```

---

## 五、管脚分配参考

| 信号 | 管脚 | IO标准 | 功能 |
|------|------|--------|------|
| clk_in1_0 | K17 | LVCMOS33 | 系统时钟输入 |
| TMDS_clk_p_0 | H16 | TMDS_33 | HDMI时钟差分 |
| TMDS_data_p_0[2:0] | D19/C20/B19 | TMDS_33 | HDMI数据通道 |
| hdmi_en_0 | H18 | LVCMOS33 | HDMI使能 |
| sccb_clk_0 | V16 | LVCMOS33 | SCCB时钟 |
| sccb_data_0 | P16 | LVCMOS33 | SCCB数据 |
| cam_pclk_0 | T17 | LVCMOS33 | 摄像头像素时钟 |
| cam_xclk_0 | T16 | LVCMOS33 | 摄像头系统时钟 |
| cam_href_0 | R16 | LVCMOS33 | 摄像头行有效 |
| cam_vsync_0 | U18 | LVCMOS33 | 摄像头场同步 |
| cam_data_0[7:0] | P18/W20等 | LVCMOS33 | 摄像头数据 |
| sys_rst_n_0 | U15 | LVCMOS33 | 系统复位 |

---

## 六、注意事项

1. **时序问题**: 当前200MHz时钟有Setup违例，建议先解决后再进行软件调试
2. **分辨率匹配**: 确保摄像头输出、VDMA配置、HDMI输出三者分辨率一致
3. **缓存刷新**: 在CPU操作DDR后需要调用Xil_DCacheFlush()
4. **VSIZE最后写入**: VDMA的VSIZE寄存器必须最后写入才能启动传输
5. **SCCB时序**: OV5640的SCCB时钟需在100KHz左右

---

## 七、参考资料

- Xilinx PG020: AXI VDMA v6.2 LogiCORE IP Product Guide
- Xilinx PG016: Video Timing Controller v6.1 LogiCORE IP Product Guide
- OV5640 Datasheet
- Zynq-7000 Technical Reference Manual
