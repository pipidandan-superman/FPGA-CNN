# 工程修改记录

> 日期: 2026/04/19
> 工程: 4_cam_vdma_hdmi
> 操作者: Claude Code

---

## 一、修改概述

针对OV5640摄像头采集到HDMI显示项目，完成以下分析和修改：

| 序号 | 修改内容 | 状态 |
|------|----------|------|
| 1 | 时钟架构分析 | ✅ 完成 |
| 2 | 验证FCLK_CLK0频率(150MHz) | ✅ 完成 |
| 3 | 重新生成Block Design输出产品 | ✅ 完成 |
| 4 | 重新综合实现 | ✅ 完成 |
| 5 | 时序验证 | ✅ **WNS = 0.290ns, 时序收敛!** |
| 6 | 创建Vitis程序代码 | ✅ 完成 |
| 7 | 导出新XSA | ✅ 完成 |
| 8 | Vitis应用程序编译 | ✅ 完成 |

### 1.1 重建说明

由于部分IP综合失败，需要执行完整重建流程：
1. 重置所有运行
2. 重新生成Block Design输出产品
3. 综合所有IP
4. 综合顶层设计
5. 实现设计
6. 验证时序
7. 生成Bitstream
8. 导出XSA

### 1.2 时序验证结果 ✅

```
时钟: clk_fpga_0 @ 150MHz (周期 6.666ns)

Setup检查:
  WNS (Worst Negative Slack): 0.290 ns ✅
  TNS (Total Negative Slack): 0.000 ns
  Failing Endpoints: 0

Hold检查:
  WHS (Worst Hold Slack): 0.007 ns ✅
  THS (Total Hold Slack): 0.000 ns
  Failing Endpoints: 0

结论: 时序完全收敛！
```

### 1.3 生成的文件

| 文件 | 路径 | 大小 |
|------|------|------|
| Bitstream | vmda_HDMI_cam/vmda_test.runs/impl_1/design_1_wrapper.bit | 2.0 MB |
| XSA | vmda_HDMI_cam/vitis/design_1_wrapper.xsa | 272 KB |
| 时序报告 | help/timing_summary.rpt | - |

---

## 二、时钟架构分析结果

### 2.1 问题回答: 是否需要多个Zynq输出时钟？

**结论: 不需要。当前设计已使用合理的时钟架构。**

原因:
1. Clock Wizard已提供独立的像素时钟(25MHz)和TMDS时钟(125MHz)
2. 摄像头使用自己的像素时钟(外部输入)
3. VDMA运行在高速AXI时钟域(150MHz)是正确的配置
4. 所有跨时钟域转换由IP自动处理

### 2.2 当前时钟配置

| 时钟源 | 频率 | 用途 |
|--------|------|------|
| FCLK_CLK0 (Zynq) | 150 MHz | AXI总线、VDMA、视频IP AXI Stream |
| pclk (Clock Wizard) | 25 MHz | VTC、HDMI像素时钟 |
| pclk_x5 (Clock Wizard) | 125 MHz | HDMI TMDS串行时钟 |
| xclk (Clock Wizard) | 24 MHz | OV5640系统时钟 |
| cam_pclk (外部) | ~30 MHz | OV5640像素时钟 |

---

## 三、时序问题解决

### 3.1 原始问题
```
时钟: FCLK_CLK0 = 200MHz (周期5ns)
WNS: -1.177 ns
TNS: -17.312 ns
Failing Endpoints: 69
违例位置: VDMA S2MM Scatter模块
```

### 3.2 解决方案
用户已将FCLK_CLK0从200MHz降低到150MHz:
- 周期从5ns增加到6.67ns
- 增加1.67ns时序裕量
- 预期可解决时序违例

---

## 四、生成的文件

### 4.1 帮助文档
| 文件 | 路径 | 说明 |
|------|------|------|
| implementation_plan.md | help/ | 实施计划文档 |
| clock_architecture_analysis.md | help/ | 时钟架构详细分析 |
| modification_log.md | help/ | 本修改记录 |

### 4.2 TCL脚本
| 文件 | 说明 |
|------|------|
| check_clock.tcl | 时钟配置检查脚本 |
| check_clock2.tcl | 详细时钟分析脚本 |
| analyze_clock4.tcl | 时钟网络映射脚本 |
| modify_clock.tcl | 时钟修改脚本 |
| synthesize.tcl | 综合实现脚本 |

### 4.3 Vitis程序
| 文件 | 说明 |
|------|------|
| cam_vdma_hdmi.c | 摄像头采集到HDMI显示的完整程序 |

---

## 五、Vitis程序说明

### 5.1 程序功能
`cam_vdma_hdmi.c` 实现了完整的摄像头采集到HDMI显示功能：

1. **VDMA复位** - 复位MM2S和S2MM通道
2. **S2MM配置** - 配置摄像头数据写入DDR
3. **MM2S配置** - 配置DDR数据读取到HDMI
4. **状态监控** - 实时监控VDMA状态

### 5.2 关键配置参数
```c
#define H_ACTIVE    640     // 水平分辨率
#define V_ACTIVE    480     // 垂直分辨率
#define STRIDE      2560    // 每行字节数 (640*4)
```

### 5.3 使用方法
1. 等待综合实现完成
2. 导出新的XSA文件
3. 在Vitis中创建新应用工程
4. 复制 `cam_vdma_hdmi.c` 到src目录
5. 编译并下载到板卡

---

## 六、待完成事项

### 6.1 高优先级
- [ ] 等待综合实现完成
- [ ] 验证时序收敛 (WNS >= 0)
- [ ] 导出新的XSA文件
- [ ] 更新Vitis BSP

### 6.2 中优先级
- [ ] 测试彩条显示 (验证HDMI输出链路)
- [ ] 测试摄像头配置 (验证OV5640配置)
- [ ] 完整系统联调

### 6.3 可选优化
- [ ] 添加摄像头时钟约束
- [ ] 修改HDMI输出分辨率
- [ ] 添加帧率统计功能

---

## 七、TCL命令快速参考

### 7.1 打开工程
```tcl
open_project E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.xpr
open_bd_design {E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd}
```

### 7.2 修改时钟频率
```tcl
set_property CONFIG.PCW_CLK0_FREQ 150000000 [get_bd_cells processing_system7_0]
save_bd_design
```

### 7.3 重新生成
```tcl
generate_target all [get_files E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd]
```

### 7.4 综合
```tcl
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
```

### 7.5 实现
```tcl
launch_runs impl_1 -jobs 4
wait_on_run impl_1
```

### 7.6 导出XSA
```tcl
write_hw_platform -fixed -force -file E:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vitis/design_1_wrapper.xsa
```

---

## 八、注意事项

1. **时序收敛**: 150MHz下应能解决时序违例，如仍有问题可进一步降低频率
2. **分辨率匹配**: 确保OV5640输出、VDMA配置、HDMI输出分辨率一致
3. **帧缓冲**: 使用三缓冲避免画面撕裂
4. **缓存刷新**: VDMA操作DDR时无需CPU刷新缓存

---

*文档结束*
