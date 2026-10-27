# FC1/FC2 共享 GEMM 设计计划书

- 日期：2026-10-26
- 目标器件：Xilinx Zynq-7010（xc7z010clg400-1）
- 新增 RTL 目录：`2_rtl/GEMM`
- 验证原则：先完成独立 RTL 仿真，通过后再修改现有 Block Design；独立验证阶段不改变摄像头、VDMA、HDMI 通路。

## 1. 设计目标

1. 将原 PS 侧的 FC1（4320→100）和 FC2（100→10）全部迁移到 PL。
2. FC1、FC2 共用同一套 GEMM 运算硬件，通过层描述符分时执行。
3. 两层权重和偏置均存放在 DDR，按与计算匹配的 tile 分批搬运到片上。
4. 参数 tile 使用 PP 双缓冲，尽量用当前 tile 的计算时间覆盖下一 tile 的 DMA 时间。
5. Pool→FC1、FC1→FC2、FC2→Argmax 使用帧级 PP 交接。
6. 不做 Softmax，直接比较 FC2 的 10 个有符号 logits。
7. Argmax 输出 4bit 数字，经跨时钟同步后直接控制现有数字 ROM，不再经过 PS 写 AXI-Lite 的结果链路。

## 2. GEMM 驻留类型

本设计采用 **输出驻留（Output Stationary，OS）**。

对于每个输出 tile：

- 8 个输出累加器在整个 K 方向计算期间驻留，不在 K 未完成时写回。
- 输入激活按 k 顺序读取，并广播到 8 个 MAC Lane。
- 每个周期读入 8 个输出通道对应的权重。
- 权重只在当前 k/tile 使用，属于 DDR→片上 PP→PE 的流动数据，不是权重驻留。
- K 方向结束后，才执行 bias、反量化、ReLU（仅 FC1）、饱和和写回。

选择输出驻留的原因：全连接是 M=1 的 GEMM，输出最多只有 100 个数，驻留累加器的成本很低；FC1 权重有 432000 个，无法长期驻留于 Zynq-7010 片上 BRAM；输出驻留还能避免 K 方向部分和频繁读写 BRAM/DDR。

## 3. 数学定义与参数布局

统一计算：

```text
Y[1×N] = X[1×K] × W[K×N] + B[1×N]
```

层配置：

| 层 | K | N | 激活输出 | 后处理 |
|---|---:|---:|---|---|
| FC1 | 4320 | 100 | 100×INT16 | bias、反量化、ReLU、饱和 |
| FC2 | 100 | 10 | 10×有符号 logits | bias，不做 Softmax |

原始权重为 `[N][K]`。离线转换为 DDR 友好的 `[n_tile][k_tile][k][n_lane]`，使同一周期所需的 8 个权重连续存放。

N 方向按 8 对齐：FC1 的 100 补到 104，FC2 的 10 补到 16；补齐权重为 0，写回时只写有效输出。

Pool 输入保持现有 HWC 顺序：

```text
hwc_index = y×12×30 + x×30 + c
```

原 FC 权重对应 CHW，因此参数生成脚本必须同时完成 CHW→HWC 索引映射、权重转置、tile 化和补零。

## 4. 共享 GEMM 数据通路

```text
Pool → Pool/FC1 Frame PP → 共享GEMM(FC1)
                             ↓
                         FC1/FC2 Frame PP
                             ↓
                         共享GEMM(FC2)
                             ↓
                         FC2 Logits PP
                             ↓
                           Argmax
                             ↓
                       CDC与结果保持 → 数字ROM
```

共享意味着 FC1 和 FC2 不并行计算；性能估算必须按两层串行执行。层间 Frame PP 用于数据隔离和规范握手，参数 Tile PP 才负责 DMA/计算重叠。

建议第一版参数：

| 参数 | 初值 | 说明 |
|---|---:|---|
| PE_N | 8 | 8 条输出 MAC Lane |
| ACT_W | 16 | 层间激活位宽 |
| WEIGHT_W | 8 | DDR 权重位宽 |
| ACC_W | 40 | 共享累加器位宽 |
| MAX_TILE_K | 160 | 最大 K tile 长度 |

每个周期读取一个激活和 8 个权重，执行 8 个 MAC。FC1 可使用 TILE_K=160，K 方向恰好 27 个 tile；FC2 可使用较小的运行时 tile_k，复用同一物理参数 PP。

## 5. 官方 DMA、DDR 参数与 Tile PP

FC1 INT8 权重约 422KiB，不能全部放入片上。FC1、FC2 的权重和 bias 都放 DDR，片上只保存当前和下一个参数 tile。

**所有 DDR 大数组、权重和偏置搬运都必须使用 Vivado 官方 AXI DMA IP，不允许自写 AXI 主控 DMA 进入正式设计。** 当前采用 MM2S-only、64bit、直接寄存器模式，PS 按以下顺序发起四段传输：

```text
DDR → Xilinx AXI DMA (MM2S) → AXI4-Stream
    → FC1 bias → FC1 weights → FC2 bias → FC2 weights
    → 参数 Tile PP → 共享 GEMM / Bias BRAM
```

每段传输结束由官方 DMA 产生一次 `TLAST`；`gemm_top` 用段内字数识别参数类型，并在权重段内部生成与 GEMM 匹配的 tile-last。AXI4-Stream 反压直接阻止 DMA 继续送入未准备好的 bank。早期自写 DMA 已移入 `3_sim/GEMM/models`，只能作为行为参考，不属于正式 RTL，也不能替代官方 IP 验证。

以 PE_N=8、TILE_K=160、INT8 权重为例：

```text
单个权重 bank = 160×8×1B = 1280B
双 bank 权重存储 = 2560B
```

计算和搬运时间近似为：

```text
Tcompute ≈ TILE_K 个周期
Tdma ≈ TILE_K×PE_N×权重字节数/AXI每周期字节数 + 突发与仲裁开销
```

INT8、8 Lane、64bit AXI 时，理论载荷速率匹配。通过预取、连续突发和较大的 tile 摊薄开销；首个 tile 的填充延迟保留。若 DMA 未准备好，GEMM 必须 stall，禁止使用无效 bank。

现有 VDMA 使用 HP0/HP1，集成时优先评估新增独立 HP 端口给 GEMM 参数 DMA，减少与视频链路争用。

## 6. Frame PP 与反压

| 位置 | 单 bank 内容 | 作用 |
|---|---|---|
| Pool→FC1 | 4320×16bit | 隔离池化写帧和 GEMM 读帧 |
| FC1→FC2 | 100×16bit | 隔离 FC1 输出与 FC2 输入 |
| FC2→Argmax | 10×40bit | 隔离 logits 写出与比较 |

每个 PP 使用 write/read bank、wr_done、rd_done、full/empty 和 frame_id。只有生产者完成且消费者释放 bank 后才交换，禁止覆盖正在读取的数据。

摄像头显示链路不能因识别阻塞。若识别输入两个 bank 都不可写，则丢弃新的识别帧，HDMI 显示继续运行。

现有 Conv→Pool 当前为流式连接。本计划的新增 PP 范围是 Pool→FC1→FC2→Argmax；若要求 Conv→Pool 也改为 PP，需要额外两块 24×24×30×16bit buffer，合计约 67.5KiB，集成前单独确认。

## 7. 定点格式

建议基线：

- 权重：对称 INT8，zero_point=0。
- 激活：INT16，zero_point=0。
- 累加器：有符号 40bit。
- FC1：bias 对齐到累加器比例，随后反量化、ReLU、饱和到 INT16。
- FC2：保留统一比例的有符号 logits，直接比较。
- 反量化：乘系数、舍入、移位，不在 RTL 中使用浮点除法。

当前 Pool 输入尺度为 `S_pool=97.625622`。新增 FC1 权重、FC1 输出激活和 FC2 权重尺度，由量化脚本固定并写入配置头文件。

舍入方式、饱和行为和负数的算术右移必须由 Python 定点 golden 与 RTL 共同固定，做到逐 bit 对齐。

## 8. Argmax 与 ROM 直连

Argmax 对 10 个有符号 logits 顺序比较，默认并列时保留较小索引。输出：

```text
digit[3:0]
digit_valid
```

由于 CNN 与 HDMI 可能不在同一时钟域，使用请求/应答 toggle 或等效握手机制同步；像素时钟域只在有效更新时改变 rom_sel，其余时间保持上一次结果。ROM 数据通路不经过 PS，也不做 Softmax。

## 9. RTL 划分

```text
2_rtl/GEMM/
├── gemm_top.v
├── gemm_engine.v
├── gemm_weight_dma.v
├── gemm_param_pp.v
├── gemm_frame_pp.v
├── gemm_post_process.v
├── fc2_argmax.v
├── digit_result_cdc.v
└── rom_ctrl_direct.v
```

仿真放在 `3_sim/GEMM`，参数生成脚本放在 `11_python/gemm`。

## 10. 独立验证与集成门

验证顺序：

1. GEMM 小矩阵有符号、负数、饱和及 tile 边界测试。
2. 参数 PP 与随机 AXI 延迟测试，检查 stall 和 bank 交换。
3. FC1 全尺寸逐输出对拍。
4. FC1→PP→FC2 全网络对拍。
5. Argmax、并列最大值和 ROM 选择测试。
6. Pool 输入到最终 digit 的端到端对拍。
7. 独立测试全部通过后，才进行 Block Design 集成。

任何性能数字必须由后续仿真或实测产生，不预先承诺 FPS、延迟或完全零 DMA stall。
