#!/usr/bin/env python3
"""
CNN参数转换脚本
将10_cnn文件夹中的参数文件转换为C数组头文件
"""

import os
import re

# 输入输出路径
INPUT_DIR = r"E:\FPGA_Project\2020_2\CNN\cam_vdma_hdmi_true\10_cnn"
OUTPUT_FILE = r"E:\FPGA_Project\2020_2\CNN\cam_vdma_hdmi_true\7_proj\vmda_HDMI_cam\vitis\vdma_ctrl\src\cnn_params.h"

def parse_param_file(filepath):
    """解析参数文件，提取浮点数值"""
    values = []
    with open(filepath, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            match = re.search(r'=\s*([-\d.]+)', line)
            if match:
                values.append(float(match.group(1)))
    return values

def write_array(f, name, values, shape_comment=""):
    """写入C数组定义，使用专门section"""
    f.write(f"// {name}: {len(values)} elements {shape_comment}\n")
    f.write(f"const float {name}[{len(values)}] __attribute__((section(\".cnn_params\"))) = {{\n")

    for i, v in enumerate(values):
        if i % 10 == 0:
            f.write("    ")
        f.write(f"{v:.6f}f")
        if i < len(values) - 1:
            f.write(", ")
        if i % 10 == 9:
            f.write("\n")

    if len(values) % 10 != 0:
        f.write("\n")
    f.write("};\n\n")

def main():
    print("Parsing parameter files...")

    conv_w = parse_param_file(os.path.join(INPUT_DIR, "Conv_W.txt"))
    conv_b = parse_param_file(os.path.join(INPUT_DIR, "Conv_B.txt"))
    affine1_w = parse_param_file(os.path.join(INPUT_DIR, "Affine1_W.txt"))
    affine1_b = parse_param_file(os.path.join(INPUT_DIR, "Affine1_B.txt"))
    affine2_w = parse_param_file(os.path.join(INPUT_DIR, "Affine2_W.txt"))
    affine2_b = parse_param_file(os.path.join(INPUT_DIR, "Affine2_B.txt"))

    print(f"Conv_W: {len(conv_w)} (expected: 30*5*5=750)")
    print(f"Conv_B: {len(conv_b)} (expected: 30)")
    print(f"Affine1_W: {len(affine1_w)} (expected: 4320*100=432000)")
    print(f"Affine1_B: {len(affine1_b)} (expected: 100)")
    print(f"Affine2_W: {len(affine2_w)} (expected: 100*10=1000)")
    print(f"Affine2_B: {len(affine2_b)} (expected: 10)")

    print(f"\nWriting to {OUTPUT_FILE}...")

    with open(OUTPUT_FILE, 'w') as f:
        f.write("/******************************************************************************\n")
        f.write(" * CNN Parameters Header - Auto Generated\n")
        f.write(" * Network: Conv(30,5x5)->ReLU->MaxPool(2x2)->FC(4320,100)->ReLU->FC(100,10)\n")
        f.write(" ******************************************************************************/\n\n")
        f.write("#ifndef CNN_PARAMS_H\n")
        f.write("#define CNN_PARAMS_H\n\n")
        f.write("#include \"xil_types.h\"\n\n")

        write_array(f, "conv_weight", conv_w, "[30][5][5]")
        write_array(f, "conv_bias", conv_b, "[30]")
        write_array(f, "affine1_weight", affine1_w, "[100][4320]")
        write_array(f, "affine1_bias", affine1_b, "[100]")
        write_array(f, "affine2_weight", affine2_w, "[10][100]")
        write_array(f, "affine2_bias", affine2_b, "[10]")

        f.write("// Layer dimensions\n")
        f.write("#define CONV_IN_SIZE    28\n")
        f.write("#define CONV_KERNEL_SIZE 5\n")
        f.write("#define CONV_OUT_SIZE   24\n")
        f.write("#define CONV_CHANNELS   30\n")
        f.write("#define POOL_OUT_SIZE   12\n")
        f.write("#define FC1_INPUT       4320\n")
        f.write("#define FC1_OUTPUT      100\n")
        f.write("#define FC2_OUTPUT      10\n\n")

        f.write("#endif // CNN_PARAMS_H\n")

    print("Done!")

if __name__ == "__main__":
    main()
