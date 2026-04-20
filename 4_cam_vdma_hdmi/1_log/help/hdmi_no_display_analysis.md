# HDMI无显示问题分析与解决

> 日期: 2026/04/19
> 工程: 4_cam_vdma_hdmi
> 问题: Vitis程序运行后HDMI无显示

---

## 一、问题现象

用户报告在Vitis中运行程序后，HDMI显示器无任何显示。

---

## 二、问题分析

### 2.1 根本原因: VTC循环依赖

通过分析Block Design的连接关系，发现**VTC存在循环依赖**问题：

```
v_axi4s_vid_out/vtg_ce -----> v_tc/gen_clken
         ^                         |
         |                         |
         +-------------------------+
              (时序信号)
```

**问题描述**：
1. VTC (Video Timing Controller) 需要 `gen_clken=1` 才能生成视频时序信号
2. `v_axi4s_vid_out` 只有在收到有效视频数据时才输出 `vtg_ce=1`
3. `v_axi4s_vid_out` 需要 VTC 的时序信号才能正确处理视频数据
4. 这形成了一个"鸡生蛋，蛋生鸡"的死锁

**结果**：
- VTC无法启动时序生成
- `v_axi4s_vid_out`无法输出视频
- HDMI显示黑屏

### 2.2 VTC配置问题

从`design_1_v_tc_0_0.xci`中发现：

```tcl
HAS_AXI4_LITE = false
C_GENERATE_EN = 1
```

- VTC配置为生成模式（Generator Mode）
- **没有AXI-Lite接口**，无法通过软件控制
- 因此VTC完全依赖`gen_clken`信号启动

### 2.3 其他可能因素

| 因素 | 状态 | 影响 |
|------|------|------|
| VDMA STRIDE | 使用4字节对齐 | 24位数据可能有对齐问题，但不会导致完全无显示 |
| 帧缓冲初始化 | 未初始化 | DDR内容随机，应显示随机图案而非黑屏 |
| VDMA配置 | 正确 | 软件配置逻辑正确 |
| 时钟 | 已收敛 | WNS=0.290ns |

**结论**: 循环依赖是HDMI无显示的根本原因。

---

## 三、解决方案

### 3.1 方案: 将gen_clken连接到常量1

断开VTC的`gen_clken`与`v_axi4s_vid_out`的`vtg_ce`连接，改为连接到常量1。

**修改前**：
```
v_axi4s_vid_out/vtg_ce ---> v_tc/gen_clken
```

**修改后**：
```
xlconstant/dout (常量1) ---> v_tc/gen_clken
v_axi4s_vid_out/vtg_ce ---> (未连接)
```

**效果**：
- VTC持续生成时序信号
- `v_axi4s_vid_out`接收时序信号
- VDMA数据可以正确输出到HDMI

### 3.2 实施步骤

执行以下TCL脚本：

```bash
# 1. 修复循环依赖
vivado -mode tcl -source E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/fix_vtc_gen_clken.tcl

# 2. 重新构建
vivado -mode tcl -source E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/rebuild_after_fix.tcl
```

或者在Vivado TCL Console中：

```tcl
source E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/fix_vtc_gen_clken.tcl
source E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/help/rebuild_after_fix.tcl
```

---

## 四、验证方法

### 4.1 硬件验证

修复后，即使VDMA没有配置，HDMI也应显示某种图案（可能是随机数据或黑屏但有同步信号）。

### 4.2 软件验证

运行Vitis程序后：
- 检查VDMA状态寄存器是否有错误
- 观察帧计数是否在增加
- HDMI应显示摄像头图像

---

## 五、相关文件

| 文件 | 说明 |
|------|------|
| help/fix_vtc_gen_clken.tcl | 修复循环依赖的TCL脚本 |
| help/rebuild_after_fix.tcl | 修复后重新构建的TCL脚本 |
| help/hdmi_no_display_analysis.md | 本文档 |

---

*文档结束*
