#include "LQ_STM.h"

/*************************************************************************
 *  函数名称：void Test_STM(void)
 *  功能说明：测试程序
 *  参数说明：无
 *  函数返回：无
 *  备    注：核心板上的LED灯闪烁，中断时P10.5/P10.6闪灯
 *************************************************************************/
void LQ_STM_Timer(void)
{
    GPIO_LED_Init();
    STM_InitConfig(STM0, STM_Channel_0, 500000);  // STM初始化
    STM_InitConfig(STM0, STM_Channel_1, 1000000); // STM初始化

    // 中断服务函数中翻转LED
    while (1)
    {
    }
}
