#include <stdio.h>
#include "LQ_ADC.h"
#include "LQ_STM.h"
#include "LQ_UART.h"
#include "LQ_GPIO_LED.h"
#include "LQ_TFT18.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL*
@函数名称：void TestADC(void)
@功能说明：ADC采集测试
@参数说明：无
@函数返回：无
@备    注：ADC悬空不为零，随机的
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_ADC(void)
{
    char txt[32];
    short adc_val[30] = {0};
    GPIO_LED_Init();
    Display_Init();        // LCD初始化
    Display_CLS(U16_BLACK);    // 黑色屏幕

    Display_showString(0, 0, "   ADC_Test      ", U16_WHITE,U16_BLACK, 16);
    // ADC初始化
    ADC_InitConfig(ADC0, 80000);
    ADC_InitConfig(ADC1, 80000);
    ADC_InitConfig(ADC2, 80000);
    ADC_InitConfig(ADC3, 80000);
    ADC_InitConfig(ADC4, 80000);
    ADC_InitConfig(ADC5, 80000);
    ADC_InitConfig(ADC6, 80000);
    ADC_InitConfig(ADC7, 80000);
    ADC_InitConfig(ADC8, 80000);
    ADC_InitConfig(ADC9, 80000);
    ADC_InitConfig(ADC10, 80000);

//需要去config.h 文件里面打开对于自己的屏幕和设置适合自己的显示方向

    while (1) // 主循环
    {
        //adc读取
        adc_val[0] = ADC_Read(ADC0);
        adc_val[1] = ADC_Read(ADC1);
        adc_val[2] = ADC_Read(ADC2);
        adc_val[3] = ADC_Read(ADC3);
        adc_val[4] = ADC_Read(ADC4);
        adc_val[5] = ADC_Read(ADC5);
        adc_val[6] = ADC_Read(ADC6);
        adc_val[7] = ADC_Read(ADC7);
        adc_val[8] = ADC_Read(ADC8);
        adc_val[9] = ADC_Read(ADC9);
        adc_val[10] = ADC_Read(ADC10);

        //屏幕显示adc读取的值
        sprintf((char *)txt, "   ADC0:%05d  ", adc_val[0]);
        Display_showString(0, 1, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC1:%05d  ", adc_val[1]);
        Display_showString(0, 2, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC2:%05d  ", adc_val[2]);
        Display_showString(0, 3, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC3:%05d  ", adc_val[3]);
        Display_showString(0, 4, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC4:%05d  ", adc_val[4]);
        Display_showString(0, 5, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC5:%05d  ", adc_val[5]);
        Display_showString(0, 6, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC6:%05d  ", adc_val[6]);
        Display_showString(0, 7, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC7:%05d  ", adc_val[7]);
        Display_showString(0, 8, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "   ADC8:%05d  ", adc_val[8]);
        Display_showString(0, 9, txt, U16_WHITE, U16_BLACK, 16);
        LED_Ctrl(LEDALL, RVS);
    }
}
