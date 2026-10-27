def generate_bias_coe(input_file, output_file, w_scale, channels=30):
    biases = []

    # 1. 解析原始 txt 文件
    with open(input_file, 'r') as f:
        for line in f:
            if '=' in line:
                val_str = line.split('=')[1].replace(';', '').strip()
                biases.append(float(val_str))

    # 2. 使用与权重相同的 Scale 进行量化
    # 硬件结果 = Sum(Pixel * (W * Scale)) + (Bias * Scale)
    quantized_biases = []
    for b in biases:
        q_val = int(round(b * w_scale))
        # 16-bit 有符号数范围保护 [-32768, 32767]
        q_val = max(-32768, min(32767, q_val))
        quantized_biases.append(q_val)

    # 3. 写入 COE 文件 (16进制，16-bit位宽)
    with open(output_file, 'w') as f:
        f.write("; 5x5 CNN Bias ROM Initialization File\n")
        f.write(f"; Synchronized with Weight Scale: {w_scale:.6f}\n")
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")

        for i, val in enumerate(quantized_biases):
            # 转为 4 位 16 进制字符串 (16-bit)
            hex_val = f"{val & 0xFFFF:04X}"
            if i == len(quantized_biases) - 1:
                f.write(f"{hex_val};\n")
            else:
                f.write(f"{hex_val},\n")

    print(f"✅ 成功生成偏置 COE 文件: {output_file}")


# 执行转换 (请替换为你控制台输出的具体数值)
W_SCALE = 97.625622  # 示例数值，请务必填入你上一步得到的真实 Scale！
generate_bias_coe('Conv_B.txt', 'conv_bias_16b.coe', W_SCALE)