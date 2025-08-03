#include "LQ_GPIO.h"
#include <IfxCpu_Irq.h>
#include <Compilers.h>
#include <CompilerTasking.h>
#include <IfxCpu.h>
#include <IfxPort_regdef.h>
#include <IfxScu_PinMap.h>
#include <IfxScuEru.h>
#include <IfxSrc.h>
#include <IfxSrc_reg.h>
#include <IfxSrc_regdef.h>

#include "LQ_GPIO_LED.h"
#include "LQ_DMA.h"
#include "include.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_InitConfig(GPIO_Name_t pin, IfxPort_Mode mode, unsigned char output)
@功能说明：GPIO初始化函数
@参数说明：pin:管脚标号    lq_gpio.h中定义
@      mode:GPIO 模式   lq_gpio.h中的宏定义中选择
@      output:输出模式时，输出电平 1：高电平  0：低电平
@函数返回：无
@举    例： PIN_InitConfig(P00_0, PIN_MODE_OUTPUT, 1);  //P00_0初始化推挽输出 高电平
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_InitConfig(GPIO_Name_t pin, IfxPort_Mode mode, unsigned char output)
{

    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);

    /* 配置 GPIO模式 */
    IfxPort_setPinMode(port, pinIndex, mode);

    IfxPort_setPinPadDriver(port, pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed2);

    /* GPIO输出模式时 输出状态 */
    if (0 == output)
    {
        IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
    }
    else
    {
        IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：unsigned char PIN_Read(GPIO_Name_t pin)
@功能说明：读取GPIO电平函数
@参数说明：pin:管脚标号    lq_gpio.h中定义*
@函数返回：无
@举    例：uint8_t pinState = PIN_Read(P00_0);  //读取P00_0 的电平状态
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
unsigned char PIN_Read(GPIO_Name_t pin)
{
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);
    return IfxPort_getPinState(port, pinIndex);
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_Write(GPIO_Name_t pin, unsigned char output)
@功能说明：设置GPIO输出状态
@参数说明：pin:管脚标号    lq_gpio.h中定义*
@      output:输出模式时，输出电平 1：高电平  0：低电平
@函数返回：无
@举    例：PIN_Write(P00_0, 1);//P00_0置为高电平
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_Write(GPIO_Name_t pin, unsigned char output)
{
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);

    /* GPIO输出模式时 输出状态 */
    if (0 == output)
    {
        IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
    }
    else
    {
        IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_Dir(GPIO_Name_t pin, unsigned char mode)
@功能说明：设置GPIO 输入输出方向
@参数说明：pin:管脚标号    lq_gpio.h中定义
@       mode:GPIO 模式   lq_gpio.h中的宏定义中选择
@函数返回：无
@举    例：PIN_Dir(P00_0, 1);//P00_0设置为输出
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_Dir(GPIO_Name_t pin, unsigned char mode)
{
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);
    if (0 == mode)
    {
        /* 配置 GPIO模式 */
        IfxPort_setPinMode(port, pinIndex, PIN_MODE_INPUT);
    }
    else
    {
        /* 配置 GPIO模式 */
        IfxPort_setPinMode(port, pinIndex, PIN_MODE_OUTPUT);
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_Reverse(GPIO_Name_t pin)
@功能说明：GPIO电平翻转函数，使用前请先初始化
@参数说明：pin:管脚标号    lq_gpio.h中定义*
@函数返回：无
@举    例：PIN_Reverse(P00_0); //翻转P00_0管脚的电平状态
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_Reverse(GPIO_Name_t pin)
{
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);
    IfxPort_togglePin(port, pinIndex);
}
