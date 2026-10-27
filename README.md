# FPGA-CNN：Zynq 手写数字识别系统

基于 **Xilinx Zynq-7010** 的 OV5640 摄像头实时手写数字识别工程。系统保持摄像头到 HDMI 的视频通路独立运行，在 PL 中完成图像预处理、卷积、池化以及 FC1/FC2 共享 GEMM 推理，最终由 Argmax 直接驱动数字 ROM 显示识别结果。

本仓库保留完整 RTL、Vivado/Vitis 工程、参数、仿真文件、实现报告、比特流、ELF 和历史资料，便于查看设计与继续开发。

## 1. 项目介绍

### 1.1 系统功能

- 通过 OV5640 采集 **640×480** 图像，经 VDMA、DDR 和 HDMI 实时显示。
- 从画面中央提取 **112×112 ROI**，完成灰度化、二值化和 4×4 投票下采样，得到 **28×28** 二值输入。
- PL 完成 5×5 卷积、ReLU 和 2×2 最大池化。
- FC1、FC2 在 PL 中复用同一套 **8 Lane、输出驻留（Output Stationary）GEMM** 硬件。
- PS 不执行全连接层，只负责 VDMA 和官方 AXI DMA 的参数搬运服务。
- FC2 输出 10 个有符号 logits，不做 Softmax；Argmax 结果经 CDC 后直接控制数字 ROM。
- 识别链路阻塞时可丢弃识别帧，不影响摄像头 HDMI 显示。

### 1.2 数据通路

```text
OV5640
  ├─→ Video Capture → AXI VDMA → DDR → AXI VDMA → HDMI 显示
  │
  └─→ 中央 112×112 ROI
        → 灰度化 / 二值化 / 4×4 下采样
        → 28×28 二值图像
        → Conv 5×5（30 通道）+ ReLU
        → 24×24×30
        → MaxPool 2×2
        → 12×12×30（HWC）
        → 帧级 PP / CDC
        → 共享 GEMM：FC1 4320→100 + ReLU
        → 共享 GEMM：FC2 100→10
        → Argmax
        → 数字 ROM → HDMI 右上角结果显示
```

### 1.3 网络与定点格式

| 层级 | 输入 | 输出 | 说明 |
|---|---|---|---|
| 预处理 | 112×112 ROI | 28×28×1 bit | 灰度、阈值二值化、投票下采样 |
| Conv | 28×28 | 24×24×30 | 5×5、stride=1、valid；INT8 权重、INT16 激活 |
| ReLU | 24×24×30 | 24×24×30 | 负数截断为 0 |
| MaxPool | 24×24×30 | 12×12×30 | 2×2、stride=2 |
| FC1 | 4320 | 100 | INT8 权重、INT16 激活、40 bit 累加器、ReLU |
| FC2 | 100 | 10 | 保留有符号 logits，不做 Softmax |
| Argmax | 10 | 0～9 | 并列时保留较小索引 |

共享 GEMM 每周期读取一个激活和 8 个 INT8 权重。参数经 **64 bit AXI4-Stream** 输入，权重按 tile 双缓冲；FC1 的 K=4320 按 160 分为 27 个 tile。详细设计见 [`0_doc/GEMM_设计计划书.md`](0_doc/GEMM_设计计划书.md)。

## 2. 硬件与软件环境

| 项目 | 配置 |
|---|---|
| FPGA / SoC | **Xilinx Zynq-7010，xc7z010clg400-1** |
| 封装 / 速度等级 | CLG400 / -1 |
| 开发工具 | **Vivado 2020.2、Vitis 2020.2** |
| 摄像头 | OV5640，SCCB 配置 |
| 显示 | HDMI，当前应用为 640×480 |
| 存储 | Zynq PS DDR，用于视频帧和 GEMM 参数 |
| 下载与调试 | USB-JTAG；串口输出需按 Vitis BSP/运行配置设置 |
| 板卡要求 | 与 [`4_constrain/pin.xdc`](4_constrain/pin.xdc) 引脚和电平兼容的 Zynq-7010 板卡 |

> 工程未指定具体开发板型号，不能仅凭器件型号推断板卡。换板时必须重新核对引脚、时钟、DDR 和 HDMI 电路。

主要时钟来自路由后时序报告：

| 时钟 | 频率 |
|---|---:|
| `clk_fpga_0`（CNN/GEMM 等） | 100 MHz |
| `clk_in1_0` / 50 MHz 时钟域 | 50 MHz |
| HDMI 像素时钟 | 25 MHz |
| HDMI 串行时钟 | 125 MHz |
| 摄像头 XCLK | 约 24.038 MHz |

## 3. 仓库目录

| 路径 | 内容 |
|---|---|
| `0_doc/` | GEMM 设计计划、文件清单和 ROM 时序图 |
| `1_log/` | 历史开发计划与验证记录 |
| `2_rtl/` | HDMI、OV5640、预处理、CNN、GEMM 等 RTL |
| `3_sim/` | 卷积 RTL 仿真 testbench |
| `4_constrain/` | 板级引脚 XDC |
| `6_visio/` | Visio 设计资料 |
| `7_proj/` | 完整 Vivado、Vitis、IP 工程及生成产物 |
| `8_num_coe/` | 数字显示、卷积参数等 COE 文件 |
| `9_ip/` | 自定义 AXI-Lite、ROM 等 IP 源文件 |
| `10_cnn/` | Conv、FC1、FC2 浮点参数 TXT |
| `11_python/` | COE 与 GEMM 定点参数/向量生成脚本 |
| `CNN_TEST/` | 早期卷积测试工程 |
| `Why_Systolic_Architectures.pdf` | 架构参考资料 |

主工程与应用入口：

- Vivado：[`7_proj/vmda_HDMI_cam/vmda_test.xpr`](7_proj/vmda_HDMI_cam/vmda_test.xpr)
- 当前应用：[`7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/src/cam_vdma_hdmi.c`](7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/src/cam_vdma_hdmi.c)
- GEMM DMA 驱动：[`7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/src/gemm_accel.c`](7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/src/gemm_accel.c)
- GEMM RTL：[`2_rtl/GEMM/`](2_rtl/GEMM/)

## 4. 使用说明

### 4.1 获取工程

```bash
git clone https://github.com/pipidandan-superman/FPGA-CNN.git
cd FPGA-CNN
```

仓库包含 Vivado/Vitis 生成目录，体积较大；请预留足够磁盘空间。Windows 下建议保持较短 checkout 路径。

### 4.2 使用仓库内已有比特流和 ELF

已有产物：

| 产物 | 路径 |
|---|---|
| FPGA 比特流 | `7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper.bit` |
| 当前应用 ELF | `7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/Debug/vdma_ctrl.elf` |
| 硬件描述 XSA | `7_proj/vmda_HDMI_cam/vitis/design_1_wrapper.xsa` |

操作步骤：

1. 按约束文件连接 OV5640、HDMI 和 JTAG，并检查供电与电平。
2. 使用 Vivado 2020.2 Hardware Manager 连接开发板，将上述 `.bit` 下载到 PL。
3. 在 Vitis 2020.2 中选择 `design_1_wrapper` 硬件平台和 `vdma_ctrl` 应用。
4. 在 `ps7_cortexa9_0` 上调试/运行 `vdma_ctrl.elf`。该方式用于 JTAG 调试，并非 SD 卡独立启动镜像。
5. 正常情况下，HDMI 显示摄像头画面，中央为识别 ROI，右上角显示分类数字；串口在数字变化时打印 `PL digit`。

参考校验值：

```text
design_1_wrapper.bit
SHA256: 1C2D081B695FECB42D168C6119F20B14F886FCE8CA9346D0AB22C69254947761

vdma_ctrl.elf
SHA256: 411F2657CF89DD9A91FD3D3337B3DB784B88E526368B18344E246F0A82DBB114
```

### 4.3 从源码重新构建

1. 用 **Vivado 2020.2** 打开 `7_proj/vmda_HDMI_cam/vmda_test.xpr`。
2. 检查工程相对路径、自定义 IP 仓库和约束文件是否被正确识别。
3. 打开 Block Design，确认无缺失模块/IP；必要时重新 Generate Output Products。
4. 依次运行 Synthesis、Implementation 和 Generate Bitstream。
5. Export Hardware，并选择 **Include bitstream**，更新 Vitis 硬件平台/XSA。
6. 在 Vitis 中重新构建平台、BSP 和 `vdma_ctrl` 应用，然后下载运行。

注意：

- 当前资源占用很高，建议优先使用相同工具版本和已有实现策略。
- 工程生成文件保留了原机器的绝对路径；迁移后应通过 IDE 重新关联平台/BSP，而不是直接照搬旧 Makefile 中的路径。
- `vdma_ctrl` 的 Debug 配置排除了 `src/main_vdma_read.c`，实际编译入口为 `cam_vdma_hdmi.c`、`debug_frame_capture.c` 和 `gemm_accel.c`。
- `cam_vdma_hdmi` 应用、`main_vdma_read.c` 和 `cam_vdma_hdmi/src/main_cnn.c` 属于历史或测试代码；当前 PL GEMM 版本请使用 **`vdma_ctrl`**。

### 4.4 重新生成卷积 COE

`11_python/conv_weight_gen.py` 和 `conv_bias_gen.py` 使用当前目录下的 `Conv_W.txt`、`Conv_B.txt`：

```powershell
cd 11_python
python conv_weight_gen.py
python conv_bias_gen.py
```

当前卷积量化尺度为 `97.625622`。更换权重后，应同步检查脚本中的 bias scale、生成 COE 以及所有依赖参数，不能只替换权重文件。

### 4.5 生成 GEMM 定点参数与验证向量

依赖 Python 3 和 NumPy，并需要额外准备 MNIST IDX 测试文件：

- `t10k-images.idx3-ubyte`
- `t10k-labels.idx1-ubyte`

这两个外部 MNIST 文件不在当前工程内。准备好后，在仓库根目录执行：

```bash
python -m pip install numpy
python 11_python/gemm/generate_vectors.py `
  --project-root . `
  --reference-dir /path/to/mnist `
  --out-dir build/gemm_vectors `
  --c-header build/gemm_params.h
```

PowerShell 使用反引号续行； Bash 请改为 `\`。脚本会生成量化配置、FC 参数 DDR 镜像、C 头文件以及逐层定点 golden 数据。生成后仍需进行 RTL 对拍和板级验证。

## 5. FPGA 硬件资源使用情况

来源：布局后的 [`design_1_wrapper_utilization_placed.rpt`](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_utilization_placed.rpt)。

- 工具：Vivado 2020.2
- 器件：7z010clg400-1
- 报告时间：2026-10-27
- 设计状态：Fully Placed

| 资源 | 已使用 | 可用 | 利用率 |
|---|---:|---:|---:|
| Slice LUTs | 14,077 | 17,600 | **79.98%** |
| ├─ LUT as Logic | 13,518 | 17,600 | 76.81% |
| └─ LUT as Memory | 559 | 6,000 | 9.32% |
| Slice Registers / FF | 14,013 | 35,200 | **39.81%** |
| Slice | 4,381 | 4,400 | **99.57%** |
| F7 Muxes | 83 | 8,800 | 0.94% |
| F8 Muxes | 1 | 4,400 | 0.02% |
| Block RAM Tile | 54 | 60 | **90.00%** |
| ├─ RAMB36/FIFO | 41 | 60 | 68.33% |
| └─ RAMB18 | 26 | 120 | 21.67% |
| DSP48E1 | 16 | 80 | **20.00%** |
| Bonded IOB | 26 | 100 | 26.00% |
| BUFGCTRL | 8 | 32 | 25.00% |
| PLLE2_ADV | 1 | 2 | 50.00% |

> **实现风险提示：** Slice 利用率达到 99.57%，BRAM Tile 达到 90%。即使 LUT 总数尚未达到 100%，布局拥塞和控制集限制仍可能导致修改后无法布局或时序退化。

## 6. 时序与实现报告

来源：路由后的 [`design_1_wrapper_timing_summary_routed.rpt`](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_timing_summary_routed.rpt)。

| 指标 | 数值 | 失败端点 |
|---|---:|---:|
| WNS（最差建立时间裕量） | **+0.326 ns** | 0 / 33,331 |
| TNS | 0.000 ns | 0 |
| WHS（最差保持时间裕量） | **+0.012 ns** | 0 / 33,233 |
| THS | 0.000 ns | 0 |
| WPWS（最差脉宽裕量） | **+3.750 ns** | 0 / 13,905 |
| TPWS | 0.000 ns | 0 |

报告原文结论：`All user specified timing constraints are met.`

实现状态：

- 27,169 / 27,169 个可布线网络全部完成布线，布线错误为 0。
- `write_bitstream completed successfully`。
- 最差建立路径位于 100 MHz `clk_fpga_0` 域，WNS 裕量较小，修改 RTL 后应重新检查。

**约束完整性警告：** “满足已设置约束”不等于所有路径均已被完整约束。报告还列出：

- 1,136 个寄存器/锁存器引脚没有由根时钟驱动的时钟；
- 3,474 个未约束内部端点；
- 10 个输入端口无 input delay、7 个输出端口无 output delay；
- 方法学报告包含 TIMING-17、异步驱动、LUT 异步复位和 CDC 布局等警告。

因此，在将本设计用于正式产品前，应补全摄像头像素时钟、输入/输出延迟及时钟域交叉约束，并逐项处理方法学警告。完整报告保存在 `7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/`。

## 7. 功耗估计

来源：[`design_1_wrapper_power_routed.rpt`](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_power_routed.rpt)。

| 项目 | 报告值 |
|---|---:|
| Total On-Chip Power | 1.773 W |
| Dynamic | 1.645 W |
| Device Static | 0.128 W |
| Junction Temperature | 45.4 ℃ |

这是 Vivado 的估计值，报告置信度为 **Low**，不能替代实测功耗、电源预算和热设计。

## 8. 关键地址与调试接口

当前 `vdma_ctrl` 软件使用以下地址；修改 Block Design 后必须同步更新软件或重新生成 `xparameters.h`：

| 功能 | 地址 |
|---|---|
| Pool / BRAM 调试窗口 | `0x40000000` |
| AXI VDMA | `0x43000000` |
| GEMM AXI DMA | `0x43010000` |
| GEMM AXI-Lite 控制 | `0x43C10000` |
| 视频帧缓冲起始地址 | `0x10000000` |
| 非侵入式调试图像捕获控制 | `0x11000000` |
| 调试图像捕获数据 | `0x11010000` |

`debug_frame_capture.c` 支持在不停止 VDMA 的情况下，通过 XSCT 请求抓取 ROI、Pool 数据和显示数字。使用调试捕获功能时，应确保 DDR 链接脚本及裸机内存分配不与 `0x11000000` 区域重叠。

## 9. 当前验证状态与限制

- 已保留成功完成布局、布线和比特流生成的实现结果，资源及时序数据来自仓库内的真实 Vivado 报告。
- 本次整理 README 未重新运行仿真、综合、实现或板上测试，也未声称识别准确率、FPS 或端到端延迟。
- `3_sim/` 当前只有卷积 testbench；GEMM 参数/golden 生成脚本存在，但完整 GEMM 自检查 testbench 和 MNIST 外部数据仍需补充。
- `0_doc/`、`1_log/` 中包含设计计划和历史记录，其中“待验证”“下一步”等描述不一定代表最新实现状态，应结合 RTL 和 2026-10-27 实现报告判断。
- 仓库同时保留历史 PS 浮点推理、彩条测试和当前 PL GEMM 应用，复现时不要混用入口。
- 为保留完整工程，Vivado 缓存、Vitis 工作区、BSP 和中间产物也包含在内；其中的旧绝对路径和 IDE 状态不代表新机器可直接使用。

## 10. 故障排查

- **无法打开工程或提示缺 IP：** 使用 Vivado 2020.2，检查 `2_rtl`、`9_ip`、`7_proj/ip_repo` 以及 Block Design 输出产品。
- **Vitis 编译找不到头文件或库：** 重新关联当前机器的 XSA、平台和 BSP，不要沿用生成 Makefile 中的旧绝对路径。
- **HDMI 无画面：** 先检查 50 MHz 输入、复位、OV5640 SCCB、VDMA 状态和 HDMI 引脚，再排查 CNN。
- **HDMI 正常但数字不更新：** 查看串口 GEMM 初始化/服务错误，检查 AXI DMA、参数地址、DDR Cache Flush 和 GEMM 状态寄存器。
- **重新实现失败或时序变差：** 优先关注 99.57% Slice、90% BRAM、控制集和布局拥塞，不要仅看 LUT 总利用率。
- **换板后异常：** 重新核对 XDC、DDR 配置、摄像头接口和时钟；不要直接沿用原板级配置。

## 11. 参考资料

- [GEMM 设计计划书](0_doc/GEMM_设计计划书.md)
- [GEMM 文件需求与现状清单](0_doc/GEMM_缺失文件清单.md)
- [完整资源报告](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_utilization_placed.rpt)
- [完整时序报告](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_timing_summary_routed.rpt)
- [布线状态报告](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_route_status.rpt)
- [功耗报告](7_proj/vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper_power_routed.rpt)

## 12. 第三方内容说明

Vivado/Vitis 生成代码、AMD/Xilinx IP 及参考资料保留原始文件和声明。仓库根目录当前未单独提供许可证；使用或再分发第三方内容前，请遵守其对应许可条款。
