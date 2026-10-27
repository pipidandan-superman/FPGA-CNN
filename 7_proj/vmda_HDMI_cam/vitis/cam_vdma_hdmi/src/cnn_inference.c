/******************************************************************************
 * CNN推理引擎实现
 *
 * 纯软件实现的CNN前向推理
 * 使用静态内存分配避免动态内存请求
 ******************************************************************************/

#include "cnn_inference.h"
#include "cnn_params.h"
#include "xil_printf.h"
#include <math.h>

// 静态中间缓冲区
static float conv_output[CONV_OUTPUT_SIZE];      // 24x24x30
static float pool_output[POOL_OUTPUT_SIZE];      // 12x12x30
static float fc1_output[FC1_OUTPUT_SIZE];        // 100
static float fc2_output[FC2_OUTPUT_SIZE];        // 10

// ReLU激活函数
static inline float relu(float x) {
    return x > 0 ? x : 0;
}

/**
 * @brief 2D卷积层
 * @param input 输入特征图 (28x28)
 * @param output 输出特征图 (24x24x30)
 * @param weights 卷积权重 [30][5][5]
 * @param bias 卷积偏置 [30]
 *
 * 卷积核: 5x5, 步长: 1, 无填充
 * 输出尺寸: (28-5+1) x (28-5+1) = 24x24
 */
static void conv2d(const u8 *input, float *output,
                   const float *weights, const float *bias) {
    int out_idx = 0;

    for (int oc = 0; oc < CNN_CONV_CHANNELS; oc++) {      // 30个输出通道
        for (int oy = 0; oy < CNN_CONV_OUT_SIZE; oy++) {   // 24
            for (int ox = 0; ox < CNN_CONV_OUT_SIZE; ox++) { // 24
                float sum = bias[oc];

                // 5x5卷积核
                for (int ky = 0; ky < CNN_CONV_KERNEL; ky++) {
                    for (int kx = 0; kx < CNN_CONV_KERNEL; kx++) {
                        int iy = oy + ky;
                        int ix = ox + kx;
                        int input_idx = iy * CNN_INPUT_SIZE + ix;
                        int weight_idx = oc * CNN_CONV_KERNEL * CNN_CONV_KERNEL
                                       + ky * CNN_CONV_KERNEL + kx;

                        sum += (float)input[input_idx] * weights[weight_idx];
                    }
                }

                output[out_idx++] = sum;
            }
        }
    }
}

/**
 * @brief ReLU激活层
 */
static void relu_layer(float *data, int size) {
    for (int i = 0; i < size; i++) {
        data[i] = relu(data[i]);
    }
}

/**
 * @brief 2x2最大池化层
 * @param input 输入特征图 (24x24x30)
 * @param output 输出特征图 (12x12x30)
 *
 * 池化核: 2x2, 步长: 2
 * 输出尺寸: 24/2 = 12
 */
static void maxpool2d(const float *input, float *output) {
    int out_idx = 0;

    for (int c = 0; c < CNN_CONV_CHANNELS; c++) {         // 30通道
        for (int oy = 0; oy < CNN_POOL_OUT_SIZE; oy++) {   // 12
            for (int ox = 0; ox < CNN_POOL_OUT_SIZE; ox++) { // 12
                int iy_base = oy * 2;
                int ix_base = ox * 2;

                // 2x2窗口找最大值
                float max_val = -1e30f;

                for (int py = 0; py < 2; py++) {
                    for (int px = 0; px < 2; px++) {
                        int iy = iy_base + py;
                        int ix = ix_base + px;
                        int in_idx = c * CNN_CONV_OUT_SIZE * CNN_CONV_OUT_SIZE
                                   + iy * CNN_CONV_OUT_SIZE + ix;

                        if (input[in_idx] > max_val) {
                            max_val = input[in_idx];
                        }
                    }
                }

                output[out_idx++] = max_val;
            }
        }
    }
}

/**
 * @brief 全连接层
 * @param input 输入向量
 * @param output 输出向量
 * @param weights 权重矩阵 [out_size][in_size]
 * @param bias 偏置向量 [out_size]
 * @param in_size 输入维度
 * @param out_size 输出维度
 */
static void fully_connected(const float *input, float *output,
                           const float *weights, const float *bias,
                           int in_size, int out_size) {
    for (int o = 0; o < out_size; o++) {
        float sum = bias[o];

        for (int i = 0; i < in_size; i++) {
            sum += input[i] * weights[o * in_size + i];
        }

        output[o] = sum;
    }
}

/**
 * @brief argmax - 找最大值索引
 */
static int argmax(const float *data, int size) {
    int max_idx = 0;
    float max_val = data[0];

    for (int i = 1; i < size; i++) {
        if (data[i] > max_val) {
            max_val = data[i];
            max_idx = i;
        }
    }

    return max_idx;
}

/**
 * @brief 执行CNN前向推理
 */
int cnn_forward(const u8 *input) {
    // 1. 卷积层
    conv2d(input, conv_output, conv_weight, conv_bias);

    // 2. ReLU激活
    relu_layer(conv_output, CONV_OUTPUT_SIZE);

    // 3. 最大池化
    maxpool2d(conv_output, pool_output);

    // 4. 全连接层1
    fully_connected(pool_output, fc1_output,
                   affine1_weight, affine1_bias,
                   CNN_FC1_INPUT, CNN_FC1_OUTPUT);

    // 5. ReLU激活
    relu_layer(fc1_output, FC1_OUTPUT_SIZE);

    // 6. 全连接层2
    fully_connected(fc1_output, fc2_output,
                   affine2_weight, affine2_bias,
                   CNN_FC1_OUTPUT, CNN_FC2_OUTPUT);

    // 7. 返回最大概率类别
    return argmax(fc2_output, CNN_FC2_OUTPUT);
}

/**
 * @brief 执行CNN前向推理并返回分数
 */
void cnn_forward_with_scores(const u8 *input, float *scores) {
    // 执行完整推理
    cnn_forward(input);

    // 复制输出分数
    for (int i = 0; i < CNN_FC2_OUTPUT; i++) {
        scores[i] = fc2_output[i];
    }
}

/**
 * @brief 打印网络中间结果（调试用）
 */
void cnn_debug_print(const u8 *input) {
    xil_printf("\n=== CNN Debug Info ===\n");

    // 执行推理
    int result = cnn_forward(input);

    // 打印输出层分数
    xil_printf("Output scores:\n");
    for (int i = 0; i < 10; i++) {
        xil_printf("  [%d] = %d\n", i, (int)(fc2_output[i] * 1000));
    }

    xil_printf("Result: %d\n", result);
    xil_printf("======================\n");
}
