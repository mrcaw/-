#include "LQ_GPIO_LED.h"
#include "LQ_GPIO.h"
#include "LQ_STM.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void LED_Init(void)
@功能说明：GPIO初始化函数 LED灯所用P10_5 P10_6 P20_6和P20_7初始化
@参数说明：无
@函数返回：无
@调用方法：GPIO_LED_Init();
@备    注：高电平灯灭，低电平灯亮
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void GPIO_LED_Init(void)
{
    // 初始化,输出口，高电平
    PIN_InitConfig(LED0p, PIN_MODE_OUTPUT, 1);
    PIN_InitConfig(LED1p, PIN_MODE_OUTPUT, 1);

}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void LED_Ctrl(LEDn_e LEDno, LEDs_e sta)
@功能说明：LED控制
@参数说明：LEDn_e LEDno编号,LEDs_e sta状态亮/灭/翻转
@函数返回：按键状态，0/1
@调用方法：LED_Ctrl(LEDALL,RVS);     //LED翻转闪烁
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void LED_Ctrl(LEDn_e LEDno, LEDs_e sta)
{
    switch (LEDno)
    {
    case LED0:
        if (sta == ON)
            PIN_Write(LED0p, 0);
        else if (sta == OFF)
            PIN_Write(LED0p, 1);
        else if (sta == RVS)
            PIN_Reverse(LED0p);
        break;

    case LED1:
        if (sta == ON)
            PIN_Write(LED1p, 0);
        else if (sta == OFF)
            PIN_Write(LED1p, 1);
        else if (sta == RVS)
            PIN_Reverse(LED1p);
        break;

    case LEDALL:
        if (sta == ON)
        {
            PIN_Write(LED0p, 0);
            PIN_Write(LED1p, 0);

        }
        else if (sta == OFF)
        {
            PIN_Write(LED0p, 1);
            PIN_Write(LED1p, 1);

        }
        else if (sta == RVS)
        {
            PIN_Reverse(LED0p);
            PIN_Reverse(LED1p);

        }
        break;
    default:
        break;
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void BEEP_Init(void)
@功能说明：BEEP初始化函数 BEEP所用P33_17初始化
@参数说明：无
@函数返回：无
@调用方法：GPIO_BEEP_Init();
@备    注：高电平蜂鸣器响，低电平不响
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void GPIO_BEEP_Init(void)
{
    // 初始化,输出口，低电平
    PIN_InitConfig(Beep, PIN_MODE_OUTPUT, 0);
    PIN_Write(Beep, 0);
}

void Test_GPIO_OUT(void)
{
    GPIO_LED_Init();
    //    GPIO_BEEP_Init();
    while (1)
    {
        LED_Ctrl(LEDALL, RVS);
        BEEP_RVS;
        Delay_Ms(200);
    }
}
