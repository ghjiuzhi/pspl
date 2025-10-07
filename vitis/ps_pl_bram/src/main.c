#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include <string.h>
#include "sleep.h" // <--- 新增的头文件

// 包含从ps_shake工程复制过来的高层API头文件
#include "api.h"

// 包含您自定义IP的驱动头文件
#include "pl_bram_rd.h"

// 定义硬件地址 (这些应该来自 xparameters.h)
#define BRAM_BASE_ADDR      XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define PL_IP_BASE          XPAR_PL_BRAM_RD_0_S00_AXI_BASEADDR

// 声明在 fips202.c 中定义的全局变量
extern uint8_t shake_input_state_to_pl[200];

/**
 * @brief 格式化打印一个数据缓冲区的内容。
 * @param title 打印内容的标题。
 * @param data 指向要打印数据的指针。
 * @param len  要打印的数据长度（字节）。
 */
void print_data(const char* title, const uint8_t* data, int len)
{
    xil_printf("%s (%d bytes):\r\n", title, len);
    for (int i = 0; i < len; i++) {
        xil_printf("%02X ", data[i]);
        if ((i + 1) % 16 == 0) {
            xil_printf("\r\n");
        }
    }
    xil_printf("\r\n");
}

/**
 * @brief 一个通用的、带有详细验证和打印功能的函数。(已修正时序问题)
 * @param input_data 指向要发送数据的指针。
 * @param input_len  要发送的数据长度（字节）。
 * @param output_len 期望从PL返回的数据长度（字节）。
 * @return int - 0 表示成功, -1 表示失败。
 */
int send_and_verify_data(uint8_t* input_data, int input_len, int output_len)
{
    int status = 0;

    xil_printf("\r\n--- 开始执行通用数据传输任务 ---\r\n");
    xil_printf("PS端任务：发送可变长度数据\r\n");
    xil_printf("    - 输入数据长度 (变量): %d 字节\r\n", input_len);
    xil_printf("    - 期望输出长度 (变量): %d 字节\r\n", output_len);

    // --- 步骤 A: 将参数（起始地址和字节长度）写入PL的寄存器 ---
    xil_printf("    - 步骤 A: 正在将参数写入PL的控制寄存器...\r\n");
    u32 start_address = 0;
    PL_BRAM_RD_mWriteReg(PL_IP_BASE, 8, input_len);     // 写入输入长度（单位：字节）到reg2 (偏移量8)
    PL_BRAM_RD_mWriteReg(PL_IP_BASE, 4, start_address);  // 写入起始地址到reg1 (偏移量4)

    // 验证回读
    int read_input_len = PL_BRAM_RD_mReadReg(PL_IP_BASE, 8);
    if (read_input_len == input_len) {
        xil_printf("      [成功] 寄存器回读验证通过。已告知PL需要读取 %d 字节。\r\n", read_input_len);
    } else {
        xil_printf("      [失败] 寄存器回读验证失败！写入长度: %d, 读出长度: %d\r\n", input_len, read_input_len);
        return -1;
    }

    // --- 步骤 B: 将数据写入BRAM ---
    xil_printf("    - 步骤 B: 正在将 %d 字节的数据写入BRAM...\r\n", input_len);
    for (int i = 0; i < input_len; i++) {
        Xil_Out8(BRAM_BASE_ADDR + i, input_data[i]);
    }
    xil_printf("    - 数据写入完成。\r\n");
    print_data("    - 原始输入数据", input_data, input_len);

    // --- 步骤 C: 启动PL硬件 (不等待完成信号) ---
    xil_printf("    - 步骤 C: 正在通过脉冲信号启动PL硬件...\r\n");

    // **最终修正**: 产生一个足够宽的上升沿脉冲来触发硬件的边沿检测逻辑
    PL_BRAM_RD_mWriteReg(PL_IP_BASE, 8, 1); // 拉高 start_rd
    usleep(1);                             // **加入1微秒延时，确保PL能捕捉到信号**
    PL_BRAM_RD_mWriteReg(PL_IP_BASE, 8, 0); // 拉低 start_rd

    xil_printf("      [成功] PL硬件已触发。现在请在Vivado中检查ILA波形。\r\n");


    // --- 步骤 D: 读回数据并验证通路是否正确 ---
    // 这个步骤验证的是PS-BRAM的数据通路，而不是PL的处理结果
    uint8_t read_back_buffer[input_len];
    xil_printf("    - 步骤 D: 正在从BRAM读回数据以验证数据通路...\r\n");
    for (int i = 0; i < input_len; i++) {
        read_back_buffer[i] = Xil_In8(BRAM_BASE_ADDR + i);
    }
    print_data("    - 从BRAM读回的数据", read_back_buffer, input_len);

    if (memcmp(input_data, read_back_buffer, input_len) == 0) {
        xil_printf("--- [最终验证成功]: 原始数据与BRAM读回的数据完全一致！ ---\r\n");
        status = 0;
    } else {
        xil_printf("--- [最终验证失败]: 数据不匹配！ ---\r\n");
        for (int i = 0; i < input_len; i++) {
            if (input_data[i] != read_back_buffer[i]) {
                xil_printf("      在字节 %d 处首次发现不匹配: 期望值 = 0x%02X, 实际读到 = 0x%02X\r\n",
                           i, input_data[i], read_back_buffer[i]);
                break;
            }
        }
        status = -1;
    }

    return status;
}

int main()
{
    init_platform();
    Xil_DCacheDisable();

    xil_printf("===== PS-PL 通用数据通路验证程序 (增强版) =====\r\n");
    xil_printf("本程序将演示如何发送任意长度的数据到PL，并提供详细的验证步骤。\r\n");

    // =================================================================
    // 案例1：发送从SHAKE函数拦截的1600位(200字节)数据
    // =================================================================
    unsigned char pk[CRYPTO_PUBLICKEYBYTES];
    unsigned char sk[CRYPTO_SECRETKEYBYTES];

    crypto_sign_keypair(pk, sk);
    xil_printf("\n已从SHAKE核心函数中成功捕获1600位State数据。\r\n");
    send_and_verify_data(shake_input_state_to_pl, 200, 32);

    // =================================================================
    // 案例2：(为了证明灵活性) 发送一批自定义长度的数据
    // =================================================================
    #define CUSTOM_DATA_LEN 50
    uint8_t my_custom_data[CUSTOM_DATA_LEN];
    for (int i = 0; i < CUSTOM_DATA_LEN; i++) {
        my_custom_data[i] = 255 - i;
    }
    send_and_verify_data(my_custom_data, CUSTOM_DATA_LEN, 16);

    xil_printf("\r\n所有测试完成。PS的任务已圆满完成。\r\n");
    xil_printf("接下来，请在Vivado中检查ILA的波形以完成硬件验证。\r\n");

    cleanup_platform();
    return 0;
}
