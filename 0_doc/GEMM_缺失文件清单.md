# GEMM 文件需求与现状清单

- 日期：2026-10-26
- 参考资料根目录：`E:\FPGA_Project\参考资料`

## 1. 已找到并确认可用的资料

### 全连接参数

参考目录 `05_python` 中的以下文件与当前工程 `10_cnn` 对应文件的 SHA256 完全一致，无需重复提供：

- `Affine1_W.txt`：100×4320 浮点权重。
- `Affine1_B.txt`：100 个浮点偏置。
- `Affine2_W.txt`：10×100 浮点权重。
- `Affine2_B.txt`：10 个浮点偏置。

### 训练与数据

- `05_python/params.pkl`：原始训练参数。
- `05_Python训练代码/python_train.zip`：包含训练、网络层、优化器、测试及 MNIST 数据脚本。
- `05_python/t10k-images.idx3-ubyte`、`t10k-labels.idx1-ubyte`：MNIST 测试数据。
- `05_python/cnn_predit.py`：浮点前向参考。
- `05_python/fpga_cnn_predit.py`：已有硬件参考思路。
- `05_python/image.csv`、`pool.csv`、`pool_0.csv`、`Affine1.csv` 等：部分中间结果。

注意：参考 `fpga_cnn_predit.py` 使用 0/255 输入和 Conv 8192 量化尺度；当前工程的识别前端使用 0/1 输入、Conv 尺度 97.625622，池化输出还采用 HWC 排列。因此参考 CSV 可用于理解网络，但不能直接声明为当前 PL 的 bit-exact golden。

## 2. 当前仍缺少、由设计阶段生成的文件

以下不是继续设计的阻塞项，由参数与验证脚本生成：

### 量化配置

- FC1/FC2 权重 scale。
- FC1 输出激活 scale。
- bias 对齐尺度。
- 反量化 multiplier/shift。
- 舍入、饱和和位宽配置。
- 机器可读量化配置 JSON 及 RTL/C 参数头。

### DDR 参数镜像

- FC1 INT8 权重：转置、CHW/HWC 映射、tile 化、N 方向补零。
- FC2 INT8 权重：相同处理。
- 两层 bias 的对齐整数及参数块布局。
- DDR 二进制镜像和用于 PS 初始化的 C 数组/头文件。

### 完整逐层定点 golden

每组测试至少包括：

| 数据 | 数量/格式 | 用途 |
|---|---|---|
| 28×28 二值输入 | 784×1bit | 端到端输入 |
| Pool 输出 | 4320×INT16，HWC | FC1 直接输入 |
| FC1 ReLU 前结果 | 100×有符号累加值 | MAC/bias 对拍 |
| FC1 ReLU 后结果 | 100×INT16 | 后处理与 PP 对拍 |
| FC2 logits | 10×有符号整数 | FC2 对拍 |
| digit | 0~9 | Argmax/ROM 对拍 |

测试向量包含全零、全一、固定随机、MNIST 样本，以及负数、饱和、并列最大值的定向用例。

## 3. 独立仿真需要生成的辅助文件

- 小矩阵 GEMM golden。
- 全尺寸 FC1/FC2 输入和期望输出 HEX/MEM。
- DDR 参数镜像的仿真模型数据。
- AXI 随机延迟测试配置。
- 自检查 SystemVerilog/Verilog testbench。
- 仿真通过标志和逐层比对日志。

这些文件由 `11_python/gemm` 和 `3_sim/GEMM` 下的新脚本生成，不需要手工提供。

## 4. 仍需明确的非文件参数

1. GEMM 与 AXI 的目标时钟；未指定时先用参数化独立仿真，不在此阶段承诺板级频率。
2. 是否允许为参数 DMA 新增独立 HP 端口。
3. 目标识别帧率、可接受延迟及 DSP/BRAM 上限。
4. “层间 PP”是否也包含现有 Conv→Pool；当前计划默认只改造 Pool 之后的链路。

## 5. 当前结论

现有参考资料已经满足开始独立 GEMM 设计和生成验证向量的要求，没有因缺文件而阻塞的项目。后续若需要复现训练准确率或修改网络，再使用训练压缩包与原始 checkpoint；若只部署当前参数，可直接从已经核对一致的 TXT 权重生成 DDR 镜像。
