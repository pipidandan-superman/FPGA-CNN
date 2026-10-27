#!/usr/bin/env python3
"""
CNN推理验证脚本
对比Python实现与C实现的输出
"""

import numpy as np
import re

# 读取参数
def read_params(filename):
    values = []
    with open(filename, 'r') as f:
        for line in f:
            match = re.search(r'=\s*([-\d.]+)', line)
            if match:
                values.append(float(match.group(1)))
    return np.array(values)

# 加载参数
print("Loading parameters...")
conv_w = read_params('Conv_W.txt').reshape(30, 5, 5)  # [30, 5, 5]
conv_b = read_params('Conv_B.txt')  # [30]
affine1_w = read_params('Affine1_W.txt').reshape(100, 4320)  # [100, 4320]
affine1_b = read_params('Affine1_B.txt')  # [100]
affine2_w = read_params('Affine2_W.txt').reshape(10, 100)  # [10, 100]
affine2_b = read_params('Affine2_B.txt')  # [10]

print(f"Conv: {conv_w.shape}, {conv_b.shape}")
print(f"FC1: {affine1_w.shape}, {affine1_b.shape}")
print(f"FC2: {affine2_w.shape}, {affine2_b.shape}")

def conv2d(x, weights, bias):
    """2D卷积"""
    # x: [28, 28], weights: [30, 5, 5], bias: [30]
    out = np.zeros((30, 24, 24))
    for oc in range(30):
        for oy in range(24):
            for ox in range(24):
                sum_val = bias[oc]
                for ky in range(5):
                    for kx in range(5):
                        sum_val += x[oy + ky, ox + kx] * weights[oc, ky, kx]
                out[oc, oy, ox] = sum_val
    return out

def relu(x):
    return np.maximum(0, x)

def maxpool2d(x):
    """2x2最大池化"""
    # x: [30, 24, 24]
    out = np.zeros((30, 12, 12))
    for c in range(30):
        for oy in range(12):
            for ox in range(12):
                out[c, oy, ox] = np.max(x[c, oy*2:oy*2+2, ox*2:ox*2+2])
    return out

def forward(x):
    """前向推理"""
    # 卷积
    x = conv2d(x, conv_w, conv_b)
    # ReLU
    x = relu(x)
    # 池化
    x = maxpool2d(x)
    # 展平
    x = x.flatten()  # [4320]
    # FC1
    x = np.dot(affine1_w, x) + affine1_b
    # ReLU
    x = relu(x)
    # FC2
    x = np.dot(affine2_w, x) + affine2_b
    return x

# 测试用例
print("\n=== Test Cases ===")

# 测试1: 全0输入
x = np.zeros((28, 28))
scores = forward(x)
print(f"全0输入: result={np.argmax(scores)}, scores={scores}")

# 测试2: 全1输入
x = np.ones((28, 28))
scores = forward(x)
print(f"全1输入: result={np.argmax(scores)}, scores={scores}")

# 测试3: 随机输入
np.random.seed(42)
x = (np.random.rand(28, 28) > 0.5).astype(float)
scores = forward(x)
print(f"随机输入: result={np.argmax(scores)}, non-zero={np.sum(x)}")

# 测试4: 模拟数字"1"（中间一条竖线）
x = np.zeros((28, 28))
x[5:23, 12:16] = 1
scores = forward(x)
print(f"模拟'1': result={np.argmax(scores)}, non-zero={np.sum(x)}")

# 测试5: 模拟数字"0"（圆环）
x = np.zeros((28, 28))
x[5:23, 5:7] = 1
x[5:23, 21:23] = 1
x[5:7, 5:23] = 1
x[21:23, 5:23] = 1
scores = forward(x)
print(f"模拟'0': result={np.argmax(scores)}, non-zero={np.sum(x)}")

# 测试6: 模拟数字"5"
x = np.zeros((28, 28))
x[5:7, 8:20] = 1  # 顶部横线
x[5:14, 8:10] = 1  # 左上竖线
x[12:14, 8:20] = 1  # 中间横线
x[12:23, 18:20] = 1  # 右下竖线
x[21:23, 8:20] = 1  # 底部横线
scores = forward(x)
print(f"模拟'5': result={np.argmax(scores)}, non-zero={np.sum(x)}")

print("\n如果所有测试结果都是同一个数字，说明参数或权重有问题")
