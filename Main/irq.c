#include "include.h"
#include "IfxCcu6_reg.h"

/***************************定时器中断回调函数**********************************/
IFX_INTERRUPT(CCU60_CH0_IRQHandler, CCU60_VECTABNUM, CCU60_CH0_PRIORITY);
IFX_INTERRUPT(CCU60_CH1_IRQHandler, CCU60_VECTABNUM, CCU60_CH1_PRIORITY);
IFX_INTERRUPT(CCU61_CH0_IRQHandler, CCU61_VECTABNUM, CCU61_CH0_PRIORITY);
IFX_INTERRUPT(CCU61_CH1_IRQHandler, CCU61_VECTABNUM, CCU61_CH1_PRIORITY);
// CCU60_CH0中断服务函数
void CCU60_CH0_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();

    // 清除中断标志
    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU60, IfxCcu6_InterruptSource_t12PeriodMatch);

    /* 用户代码 */
    Task();
    CCU_Odometry();
    Key_time();
    //Task_IE();
}

// CCU60_CH1中断服务函数
void CCU60_CH1_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();

    // 清除中断标志
    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU60, IfxCcu6_InterruptSource_t13PeriodMatch);

    /* 用户代码 */
    Balance_CallBack();
}
// CCU61_CH0中断服务函数
int photo_flag=0;
void CCU61_CH0_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();

    // 清除中断标志
    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU61, IfxCcu6_InterruptSource_t12PeriodMatch);

    /* 用户代码 */
    //PIN_Reverse(P02_3);
    Attitude_get(); // 姿态解算
}
// CCU61_CH1中断服务函数
void CCU61_CH1_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();

    // 清除中断标志
    IfxCcu6_clearInterruptStatusFlag(&MODULE_CCU61, IfxCcu6_InterruptSource_t13PeriodMatch);

    /* 用户代码 */

}

/***************************外部中断中断回调函数**********************************/
/* GPIO外部中断 */
IFX_INTERRUPT(PIN_INT0_IRQHandler, PIN_INT0_VECTABNUM, PIN_INT0_PRIORITY);
IFX_INTERRUPT(PIN_INT1_IRQHandler, PIN_INT1_VECTABNUM, PIN_INT1_PRIORITY);
IFX_INTERRUPT(PIN_INT2_IRQHandler, PIN_INT2_VECTABNUM, PIN_INT2_PRIORITY);
IFX_INTERRUPT(PIN_INT3_IRQHandler, PIN_INT3_VECTABNUM, PIN_INT3_PRIORITY);
IFX_INTERRUPT(PIN_INT4_IRQHandler, PIN_INT4_VECTABNUM, PIN_INT4_PRIORITY);
IFX_INTERRUPT(PIN_INT5_IRQHandler, PIN_INT5_VECTABNUM, PIN_INT5_PRIORITY);
IFX_INTERRUPT(PIN_INT6_IRQHandler, PIN_INT6_VECTABNUM, PIN_INT6_PRIORITY);
IFX_INTERRUPT(PIN_INT7_IRQHandler, PIN_INT7_VECTABNUM, PIN_INT7_PRIORITY);
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：PIN_INT0_IRQHandler中断服务函数
@功能说明：
@参数说明：无
@函数返回：无
@备    注：外部中断0组管脚 使用的中断服务函数
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_INT0_IRQHandler(void)
{
    LED_Ctrl(LED1, RVS); // 电平翻转,LED闪烁
}

// PIN_INT1_IRQHandler中断服务函数
void PIN_INT1_IRQHandler(void)
{
}

// PIN_INT2_IRQHandler中断服务函数
void PIN_INT2_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
}
// PIN_INT3_IRQHandler中断服务函数
void PIN_INT3_IRQHandler(void)
{
}

// PIN_INT4_IRQHandler中断服务函数
void PIN_INT4_IRQHandler(void)
{
}

// PIN_INT5_IRQHandler中断服务函数 //已被二号摄像头占用
void PIN_INT5_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    //IfxCpu_enableInterrupts();
    Camera_read_Flag=1;
    //camera_soft_read();
}

// PIN_INT6_IRQHandler中断服务函数 //已被一号摄像头占用
void PIN_INT6_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    //IfxCpu_enableInterrupts();
    DMA_CameraStart();
}

// PIN_INT7_IRQHandler中断服务函数
void PIN_INT7_IRQHandler(void)
{
}
/***************************串口中断回调函数**********************************/
/* UART中断 */
IFX_INTERRUPT(UART0_RX_IRQHandler, UART0_VECTABNUM, UART0_RX_PRIORITY);
IFX_INTERRUPT(UART1_RX_IRQHandler, UART1_VECTABNUM, UART1_RX_PRIORITY);
IFX_INTERRUPT(UART2_RX_IRQHandler, UART2_VECTABNUM, UART2_RX_PRIORITY);
IFX_INTERRUPT(UART3_RX_IRQHandler, UART3_VECTABNUM, UART3_RX_PRIORITY);
IFX_INTERRUPT(UART0_TX_IRQHandler, UART0_VECTABNUM, UART0_TX_PRIORITY);
IFX_INTERRUPT(UART1_TX_IRQHandler, UART1_VECTABNUM, UART1_TX_PRIORITY);
IFX_INTERRUPT(UART2_TX_IRQHandler, UART2_VECTABNUM, UART2_TX_PRIORITY);
IFX_INTERRUPT(UART3_TX_IRQHandler, UART3_VECTABNUM, UART3_TX_PRIORITY);
IFX_INTERRUPT(UART0_ER_IRQHandler, UART0_VECTABNUM, UART0_ER_PRIORITY);
IFX_INTERRUPT(UART1_ER_IRQHandler, UART1_VECTABNUM, UART1_ER_PRIORITY);
IFX_INTERRUPT(UART2_ER_IRQHandler, UART2_VECTABNUM, UART2_ER_PRIORITY);
IFX_INTERRUPT(UART3_ER_IRQHandler, UART3_VECTABNUM, UART3_ER_PRIORITY);

// 串口0 RX中断函数
void UART0_RX_IRQHandler(void)
{
    IfxAsclin_Asc_isrReceive(&g_UartConfig[0]);
    Ble_Change();
    /* 用户代码 */
}
// 串口0 TX中断函数
void UART0_TX_IRQHandler(void)
{
    IfxAsclin_Asc_isrTransmit(&g_UartConfig[0]);

    /* 用户代码 */
}
// 串口0 ER中断函数
void UART0_ER_IRQHandler(void)
{
    IfxAsclin_Asc_isrError(&g_UartConfig[0]);

    /* 用户代码 */
}

// 串口1 RX中断函数
void UART1_RX_IRQHandler(void)
{
    IfxAsclin_Asc_isrReceive(&g_UartConfig[1]);
    Motor_Uart_CallBack();
    /* 用户代码 */
}
// 串口1 TX中断函数
void UART1_TX_IRQHandler(void)
{
    IfxAsclin_Asc_isrTransmit(&g_UartConfig[1]);

    /* 用户代码 */
}
// 串口1 ER中断函数
void UART1_ER_IRQHandler(void)
{
    IfxAsclin_Asc_isrError(&g_UartConfig[1]);

    /* 用户代码 */
}
// 串口2 RX中断函数
void UART2_RX_IRQHandler(void)
{
    IfxAsclin_Asc_isrReceive(&g_UartConfig[2]);

    /* 用户代码 */
    R9DS_Read(); // R9DS数据读取
}
// 串口2 TX中断函数
void UART2_TX_IRQHandler(void)
{
    IfxAsclin_Asc_isrTransmit(&g_UartConfig[2]);

    /* 用户代码 */
}
// 串口2 ER中断函数
void UART2_ER_IRQHandler(void)
{
    IfxAsclin_Asc_isrError(&g_UartConfig[2]);

    /* 用户代码 */
}
// 串口3 RX中断函数
void UART3_RX_IRQHandler(void)
{
    IfxAsclin_Asc_isrReceive(&g_UartConfig[3]);

    /* 用户代码 */
}
// 串口3 TX中断函数
void UART3_TX_IRQHandler(void)
{
    IfxAsclin_Asc_isrTransmit(&g_UartConfig[3]);

    /* 用户代码 */
}
// 串口3 ER中断函数
void UART3_ER_IRQHandler(void)
{
    IfxAsclin_Asc_isrError(&g_UartConfig[3]);
    /* 用户代码 */
}
IFX_INTERRUPT(STM0_CH0_IRQHandler, STM0_VECTABNUM, STM0_CH0_PRIORITY);
IFX_INTERRUPT(STM0_CH1_IRQHandler, STM0_VECTABNUM, STM0_CH1_PRIORITY);
IFX_INTERRUPT(STM1_CH0_IRQHandler, STM1_VECTABNUM, STM1_CH0_PRIORITY);
IFX_INTERRUPT(STM1_CH1_IRQHandler, STM1_VECTABNUM, STM1_CH1_PRIORITY);
// STM0_CH0中断服务函数
void STM0_CH0_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();
    // 清除中断标志
    IfxStm_clearCompareFlag(&MODULE_STM0, g_StmCompareConfig[0].comparator);
    // 开启新的中断配置，开始下次中断
    IfxStm_increaseCompare(&MODULE_STM0, g_StmCompareConfig[0].comparator, g_StmCompareConfig[0].ticks);
    /* 用户代码 */
    LED_Ctrl(LED0, RVS); // 电平翻转,LED闪烁
}
// STM0_CH1中断服务函数

void STM0_CH1_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();
    // 清除中断标志
    IfxStm_clearCompareFlag(&MODULE_STM0, g_StmCompareConfig[1].comparator);
    // 开启新的中断配置，开始下次中断
    IfxStm_increaseCompare(&MODULE_STM0, g_StmCompareConfig[1].comparator, g_StmCompareConfig[1].ticks);
    /* 用户代码 */
    LED_Ctrl(LED1, RVS); // 电平翻转,LED闪烁
}

// STM1_CH0中断服务函数
void STM1_CH0_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();
    // 清除中断标志
    IfxStm_clearCompareFlag(&MODULE_STM1, g_StmCompareConfig[2].comparator);
    // 开启新的中断配置，开始下次中断
    IfxStm_increaseCompare(&MODULE_STM1, g_StmCompareConfig[2].comparator, g_StmCompareConfig[2].ticks);
    /* 用户代码 */
}

// STM1_CH1中断服务函数
void STM1_CH1_IRQHandler(void)
{
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();
    // 清除中断标志
    IfxStm_clearCompareFlag(&MODULE_STM1, g_StmCompareConfig[3].comparator);
    // 开启新的中断配置，开始下次中断
    IfxStm_increaseCompare(&MODULE_STM1, g_StmCompareConfig[3].comparator, g_StmCompareConfig[3].ticks);
    /* 用户代码 */
}
