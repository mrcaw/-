//此文件存放用户串口回调函数

#include "include.h"

uint8 Motor_Check;              //无刷电机校验位
short int Motor_Speed_Right=0;
short int Motor_Speed_Left=0;   //无刷电机速度
Uart_TypeDef Motor_Uart_Val;    //无刷电机回调函数参数
uint8 Motor_Send_Data_Buffer[7];

Uart_TypeDef Ble_Change_Vel;

extern pid_param_t P_acc_pid;
extern pid_param_t P_angle_pid;
extern pid_param_t P_vel_pid;


extern pid_param_t R_acc_pid;
extern pid_param_t R_angle_pid;
extern pid_param_t R_vel_pid;

//extern pid_param_t Y_acc_pid;
//extern pid_param_t Y_err_pid;

extern LowPassFilter Right_Speed;
extern LowPassFilter Left_Speed;


void Motor_Uart_CallBack(void)//此函数为无刷电机串口回调函数需要放在中断里面
{
    Motor_Uart_Val.buf=UART_GetChar(Motor_Uart);     //目前无刷串口选用15.0(tx)和20.9(rx)引脚 属于Uart1
    //UART_PutChar(Ble_Uart, Motor_Uart_Val.buf);
    if(Motor_Uart_Val.buf==0xA5&&Motor_Uart_Val.buffer[0]!=0xA5)
    {
        Motor_Uart_Val.num=0;
    }
    Motor_Uart_Val.buffer[Motor_Uart_Val.num++]=Motor_Uart_Val.buf;//先存入字符串组再加一
    if(Motor_Uart_Val.num>=7)
    {
        if(Motor_Uart_Val.buffer[0]==0xA5)
        {
            Motor_Check=0;
            for(int i = 0; i < 6; i ++)
            {
                Motor_Check +=Motor_Uart_Val.buffer[i];       // 重新计算校验位
            }
            if(Motor_Check == Motor_Uart_Val.buffer[6])        // 校验数据准确性
            {

                if(Motor_Uart_Val.buffer[1] == 0x02)                          // 判断是否正确接收到 速度输出 功能字
                {
                    Motor_Speed_Left  =   (((int)(Motor_Uart_Val.buffer[2]) << 8) | (int)(Motor_Uart_Val.buffer[3]));// 拟合左侧电机转速数据
                    Motor_Speed_Right =  (((int)(Motor_Uart_Val.buffer[4]) << 8) | (int)(Motor_Uart_Val.buffer[5])); // 拟合右侧电机转速数据

                    Motor_Speed_Left=lowPassFilter(Motor_Speed_Left,&Left_Speed);//一阶低通滤波
                    Motor_Speed_Right=lowPassFilter(Motor_Speed_Right,&Right_Speed);
                }
                Motor_Uart_Val.num = 0;                                     // 清除缓冲区计数值
                memset(Motor_Uart_Val.buffer, 0, 7);                          // 清除缓冲区数据
            }
            else
            {
                Motor_Uart_Val.num = 0;                                     // 清除缓冲区计数值
                memset(Motor_Uart_Val.buffer, 0, 7);                          // 清除缓冲区数据
            }
        }
        else
        {
            Motor_Uart_Val.num = 0;                                     // 清除缓冲区计数值
            memset(Motor_Uart_Val.buffer, 0, 7);                          // 清除缓冲区数据
        }
    }
}


void small_driver_set_duty(short int left_duty, short int right_duty)
{
    if(left_duty>9500)
    {
        left_duty=9500;
    }
    else if(left_duty<-9500)
    {
        left_duty=-9500;
    }
    if(right_duty>9500)
    {
        right_duty=9500;
    }
    else if(right_duty<-9500)
    {
        right_duty=-9500;
    }
    Motor_Send_Data_Buffer[0] = 0xA5;                                         // 配置帧头
    Motor_Send_Data_Buffer[1] = 0X01;                                         // 配置功能字
    Motor_Send_Data_Buffer[2] = (uint8)((left_duty & 0xFF00) >> 8);           // 拆分 左侧占空比 的高八位
    Motor_Send_Data_Buffer[3] = (uint8)(left_duty & 0x00FF);                  // 拆分 左侧占空比 的低八位
    Motor_Send_Data_Buffer[4] = (uint8)((right_duty & 0xFF00) >> 8);          // 拆分 右侧占空比 的高八位
    Motor_Send_Data_Buffer[5] = (uint8)(right_duty & 0x00FF);                 // 拆分 右侧占空比 的低八位
    Motor_Send_Data_Buffer[6] = 0;                                            // 和校验清除
    for(int i = 0; i < 6; i ++)
    {
        Motor_Send_Data_Buffer[6] += Motor_Send_Data_Buffer[i];         // 计算校验位
    }
    UART_PutBuff(Motor_Uart, Motor_Send_Data_Buffer, 7);                     // 发送设置占空比的 字节包 数据
}


void small_driver_get_speed(void)
{
    //small_driver_init();                                                                        // 结构体参数初始化
    small_driver_set_duty(0, 0);                                                                // 设置0占空比
    Motor_Send_Data_Buffer[0] = 0xA5;                                         // 配置帧头
    Motor_Send_Data_Buffer[1] = 0X02;                                         // 配置功能字
    Motor_Send_Data_Buffer[2] = 0x00;                                         // 数据位清空
    Motor_Send_Data_Buffer[3] = 0x00;                                         // 数据位清空
    Motor_Send_Data_Buffer[4] = 0x00;                                         // 数据位清空
    Motor_Send_Data_Buffer[5] = 0x00;                                         // 数据位清空
    Motor_Send_Data_Buffer[6] = 0xA7;                                         // 配置校验位
    UART_PutBuff(Motor_Uart, Motor_Send_Data_Buffer, 7);                     // 发送获取转速数据的 字节包 数据
}


void Ble_Change(void)//蓝牙调参 使用14.0 TX和14.1 RX IO口 使用vofa
{
    Ble_Change_Vel.buf=UART_GetChar(Ble_Uart);

    if((Ble_Change_Vel.buf==0x40||Ble_Change_Vel.buf==0xA5)||(Ble_Change_Vel.buffer[0]!=0x40&&Ble_Change_Vel.buffer[0]!=0XA5))
    {
        Ble_Change_Vel.num=0;
        UART_PutChar(Ble_Uart, Ble_Change_Vel.buf);
    }
    Ble_Change_Vel.buffer[Ble_Change_Vel.num++]=Ble_Change_Vel.buf;
    if(Ble_Change_Vel.buf==0x21)
    {
        char flag=Ble_Change_Vel.buffer[1];
        for(int i=0;i+2<=Ble_Change_Vel.num-1;i++)
        {
            Ble_Change_Vel.buffer[i]=Ble_Change_Vel.buffer[i+2];
        }
        switch(flag)
        {
            case 0x41:
                P_acc_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x42:
                P_acc_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x43:
                P_acc_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x44:
                P_angle_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x45:
                P_angle_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x46:
                P_angle_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x47:
                P_vel_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x48:
                P_vel_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x49:
                P_vel_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x4A:
                R_acc_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x4B:
                R_acc_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x4C:
                R_acc_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0X4D:
                R_angle_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x4E:
                R_angle_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x4F:
                R_angle_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x50:
                R_vel_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x51:
                R_vel_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x52:
                R_vel_pid.kd=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x53:
                Car_Balance_Val.Speed=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x54:
                Roll_error_kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x55:
                Roll_error_Max=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x56:
                Y_err_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x57:
                Y_err_pid.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x58:
                Y_acc_pid.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x59:
                PWMY_MAX=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x5A:
                P_vel_pid_1.kp=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x5B:
                P_vel_pid_1.ki=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            case 0x5C:
                Roll_error=atof(( const char * )Ble_Change_Vel.buffer);
                break;
            default:
                break;
        }
        memset(Ble_Change_Vel.buffer,0,sizeof(Ble_Change_Vel.buffer));
        Ble_Change_Vel.num=0;
    }
    else if(Ble_Change_Vel.buf==0xAA)
    {
        uint8 flag=Ble_Change_Vel.buffer[3];
        switch(flag)
        {
            case 0xB2:
                Car_Control(2, 150);
                break;
            case 0xB4:
                Car_Control(2, 50);

                Car_Control(3, 120);
                break;
            case 0xB5:
                Car_Control(1, 0);
                break;
            case 0xB6:
                Car_Control(2, 50);
                Car_Control(3, -120);
                break;
            case 0xB8:
                Car_Control(2, -200);
                break;
            default:
                break;
        }
        memset(Ble_Change_Vel.buffer,0,sizeof(Ble_Change_Vel.buffer));
        Ble_Change_Vel.num=0;
    }
    if(Ble_Change_Vel.num>20)
    {
        memset(Ble_Change_Vel.buffer,0,sizeof(Ble_Change_Vel.buffer));
        Ble_Change_Vel.num=0;
    }
}


void Uart_Pose(void)
{
    char uart_send[20];
    sprintf(uart_send,"%.2f,%.2f,%.2f\n",Roll,Pitch,Yaw);
    UART_PutBuff(Ble_Uart, (unsigned char *)uart_send, sizeof(uart_send));
}

void Uart_Send_Data(void)
{
    unsigned char uart_send[100];
//    memset(uart_send,0,sizeof(uart_send));
//    sprintf((char *)uart_send,"yaw_error=%.2f\r\n",Yaw_Error);
    memset(uart_send,0,sizeof(uart_send));
    //float angle_lin=Cal_angle_Xy(x,y,0,2.5);
    sprintf((char *)uart_send,"Y_e=%.2f,Roll=%.2f,Y_1=%.2f,R_e=%.2f,PWM_Y=%d,PWM_R=%d\r\n",Yaw_Error,Roll,Yaw_Error_Car_Direction_1,Roll_error,PWM_Y,PWM_R);
    UART_PutBuff(Ble_Uart, (unsigned char *)uart_send, sizeof(uart_send));
}

void Ble_Change_Vel_Init(void)
{
    Roll_error_kp=0.1;
    Roll_error_Max=10;

}
