# 执行策略
1. 用工程实际结构建立讲解主线：输入图像 -> 预处理 -> CNN 特征提取 -> PS 分类 -> 显示。
2. 第一章先从“网络就是可调参数的函数”开始，用一次函数和二次函数说明参数、误差、梯度下降、泛化，再引出神经元、层、非线性和 CNN。
3. 第二章把抽象网络映射到本工程的张量尺寸和硬件模块，区分纯软件推理版与硬件加速版。
4. 第三章按完整 AI 项目生命周期讲解：任务定义、数据、模型选择、训练、验证、导出、量化、硬件映射、仿真、上板和闭环验证。
5. 在正文中明确：当前仓库提供导出的参数和推理/部署代码，但未提供训练脚本与数据集，因此训练部分应作为“从零复现所需流程”讲解，而不是声称已在仓库内完成。

# 关键证据文件
- `10_cnn/test_cnn_inference.py`
- `7_proj/vmda_HDMI_cam/vitis/vdma_ctrl/src/cnn_inference.c/.h`
- `7_proj/vmda_HDMI_cam/vitis/cam_vdma_hdmi/src/cnn_inference.c/.h`
- `2_rtl/data_pre/vid_to_gary.v`, `gray_to_bin.v`, `image_downsample.v`
- `2_rtl/PL_CNN/cnn_conv_5x5.v`, `cnn_pool_max.v`, `pool_to_ps.v`, `pp_ram_ctrl.v`
- `7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/design_1.bd`
- `11_python/conv_weight_gen.py`, `conv_bias_gen.py`
- `0_doc/rom时序.vsdx`, `6_visio/摄像头显示框架.vsdx`

# 风险与处理
- 工程同时保留纯软件推理版和硬件加速版，PPT 以 `vdma_ctrl` 硬件加速链路为主，并单页说明两者差异。
- 代码注释存在乱码，讲解以端口、参数和实际行为为准。
- 仓库没有训练代码，不能给出未经验证的训练超参数、准确率或数据集规模。
