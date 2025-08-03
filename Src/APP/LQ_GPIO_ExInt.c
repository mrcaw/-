/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@备    注：TC297只有17个固定的GPIO支持外部中断 这15个固定GPIO分为8组，每组只能选择其中一个作为外部中断管脚使用
@         0：P15_4  P10_7                                    1：P14_3  P10_8
@         2：P10_2  P02_1  P00_4                             3：P10_3  P14_1  P02_0
@         4：P15_5  P33_7                                    5：P15_8
@         6：P20_0  P11_10                                   7：P20_9  P15_1
*           外部中断服务函数在LQ_GPIO.c中  中断优先级配置在LQ_GPIO.h中 可以自行修改
*           外部中断服务函数在LQ_GPIO.c中  中断优先级配置在LQ_GPIO.h中 可以自行修改
*           外部中断服务函数在LQ_GPIO.c中  中断优先级配置在LQ_GPIO.h中 可以自行修改
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/

#include "LQ_GPIO.h"
#include "LQ_STM.h"
#include "LQ_GPIO_LED.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_GPIO_Extern_Int(void)
@功能说明：测试外部中断
@参数说明：无
@函数返回：无
@备   注：核心板上的LED固定时间P10.6翻转，LED灯闪烁，
当P15.4检测到下降沿时触发中断，P10.5翻转，LED闪烁，中断函数在LQ_GPIO.C中
可以把P15.4用杜邦线接到P10.6，触发中断后亮灯依次闪烁
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_GPIO_Extern_Int(void)
{
    GPIO_LED_Init();
    PIN_Exti(P15_4, PIN_IRQ_MODE_FALLING); // 配置P15_4 下降沿触发中断
    while (1)
    {
        LED_Ctrl(LED0, RVS); // 电平翻转,LED闪烁
        Delay_Ms(500);        // 延时等待
    }
}
