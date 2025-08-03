#include "LQ_STM.h"
#include "LQ_UART.h"
#include "LQ_GPIO_LED.h"
#include <stdio.h>

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_Bluetooth(void);
@功能说明：UART测试函数
@参数说明：无
@函数返回：无
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ**/
void Test_Bluetooth(void)
{
    unsigned char cnt = 0;
    GPIO_LED_Init();    //LED初始化
    //UART初始化
    UART_InitConfig(UART0_RX_P14_1, UART0_TX_P14_0, 115200);
    UART_InitConfig(UART1_RX_P02_3, UART1_TX_P02_2, 9600);
    UART_InitConfig(UART2_RX_P14_3, UART2_TX_P14_2, 19200);
    UART_InitConfig(UART3_RX_P00_1, UART3_TX_P00_0, 115200);
    while (1)
    {
        UART_PutChar(UART0, 'L'); // 发送 字节到UART口
        Delay_Ms(500);             // 延时等待
        UART_PutChar(UART0, 'Q'); // 发送 字节到UART口

        UART_PutStr(UART0, "UART0 LongQiu \r\n"); // 发送字符串到上位机
        UART_PutStr(UART1, "UART1 LongQiu \r\n"); // 发送字符串到上位机
        UART_PutStr(UART2, "UART2 LongQiu \r\n"); // 发送字符串到上位机
        UART_PutStr(UART3, "UART3 LongQiu \r\n"); // 发送字符串到上位机

        printf("LQ UART0 %05d...\r\n", cnt++);

        LED_Ctrl(LED0, RVS); // 电平翻转,LED闪烁
        Delay_Ms(500);        // 延时等待
    }
}
