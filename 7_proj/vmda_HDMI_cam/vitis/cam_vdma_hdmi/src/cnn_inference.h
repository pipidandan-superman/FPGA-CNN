/******************************************************************************
 * CNN推理引擎头文件
 *
 * 网络结构: 28x28 -> Conv(30,5x5) -> ReLU -> MaxPool(2x2) -> FC(4320,100) -> ReLU -> FC(100,10)
 * 输入: 28x28二值图像 (0或1)
 * 输出: 0-9的识别结果
 ******************************************************************************/

#ifndef CNN_INFERENCE_H
#define CNN_INFERENCE_H

#include "xil_types.h"

// 网络层尺寸定义
#define CNN_INPUT_SIZE      28
#define CNN_CONV_KERNEL     5
#define CNN_CONV_OUT_SIZE   24      // (28-5+1)
#define CNN_CONV_CHANNELS   30
#define CNN_POOL_OUT_SIZE   12      // 24/2
#define CNN_FC1_INPUT       4320    // 12*12*30
#define CNN_FC1_OUTPUT      100
#define CNN_FC2_OUTPUT      10

// 中间缓冲区大小
#define CONV_OUTPUT_SIZE    (CNN_CONV_OUT_SIZE * CNN_CONV_OUT_SIZE * CNN_CONV_CHANNELS)
#define POOL_OUTPUT_SIZE    (CNN_POOL_OUT_SIZE * CNN_POOL_OUT_SIZE * CNN_CONV_CHANNELS)
#define FC1_OUTPUT_SIZE     CNN_FC1_OUTPUT
#define FC2_OUTPUT_SIZE     CNN_FC2_OUTPUT

/**
 * @brief 执行CNN前向推理
 * @param input 28x28二值输入图像 (值为0或1)
 * @return 识别结果 0-9
 */
int cnn_forward(const u8 *input);

/**
 * @brief 获取各层输出用于调试
 * @param input 输入图像
 * @param scores 输出10个类别的分数
 */
void cnn_forward_with_scores(const u8 *input, float *scores);

/**
 * @brief 打印网络中间结果（调试用）
 */
void cnn_debug_print(const u8 *input);

#endif // CNN_INFERENCE_H
