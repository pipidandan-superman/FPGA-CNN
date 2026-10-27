import re


def generate_weight_coe(input_file, output_file, channels=30, weights_per_ch=25):
    weights = []

    # 1. 解析原始 txt 文件，提取浮点数
    with open(input_file, 'r') as f:
        for line in f:
            if '=' in line:
                # 匹配类似 "cnn_param_w[0] = -0.203352;" 的格式
                val_str = line.split('=')[1].replace(';', '').strip()
                weights.append(float(val_str))

    if len(weights) != channels * weights_per_ch:
        print(f"⚠️ 警告: 读取到 {len(weights)} 个权重，期望 {channels * weights_per_ch} 个！")

    # 2. 计算动态缩放因子 (Scale)
    max_abs_val = max(abs(w) for w in weights)
    # 留一点点裕量，避免四舍五入时刚好溢出 127
    scale_factor = 127.0 / max_abs_val
    print(f"🔍 权重分析完毕:")
    print(f"   最大绝对值: {max_abs_val:.6f}")
    print(f"   计算得出的缩放因子 (W_Scale): {scale_factor:.6f}")
    print(f"   (⚠️ 请记下这个 W_Scale，下一步处理偏置 Bias 时必须用到它！)")

    # 3. 进行 INT8 量化
    quantized_weights = []
    for w in weights:
        q_val = int(round(w * scale_factor))
        # 强制截断保护，确保落在 8-bit 有符号整数范围内 [-128, 127]
        q_val = max(-128, min(127, q_val))
        quantized_weights.append(q_val)

    # 4. 按通道拼接为 200-bit 的 Hex 字符串 (50个16进制字符)
    coe_lines = []
    for c in range(channels):
        start_idx = c * weights_per_ch
        end_idx = start_idx + weights_per_ch
        chunk = quantized_weights[start_idx:end_idx]

        # 【核心操作】：逆序拼接
        # RTL中 weight[0] 取的是 rom_data[7:0] (字符串最右边)
        # 所以遍历生成字符串时，必须把 chunk 倒过来 (从 weight[24] 开始拼，直到 weight[0])
        hex_str = "".join(f"{w & 0xFF:02X}" for w in reversed(chunk))
        coe_lines.append(hex_str)

    # 5. 写入 Vivado 标准的 .coe 文件格式
    with open(output_file, 'w') as f:
        f.write("; 5x5 CNN Weight ROM Initialization File\n")
        f.write(f"; Scale Factor used: {scale_factor:.6f}\n")
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")

        for i, line in enumerate(coe_lines):
            if i == len(coe_lines) - 1:
                f.write(f"{line};\n")  # 最后一个数据用分号结尾
            else:
                f.write(f"{line},\n")  # 其他数据用逗号结尾

    print(f"✅ 成功生成 COE 文件: {output_file} (共 {len(coe_lines)} 行数据)")


# 运行代码
if __name__ == "__main__":
    generate_weight_coe('Conv_W.txt', 'conv_weight_200b.coe')