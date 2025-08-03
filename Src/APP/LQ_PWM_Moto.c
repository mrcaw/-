#include "include.h"
#include "LQ_PWM_Moto.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void MotorInit(void)
@功能说明：电机PWM初始化
@参数说明：无
@函数返回：无
@调用方法：MotorInit(100);
@备    注：驱动4个电机
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void MotorInit(void)
{
    ATOM_PWM_InitConfig(MOTOR1_P, 0, MOTOR_FREQUENCY);
    ATOM_PWM_InitConfig(MOTOR2_P, 0, MOTOR_FREQUENCY);
    ATOM_PWM_InitConfig(MOTOR3_P, 0, MOTOR_FREQUENCY);
    ATOM_PWM_InitConfig(MOTOR4_P, 0, MOTOR_FREQUENCY);

    PIN_InitConfig(MOTOR1_I, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(MOTOR2_I, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(MOTOR3_I, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(MOTOR4_I, PIN_MODE_OUTPUT, 0);
}

#ifdef USE7843or7971
void MotorCtr(Motor_e Motor, sint32 motor)
{
    switch (Motor)
    {
    case Motor1:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR1_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR1_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR1_P, (ATOM_PWM_MAX + motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR1_I, 1);
        }
        break;
    case Motor2:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR2_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR2_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR2_P, (ATOM_PWM_MAX + motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR2_I, 1);
        }
        break;
    case Motor3:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR3_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR3_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR3_P, (ATOM_PWM_MAX + motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR3_I, 1);
        }
        break;
    case Motor4:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR4_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR4_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR4_P, (ATOM_PWM_MAX + motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR4_I, 1);
        }
        break;
    }
}

#else // USEDRV8701

void MotorCtr(Motor_e Motor, sint32 motor)
{
    switch (Motor)
    {
    case Motor1:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR1_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR1_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR1_P, (0 - motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR1_I, 1);
        }
        break;
    case Motor2:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR2_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR2_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR2_P, (0 - motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR2_I, 1);
        }
        break;
    case Motor3:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR3_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR3_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR3_P, (0 - motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR3_I, 1);
        }
        break;
    case Motor4:
        if (motor > 0)
        {
            ATOM_PWM_SetDuty(MOTOR4_P, motor, MOTOR_FREQUENCY);
            PIN_Write(MOTOR4_I, 0);
        }
        else
        {
            ATOM_PWM_SetDuty(MOTOR4_P, (0 - motor), MOTOR_FREQUENCY);
            PIN_Write(MOTOR4_I, 1);
        }
        break;
    }
}
#endif


/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void MotorCtrl3W (sint32 motor1, sint32 motor2, sint32 motor3)
@功能说明：驱动独轮的三个电机
@参数说明：motor1 动量轮B       motor2 动量轮A         motor3 行进轮
@函数返回：无
@调用方法：MotorCtrl3W (1000, 1000, 1000)
@备    注：驱动3个电机
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void MotorCtrl3W (sint32 motor1, sint32 motor2, sint32 motor3)
{
    if (motor1 > 0)
       {
           ATOM_PWM_SetDuty(MOTOR3_P, 10000-motor1, MOTOR_FREQUENCY);
           IfxPort_setPinLow(&MODULE_P21, 5);
       }
       else
       {
           ATOM_PWM_SetDuty(MOTOR3_P, (10000+motor1),  MOTOR_FREQUENCY);
           IfxPort_setPinHigh(&MODULE_P21, 5);
       }

       if (motor2 > 0)
       {
           ATOM_PWM_SetDuty(MOTOR4_P, 10000-motor2, MOTOR_FREQUENCY);
           IfxPort_setPinLow(&MODULE_P21, 3);
       }
       else
       {
           ATOM_PWM_SetDuty(MOTOR4_P, (10000+motor2), MOTOR_FREQUENCY);
           IfxPort_setPinHigh(&MODULE_P21, 3);
       }

       if (motor3 > 0)
       {
           ATOM_PWM_SetDuty(MOTOR1_P, motor3, MOTOR_FREQUENCY);
           IfxPort_setPinLow(&MODULE_P32, 4);
       }
       else
       {
           ATOM_PWM_SetDuty(MOTOR1_P, (0-motor3), MOTOR_FREQUENCY);
           IfxPort_setPinHigh(&MODULE_P32, 4);
       }
}


void TestMotor(void)
{
    short duty = 1500;
    char txt[16];
    GPIO_LED_Init();
    GPIO_KEY_Init();
    MotorInit();

    ATOM_PWM_InitConfig(MOTOR1_P, 0, MOTOR_FREQUENCY);
    ATOM_PWM_InitConfig(MOTOR4_P, 0, MOTOR_FREQUENCY);
    ATOM_PWM_InitConfig(MOTOR3_P, 0, MOTOR_FREQUENCY);


    PIN_InitConfig(MOTOR1_I, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(MOTOR4_I, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(MOTOR3_I, PIN_MODE_OUTPUT, 0);

    PIN_InitConfig(P22_3, PIN_MODE_OUTPUT, 1);//刹车线解除限制


    Display_Init();        // LCD初始化
    Display_CLS(U16_BLACK);    // 蓝色屏幕
    Display_CLS(U16_BLACK); // 清屏
    Display_showString(0, 0, "   LQ Motor Test      ", U16_WHITE, U16_BLACK, 16);

    while (1)
    {
        if (KEY_Read(KEY0) == 0) // 按下KEY0键，占空比减小
        {
            if (duty > -ATOM_PWM_MAX)
                duty -= 100;
        }
        if (KEY_Read(KEY2) == 0) // 按下KEY2键，占空比加大
        {
            if (duty < ATOM_PWM_MAX) // 满占空比为12500
                duty += 100;
        }
        if (KEY_Read(KEY1) == 0) // 按下KEY1键，占空比中值
        {
            duty = 1500;
        }

        sprintf(txt, "PWM: %05d;", duty);
        Display_showString(0, 5, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示

        MotorCtrl3W (duty, duty, duty);

        LED_Ctrl(LED0, RVS); // 电平翻转,LED闪烁
        Delay_Ms(200);        // 延时等待
    }
}
