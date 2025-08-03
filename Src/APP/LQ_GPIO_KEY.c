
#include <LQ_GPIO_KEY.h>
#include "LQ_GPIO.h"
#include "LQ_STM.h"
#include "LQ_GPIO_LED.h"
#include "LQ_TFT18.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void GPIO_KEY_Init(void)
@功能说明：按键GPIO初始化函数
@参数说明：无
@函数返回：无
@调用方法：GPIO_KEY_Init();
@备    注：管脚：GPIOA12
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void GPIO_KEY_Init(void)
{
    // 初始化,输入口，高电平
    PIN_InitConfig(KEY0p, PIN_MODE_INPUT, 1);
    PIN_InitConfig(KEY1p, PIN_MODE_INPUT, 1);
    PIN_InitConfig(KEY2p, PIN_MODE_INPUT, 1);
    PIN_InitConfig(KEY3p, PIN_MODE_INPUT, 1);
    PIN_InitConfig(DSW0p, PIN_MODE_INPUT, 1);
    PIN_InitConfig(DSW1p, PIN_MODE_INPUT, 1);
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：unsigned char KEY_Read(KEYn_e KEYno)
@功能说明：读取按键状态
@参数说明：KEYn_e KEYno按键编号
@函数返回：按键状态，0/1
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
unsigned char KEY_Read(KEYn_e KEYno)
{
    switch (KEYno)
    {
    case KEY0:
        return PIN_Read(KEY0p); // 母板上按键0
        break;

    case KEY1:
        return PIN_Read(KEY1p); // 母板上按键1
        break;

    case KEY2:
        return PIN_Read(KEY2p); // 母板上按键2
        break;

    case KEY3:
        return PIN_Read(KEY3p); // 母板上按键3
        break;

    case DSW0:
        return PIN_Read(DSW0p); // 母板上拨码开关0
        break;

    case DSW1:
        return PIN_Read(DSW1p); // 母板上拨码开关1
        break;
    default:
        return 0XFF;
    }
    return 0;
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_GPIO_KEY(void)
@功能说明：测试程序
@参数说明：无
@函数返回：无
@备    注：按下KEY0/1/2任意键 LED全亮
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_GPIO_KEY(void)
{
    unsigned char k = 0xFF;

    GPIO_LED_Init();        //LED初始化
    LED_Ctrl(LEDALL, OFF);  //关闭所有的LED
    GPIO_KEY_Init();        //按键初始化
    while (1)
    {
        k = KEY_Read(KEY0) & KEY_Read(KEY1) & KEY_Read(KEY2) & KEY_Read(KEY3);

        if (k == 0)
            LED_Ctrl(LEDALL, ON); // 按下KEY0/1/2任意键 LED全亮
        else
            LED_Ctrl(LEDALL, OFF); // 松开KEY0/1/2任意键 LED全灭

        Delay_Ms(100); // 延时等待
    }
}
