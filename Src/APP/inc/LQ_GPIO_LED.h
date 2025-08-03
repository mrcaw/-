#ifndef __LQ_LED_H_
#define __LQ_LED_H_

#define BEEP_OFF PIN_Write(Beep, 0);
#define BEEP_ON PIN_Write(Beep, 1);
#define BEEP_RVS PIN_Reverse(Beep);
// 定义模块号
typedef enum
{
    LED0 = 0, // 核心板上LED0
    LED1 = 1, // 核心板上LED1

    LEDALL = 4
} LEDn_e;

typedef enum
{
    ON = 0,  // 亮
    OFF = 1, // 灭
    RVS = 2, // 反转
} LEDs_e;

// 定义的管脚要对应实际按键
#define LED0p P10_5 // 核心板上LED0 翠绿
#define LED1p P10_6 // 核心板上LED1 蓝灯


//#define Beep P01_7 // 母板上speaker

void GPIO_LED_Init(void);
void LED_Ctrl(LEDn_e LEDno, LEDs_e sta);
void GPIO_BEEP_Init(void);
void Test_GPIO_OUT(void);

#endif /* 0_APPSW_TRICORE_APP_LQ_ASC_H_ */
