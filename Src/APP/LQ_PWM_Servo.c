#include "include.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void ServoInit(void)
@功能说明：舵机初始化
@参数说明：无
@函数返回：无
@调用方法：ServoInit();
@备    注：主函数调用
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void ServoInit(void)
{
    ATOM_PWM_InitConfig(ATOMSERVO1, Servo_Center_Mid, Servo_Frequency); // 舵机频率为100HZ，初始值为1.5ms中值
    ATOM_PWM_InitConfig(ATOMSERVO2, Servo_Center_Mid, Servo_Frequency); // 舵机理论范围为：0.5ms--2.5ms，大多舵机实际比这个范围小
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void ServoCtrl (Servo_e Servo,uint32 duty)
@功能说明：舵机控制函数
@参数说明：Servo:选择舵机1还是2  duty：舵机占空比
@函数返回：无
@调用方法：ServoCtrl (Servo1,duty);
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void ServoCtrl(Servo_e Servo, uint32 duty)
{
    if (duty >= Servo_Left_Max) // 限制幅值
        duty = Servo_Left_Max;
    else if (duty <= Servo_Right_Min) // 限制幅值
        duty = Servo_Right_Min;
    switch (Servo)
    {
    case Servo1:
        ATOM_PWM_InitConfig(ATOMSERVO1, duty, Servo_Frequency); // 舵机频率为50HZ，初始值为1.5ms中值
        break;
    case Servo2:
        ATOM_PWM_InitConfig(ATOMSERVO2, duty, Servo_Frequency); // 舵机理论范围为：0.5ms--2.5ms，大多舵机实际比这个范围小
        break;
    case ServoALL:
        ATOM_PWM_InitConfig(ATOMSERVO1, duty, Servo_Frequency); // 舵机频率为50HZ，初始值为1.5ms中值
        ATOM_PWM_InitConfig(ATOMSERVO2, duty, Servo_Frequency); // 舵机理论范围为：0.5ms--2.5ms，大多舵机实际比这个范围小
        break;
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void TestServo (void)
@功能说明：舵机测试函数
@参数说明：无
@函数返回：无
@调用方法：TestServo();
@备    注：注意，一定要对舵机打角进行限制
使用龙邱母板测试流程：
1.先使用万用表测量电池电压，务必保证电池电压在7V以上，否则无力不反应！
2.然后确定舵机供电电压，SD5舵机用5V供电，S3010用6-7V供电！！！
3.把舵机的舵盘去掉，让舵机可以自由转动；
4.烧写程序并运行，让舵机转动到中值附近；如果没反应重复1-2步，或者调整舵机的PWM频率计占空比，能受控为准；
5.舵机受控后用手轻转，舵机会吱吱响，对抗转动，此时可以装上舵盘；
6.按键K0/K1确定舵机的左右转动极限，并记下来，作为后续限幅防止舵机堵转烧毁！
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void TestServo(void)
{
    char txt[16];
    signed short duty = Servo_Center_Mid;
    GPIO_LED_Init();
    GPIO_KEY_Init();
    Display_Init();        // LCD初始化
    Display_CLS(U16_BLACK);    // 蓝色屏幕
    Display_showString(0, 0, "   LQ Servo Test      ", U16_RED, U16_BLACK, 16);

    ServoInit();
    ServoCtrl(ServoALL, Servo_Center_Mid); // 中值
    while (1)
    {
        if (!KEY_Read(KEY0))
        {
            if (duty > 10) // 防止duty超
            {
                duty -= 10;
            }
        }
        if (!KEY_Read(KEY1))
        {
            duty = Servo_Center_Mid;
        }
        if (!KEY_Read(KEY2))
        {
            duty += 10;
        }
        ServoCtrl(Servo1, duty);
        ServoCtrl(Servo2, duty);

        sprintf(txt, "Servo duty:%04d ", duty);
        Display_showString(1, 2, txt, U16_BLACK, U16_GREEN, 16); // 显示出库实际脉冲数，以便灵活调整
        LED_Ctrl(LEDALL, RVS);                                 // 四个LED同时闪烁;
        Delay_Ms(100);
    }
}
