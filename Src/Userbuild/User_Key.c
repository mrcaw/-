#include "include.h"

int Motor1_Test=0;
int left_pwm=0,right_pwm=0;
volatile int Key_Flag=0;
volatile int Key_Flag_Last=0;
int B_threshold_Flag=0;
int Key_DSW11_line_flag=0;
int Key3_flag;
int Key2_flag;
int Key_add_flag=0;
int Key_reduce_flag=0;
int Time_delay_Key3;
int Time_delay_Key2;

void Key(void)
{
    Key_Flag=KEY_Read(DSW0)*10+KEY_Read(DSW1);
    if(Key_Flag!=Key_Flag_Last)
    {
        LCD_CLS(U16_BLACK);
        Delay_Ms(1000);
    }
    Key_Flag_Last=Key_Flag;
    switch (Key_Flag)
    {
        case 0:
            Key_DSW00();//显示部分数据
            //Key_Test_MotorR();
            break;
        case 10:
            Key_DSW10();//显示二值化图像
            break;
        case 11:
            Key_DSW11();//调节参数
            break;
        default:
            break;
    }
}
void Key_DSW11(void)//按键调参 随便写写的
{
    if(KEY_Read(KEY0) == 0)//向下划
    {
        Beep_Flag=1;
        Key_DSW11_line_flag--;
        Key_DSW11_line_flag=constrain_int(Key_DSW11_line_flag, 0, 11);
        while(KEY_Read(KEY0) == 0);
    }
    if(KEY_Read(KEY1) == 0)
    {
        Beep_Flag=1;
        Key_DSW11_line_flag++;
        Key_DSW11_line_flag=constrain_int(Key_DSW11_line_flag, 0, 11);
        while(KEY_Read(KEY1) == 0);
    }
    if(KEY_Read(KEY2) == 0)
    {
        Beep_Flag=1;
        if(Key2_flag == 0)
        {
            // 初始按下状态
            Key2_flag = 1;
            Time_delay_Key2 = 0;  // 重置长按计时器
        }
        else if(Key2_flag == 1)
        {
            // 持续按下检测
            if(Key_add_flag==1)
            {
                Key_add_flag=2;
            }
            else if(Key_add_flag==0)
            {
                Key_add_flag=1;
            }
            if(Time_delay_Key2 > 20)
            {
                // 执行长按操作
                // (此处添加长按需要执行的具体操作)

                Key2_flag = 2;  // 进入长按锁定状态
                Time_delay_Key2 = 0;
            }
            // 未达到长按阈值时保持状态1
        }
        else if(Key2_flag==2)
        {
            if(Time_delay_Key2 > 5)
            {
                // 执行长按操作
                // (此处添加长按需要执行的具体操作)

                Key_add_flag=1;
                Time_delay_Key2 = 0;
            }
            else
            {
                Key_add_flag=0;
            }
        }
        //while(KEY_Read(KEY2) == 0);
    }
    if(KEY_Read(KEY2) == 1)
    {
        Key2_flag=0;
        Key_add_flag=0;
        Time_delay_Key2=0;
    }
    if(KEY_Read(KEY3) == 0)
    {
        Beep_Flag=1;
        if(Key3_flag == 0)
        {
            // 初始按下状态
            Key3_flag = 1;
            Time_delay_Key3 = 0;  // 重置长按计时器
        }
        else if(Key3_flag == 1)
        {
            // 持续按下检测
            if(Key_reduce_flag==1)
            {
                Key_reduce_flag=2;
            }
            else if(Key_reduce_flag==0)
            {
                Key_reduce_flag=1;
            }
            if(Time_delay_Key3 > 20)
            {
                // 执行长按操作
                // (此处添加长按需要执行的具体操作)

                Key3_flag = 2;  // 进入长按锁定状态
                Time_delay_Key3 = 0;
            }
            // 未达到长按阈值时保持状态1
        }
        else if(Key3_flag==2)
        {
            if(Time_delay_Key3 > 5)
            {
                // 执行长按操作
                // (此处添加长按需要执行的具体操作)

                Key_reduce_flag=1;
                Time_delay_Key3 = 0;
            }
            else
            {
                Key_reduce_flag=0;
            }
        }
        //while(KEY_Read(KEY3) == 0);
    }
    if(KEY_Read(KEY3) == 1)
    {
        Key3_flag=0;
        Key_reduce_flag=0;
        Time_delay_Key3=0;
    }
}

void Key_time(void)
{
    if(Key3_flag==2||Key3_flag==1)//未抬起或者长按状态
    {
        Time_delay_Key3++;
    }
    if(Key2_flag==2||Key2_flag==1)//未抬起或者长按状态
    {
        Time_delay_Key2++;
    }
}
void Key_DSW00(void)
{

    if(KEY_Read(KEY0) == 0 && Car_Balance_Val.Start_Flag == 0)
    {
        Beep_Flag=1;
        Car_Control(1, 0);
        while(KEY_Read(KEY0) == 0);
    }
    if(KEY_Read(KEY0) == 0 && Car_Balance_Val.Start_Flag == 1)
    {
        Beep_Flag=1;
        Car_Control(0, 0);
        while(KEY_Read(KEY0) == 0);
    }
    if(KEY_Read(KEY1) == 0)
    {
        //Car_Control(1, 0);
        Beep_Flag=1;
        Car_Control(2, Task_Speed_Middle);
        Task_Flag=1;
        Yaw=0;
        //MotorCtr(Motor1, 2000);
        //small_driver_set_duty(1000,1000);
        while(KEY_Read(KEY1) == 0);
    }
    if(KEY_Read(KEY2) == 0)
    {
        Beep_Flag=1;
        //Task_Flag=1;
        //Car_Control(2, 50);
        if(Photo_Mode_flag==1)
        {
            Photo_Mode_flag=0;
        }
        else if(Photo_Mode_flag==0)
        {
            Photo_Mode_flag=1;
        }
        //MotorCtr(Motor1, 2000);
        while(KEY_Read(KEY2) == 0);
    }

    if(KEY_Read(KEY3) == 0)
    {
        Beep_Flag=1;
        //IE_to_point(-1,-1);
        while(KEY_Read(KEY3) == 0);
    }
}

void Key_DSW10(void)
{
    if(KEY_Read(KEY0) == 0)
    {
        Beep_Flag=1;
        B_threshold+=1;
        if(B_threshold>255)
        {
            B_threshold=255;
        }
        while(KEY_Read(KEY0) == 0);

    }
    if(KEY_Read(KEY1) == 0)
    {
        Beep_Flag=1;
        B_threshold-=1;
        if(B_threshold<0)
        {
            B_threshold=0;
        }
        while(KEY_Read(KEY1) == 0);
    }
    if(KEY_Read(KEY2) == 0)
    {
        Beep_Flag=1;
        B_threshold+=10;
        if(B_threshold>255)
        {
            B_threshold=255;
        }
        while(KEY_Read(KEY2) == 0);

    }
    if(KEY_Read(KEY3) == 0)
    {
        Beep_Flag=1;
        B_threshold-=10;
        if(B_threshold<0)
        {
            B_threshold=0;
        }
        while(KEY_Read(KEY3) == 0);
    }
}

void Key_Test_MotorR(void)//无刷测试函数
{

    if(KEY_Read(KEY0) == 0 )
    {
        left_pwm+=100;
        right_pwm+=100;
        //small_driver_set_duty((short int)left_pwm,(short int)right_pwm);
        MotorCtr(Motor1, left_pwm);
        while(KEY_Read(KEY0) == 0);
    }
    if(KEY_Read(KEY1) == 0)
    {
        left_pwm-=100;
        right_pwm-=100;
        //small_driver_set_duty((short int)left_pwm,(short int)right_pwm);
        MotorCtr(Motor1, left_pwm);
        while(KEY_Read(KEY1) == 0);
    }
    if(KEY_Read(KEY2) == 0)
    {
        left_pwm=0;
        right_pwm=0;
        //small_driver_set_duty((short int)0,(short int)0);
        MotorCtr(Motor1, left_pwm);
        while(KEY_Read(KEY2) == 0);
    }

}

void Key_Test_MotorP(void)//有刷测试函数
{
    if(KEY_Read(KEY0) == 0 )
    {
        Motor1_Test+=100;
        if(Motor1_Test>5000)
        {
          Motor1_Test=5000;
        }
        else if(Motor1_Test<-5000)
        {
          Motor1_Test=-5000;
        }
        MotorCtr(Motor1, Motor1_Test);
        while(KEY_Read(KEY0) == 0);
    }
    if(KEY_Read(KEY1) == 0)
    {
        Motor1_Test=Motor1_Test-100;
        if(Motor1_Test>5000)
        {
          Motor1_Test=5000;
        }
        else if(Motor1_Test<-5000)
        {
          Motor1_Test=-5000;
        }
        MotorCtr(Motor1, Motor1_Test);
        while(KEY_Read(KEY1) == 0);
    }
    if(KEY_Read(KEY3) == 0)
    {
        Motor1_Test=0;
        MotorCtr(Motor1, 0);
        while(KEY_Read(KEY3) == 0);
    }
}

