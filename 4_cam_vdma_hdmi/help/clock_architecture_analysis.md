# Zynq时钟架构分析与修改记录

> 日期: 2026/04/19
> 工程: 4_cam_vdma_hdmi

---

## 一、当前时钟架构分析

### 1.1 Zynq PS7 时钟配置

| 时钟 | 频率 | 状态 | 分频器配置 | 用途 |
|------|------|------|------------|------|
| FCLK_CLK0 | **150 MHz** | ✅ 已启用 | DIV0=4, DIV1=2 | AXI总线、VDMA |
| FCLK_CLK1 | 10 MHz | ❌ 未启用 | DIV0=1, DIV1=1 | - |
| FCLK_CLK2 | 10 MHz | ❌ 未启用 | DIV0=1, DIV1=1 | - |
| FCLK_CLK3 | 10 MHz | ❌ 未启用 | DIV0=1, DIV1=1 | - |

**时钟源**: IO PLL (通常为1000MHz)

### 1.2 Clock Wizard 配置

输入时钟: **50 MHz** (来自外部管脚 K17)

| 输出 | 频率 | 连接到 | 用途 |
|------|------|--------|------|
| CLKOUT1 (pclk) | **25 MHz** | VTC, v_axi4s_vid_out, HDMI_top | 像素时钟 (640x480@60Hz) |
| CLKOUT2 (pclk_x5) | **125 MHz** | HDMI_top | TMDS串行时钟 (5x像素时钟) |
| CLKOUT3 (xclk) | **24 MHz** | cam_captrue_data | OV5640系统时钟 |
| CLKOUT4 (clk_50m) | **50 MHz** | - | 备用 |

### 1.3 时钟域划分

```
┌─────────────────────────────────────────────────────────────────────┐
│                         时钟域架构图                                 │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  ┌─────────────────┐                                                │
│  │  FCLK_CLK0      │  150 MHz                                       │
│  │  (Zynq PS7)     │                                                │
│  └────────┬────────┘                                                │
│           │                                                         │
│           ├──────────► VDMA (所有通道)                               │
│           │              ├── m_axi_mm2s_aclk                         │
│           │              ├── m_axi_s2mm_aclk                         │
│           │              ├── m_axis_mm2s_aclk                        │
│           │              ├── s_axi_lite_aclk                         │
│           │              └── s_axis_s2mm_aclk                        │
│           │                                                         │
│           ├──────────► v_axi4s_vid_out_0.aclk                       │
│           │                                                         │
│           ├──────────► v_vid_in_axi4s_0.aclk                        │
│           │                                                         │
│           └──────────► AXI Interconnects                            │
│                                                                     │
│  ┌─────────────────┐                                                │
│  │  pclk (25MHz)   │  来自 Clock Wizard                             │
│  └────────┬────────┘                                                │
│           │                                                         │
│           ├──────────► v_tc_0.clk (视频时序控制器)                    │
│           │                                                         │
│           ├──────────► v_axi4s_vid_out_0.vid_io_out_clk             │
│           │                                                         │
│           └──────────► HDMI_top_0.pix_clk (HDMI像素时钟)             │
│                                                                     │
│  ┌─────────────────┐                                                │
│  │  pclk_x5        │  125 MHz (25MHz × 5)                           │
│  └────────┬────────┘                                                │
│           │                                                         │
│           └──────────► HDMI_top_0.pix_clk_x5 (TMDS串行)              │
│                                                                     │
│  ┌─────────────────┐                                                │
│  │  xclk (24MHz)   │  来自 Clock Wizard                             │
│  └────────┬────────┘                                                │
│           │                                                         │
│           └──────────► cam_captrue_data_0.i_xclk (OV5640系统时钟)    │
│                                                                     │
│  ┌─────────────────┐                                                │
│  │  cam_pclk       │  外部输入 (来自OV5640)                          │
│  └────────┬────────┘                                                │
│           │                                                         │
│           └──────────► cam_captrue_data_0.cam_pclk                  │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 二、是否需要多个Zynq输出时钟？

### 2.1 分析结论

**当前设计已经使用了合理的时钟架构，不需要额外启用FCLK_CLK1~3。**

原因：

1. **视频IP有独立的时钟域**
   - Clock Wizard 已提供像素时钟 (25MHz) 和 TMDS 时钟 (125MHz)
   - VTC 和 HDMI 输出使用像素时钟
   - 这是跨时钟域设计，符合Xilinx视频IP的标准用法

2. **VDMA需要高速时钟**
   - VDMA运行在FCLK_CLK0 (150MHz)，是AXI总线时钟
   - 这是合理的配置，VDMA需要足够的带宽处理数据

3. **摄像头有独立时钟**
   - OV5640 输出自己的像素时钟 (cam_pclk)
   - Clock Wizard 提供 24MHz 系统时钟 (xclk) 给摄像头

### 2.2 可能的优化方案

| 方案 | 描述 | 是否推荐 | 原因 |
|------|------|----------|------|
| 启用FCLK_CLK1 | 为视频IP提供独立时钟 | ❌ 不需要 | Clock Wizard已满足需求 |
| 修改像素时钟 | 调整HDMI输出分辨率 | ⚠️ 可选 | 取决于显示需求 |
| 添加时钟约束 | 改善时序收敛 | ✅ 推荐 | 确保CDC正确处理 |

---

## 三、时序问题分析

### 3.1 原始问题 (200MHz)

```
WNS = -1.177 ns
TNS = -17.312 ns
Failing Endpoints = 69
违例位置: VDMA S2MM Scatter模块
```

### 3.2 修改后 (150MHz)

用户已将FCLK_CLK0修改为150MHz，预期效果：

- 时钟周期从 5ns 增加到 6.67ns
- 增加了 1.67ns 的时序裕量
- 预计可以解决大部分时序违例

---

## 四、跨时钟域 (CDC) 检查

### 4.1 时钟域交叉

| 源时钟域 | 目标时钟域 | 涉及IP | CDC处理 |
|----------|------------|--------|---------|
| FCLK_CLK0 (150MHz) | pclk (25MHz) | v_axi4s_vid_out | ✅ IP内置CDC |
| cam_pclk (外部) | FCLK_CLK0 | v_vid_in_axi4s | ✅ IP内置CDC |
| FCLK_CLK0 | FCLK_CLK0 | VDMA内部 | ✅ 同步 |

### 4.2 建议添加的时序约束

在 `pin.xdc` 中添加：

```tcl
# 摄像头时钟约束 (假设最大像素时钟为50MHz)
create_clock -period 20.000 -name cam_pclk [get_ports cam_pclk_0]

# 标记异步时钟域
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] \
                                  -group [get_clocks -include_generated_clocks cam_pclk]

# Clock Wizard 输出时钟已自动约束
```

---

## 五、修改记录

### 5.1 已完成的修改

| 修改项 | 修改前 | 修改后 | 状态 |
|--------|--------|--------|------|
| FCLK_CLK0频率 | 200 MHz | 150 MHz | ✅ 已完成 |
| 时序收敛检查 | WNS=-1.177ns | 待验证 | ⏳ 待执行 |

### 5.2 待执行的修改

| 序号 | 任务 | 优先级 |
|------|------|--------|
| 1 | 重新生成Block Design输出产品 | 高 |
| 2 | 重新综合设计 | 高 |
| 3 | 验证时序收敛 | 高 |
| 4 | 添加摄像头时钟约束 | 中 |
| 5 | 导出新的XSA文件 | 高 |

---

## 六、HDMI分辨率与时钟计算

### 6.1 像素时钟计算

当前配置: 640 × 480 @ 60Hz

```
标准VESA时序:
  水平总像素 (H_TOTAL) = 800
  垂直总行数 (V_TOTAL) = 525
  刷新率 = 60 Hz

像素时钟 = H_TOTAL × V_TOTAL × 刷新率
        = 800 × 525 × 60
        = 25,200,000 Hz ≈ 25.2 MHz

Clock Wizard CLKOUT1 = 25 MHz (接近标准值)
```

### 6.2 TMDS时钟

```
TMDS串行时钟 = 像素时钟 × 10 (串行编码)
但HDMI使用DDR，所以:
TMDS时钟 = 像素时钟 × 5

当前: 25 MHz × 5 = 125 MHz ✓
```

---

## 七、总结

### 7.1 时钟架构评估

**结论: 当前时钟架构设计合理，不需要启用额外的Zynq FCLK输出。**

关键点：
1. ✅ VDMA运行在高速AXI时钟域 (150MHz)
2. ✅ 视频输出使用独立像素时钟 (25MHz)
3. ✅ HDMI TMDS时钟正确生成 (125MHz)
4. ✅ 摄像头使用独立时钟域
5. ✅ 所有跨时钟域转换由IP自动处理

### 7.2 下一步操作

1. **重新综合并验证时序** - 确认150MHz下时序收敛
2. **导出新的XSA** - 更新Vitis工程
3. **编写Vitis程序** - 配置VDMA双通道

---

## 八、TCL命令记录

### 8.1 修改FCLK_CLK0频率

```tcl
# 打开工程
open_project vmda_HDMI_cam/vmda_test.xpr
open_bd_design {vmda_test.srcs/sources_1/bd/design_1/design_1.bd}

# 修改频率为150MHz
set_property CONFIG.PCW_CLK0_FREQ 150000000 [get_bd_cells processing_system7_0]

# 保存
save_bd_design
close_bd_design [get_bd_designs design_1]
close_project
```

### 8.2 重新生成输出产品

```tcl
open_project vmda_HDMI_cam/vmda_test.xpr
generate_target all [get_files vmda_test.srcs/sources_1/bd/design_1/design_1.bd]
```

---

*文档结束*
