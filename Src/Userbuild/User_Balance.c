#include "include.h"


char TFT_txt[10];
char LCD_txt[50];
Car_Balance_Val_typedef Car_Balance_Val;
int PWM_R,PWM_Y=0;
int Motor_P=0;
int Set_Duty_Flag=0;//动量轮设置占空比
float Yaw_Error,Yaw_Lin;
float Yaw_Init=0;
int C_condition=0;//车状态
int Yaw_ZX_Flag=0;//旋转flag 防止多次旋转
float Yaw_Out;

char txt[20];
int send_flag=0;
float Roll_error,Roll_error_1;
float Roll_error_Last;
int Roll_error_Flag=0;
int Roll_error_Count=0;
float Roll_error_kp=0.15;
float Roll_error_Max=8;
int Area_X_Max=3,Area_Y_Max=5;
int Area_X_Min=-3,Area_Y_Min=0;
int lin_speed;

void Balance_Init(void)//平衡前的初始化
{
    //Test_CAMERA();
    //CAMERA_Init(100);      // 初始化摄像头
    // 清屏
    //Test_SPI_Gyro();
    LCD_Init();
    LCD_CLS(U16_BLACK);
    memset(LCD_txt,0,sizeof(LCD_txt));
    sprintf(LCD_txt,"IPS_LCD OK");
    LCD_ShowStr_12(0,0,LCD_txt,U16_WHITE,U16_BLACK);
    Delay_Ms(1000);
    GPIO_KEY_Init();
    UART_InitConfig(UART1_RX_P20_9, UART1_TX_P15_0, 460800);//无刷
    UART_InitConfig(UART0_RX_P14_1, UART0_TX_P14_0, 460800);//蓝牙
    CAMERA_Init(100);      // 初始化摄像头
    small_driver_get_speed();         //获取速度

   // sprintf(txt,"ok\r\n");
    //UART_PutBuff(Ble_Uart, (unsigned char *)txt, sizeof(txt));
    EncInit();             //编码器初始化
    MotorInit();           //行进轮电机初始化
    SPI_Gryo_Init();
    Delay_Ms(500);
    //IMU_GetOffset(&icm_offset);
    //Test_SPI_Gyro();
    //Delay_Ms(1000);
    LCD_CLS(U16_BLACK);
    init_Filter_Blance();

    //定时中断初始化。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
    CCU6_InitConfig(CCU61, CCU6_Channel0, 1);// 1ms   imu数据解算
    //CCU6_InitConfig(CCU61, CCU6_Channel1, 2);//10ms  里程计导航
//
    CCU6_InitConfig(CCU60, CCU6_Channel0,10); //10ms
    CCU6_InitConfig(CCU60, CCU6_Channel1,2); //2ms    平衡代码
    //定时中断初始化。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
    Pid_R_Init();//初始化pid
    Pid_P_Init();

    Car_Balance_Val.Start_Flag=0;//直立指令
    Car_Balance_Val.Roll_Zero=0; //机械零点
    Car_Balance_Val.Pitch_Zero=7;

    Delay_Ms(1000);
    //UART_PutChar(Ble_Uart,1);//串口测试

    while(1)
    {
        if(Task_Flag==0)
        {
            //按键和显示
            Key();
            User_Display();
        }
        if(send_flag>20&&Car_Balance_Val.Start_Flag!=0)
        {
            //串口发送
            Uart_Send_Data();
            send_flag=0;
        }
        if(Task_Flag!=0)
        {

        }
    }
}

float Roll_error_Last;
int Roll_error_1_Count;
void Balance_CallBack(void)//中断回调函数
{
    //LQ_DMP_Read();//读取角度值
    send_flag++;

    //角度闭环和转向
    Yaw_Error_Calculate();
    Car_Direction_1();

    //Car_Direction_2();软件算法转向 先快转再降速 饱和后反向转


    //压弯控制
    Roll_error=Yaw_Error_Car_Direction_1*Roll_error_kp;//*Car_Balance_Val.speed_vel*Car_Balance_Val.speed_vel;
    Roll_error_1_Count++;
    Roll_error=constrain_float(Roll_error, -Roll_error_Max, Roll_error_Max);//;*kp_vel

    //pid计算。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
    PWM_R = (int)R_Cascade_Pid_Ctrl(Car_Balance_Val.Roll_Zero+Roll_error,0);//动量轮pid计算+Pitch_error
    Motor_P=P_Cascade_Pid_Ctrl(Car_Balance_Val.Pitch_Zero+Pitch_error,Car_Balance_Val.Speed);//行进轮pid计算

    //摔倒检测。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
    Car_Balance_Val.Roll_error = Roll - Car_Balance_Val.Roll_Zero;
    Car_Balance_Val.Pitch_error = Pitch - Car_Balance_Val.Pitch_Zero;
    if(fabs(Car_Balance_Val.Roll_error)>30 || fabs(Car_Balance_Val.Pitch_error)>15)
    {
        Car_Balance_Val.Start_Flag=0;

    }
    //摔倒检测。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//

    //停止/启动 。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//、
    if(Car_Balance_Val.Start_Flag == 0)
    {
        PWM_R=0;
        Motor_P=0;
        PWM_Y=0;
        P_acc_pid.out=0;
        R_acc_pid.out=0;
        Roll_error=0;
        Task_Flag=0;
        Pitch_error=0;
        Car_Balance_Val.Pitch_Zero=7;
        Car_Balance_Val.Speed=0;
        Yaw_Error_Car_Direction_1=0;
        Yaw_Error=0;
    }
    else
    {
        //限幅
        if(PWM_R>MotorR_Max)//考虑是否要留余量给转弯
        {
            PWM_R=MotorR_Max;
        }
        else if(PWM_R<-MotorR_Max)
        {
            PWM_R=-MotorR_Max;
        }
        if(PWM_R>0&&PWM_R<MotorR_Min)
        {
            PWM_R=MotorR_Min;
        }
        else if(PWM_R<0&&PWM_R>-MotorR_Min)
        {
            PWM_R=MotorR_Min;
        }
        if(Motor_P>MotorP_Max)
        {
            Motor_P=MotorP_Max;
        }
        else if(Motor_P<-MotorP_Max)
        {
            Motor_P=-MotorP_Max;
        }
        if(Motor_P>0&&Motor_P<MotorP_Min)
        {
            Motor_P=MotorP_Min;
        }
        if(Motor_P<0&&Motor_P>-MotorP_Min)
        {
            Motor_P=-MotorP_Min;
        }

    }
    if(Task_Flag==0)
    {
        PWM_Y=0;
    }
    small_driver_set_duty((short int)(-PWM_R+PWM_Y),(short int)(PWM_R+PWM_Y));//
    MotorCtr(Motor1, -Motor_P);
    //停止/启动 。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//


}


