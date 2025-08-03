//此文件为用户平衡代码

#ifndef USER_BALANCE_H
#define USER_BALANCE_H

void Balance_Init(void);
void Balance_CallBack(void);//中断回调函数


typedef struct
{
    float Pitch_Zero;
    float Roll_Zero;
    float Pitch_error;
    float Roll_error;
    int Start_Flag;//0为静止 1为启动
    int Speed;
    double Ture_Error;
    float speed;
    float speed_vel;
}Car_Balance_Val_typedef;



extern Car_Balance_Val_typedef Car_Balance_Val;
extern int PWM_R,PWM_Y;
extern int Motor_P;
extern char LCD_txt[50];
extern char txt[20];
extern float Yaw_Error,Yaw_Lin;
extern float Yaw_Init;
extern int C_condition;//车状态
extern int Yaw_ZX_Flag;//旋转flag 防止多次旋转
extern float Yaw_Out;
extern int send_flag;
extern float Roll_error_kp;
extern float Roll_error_Max;
extern float Roll_error;
extern int Area_X_Max,Area_Y_Max;
extern int Area_X_Min,Area_Y_Min;
#define Beep       P15_5
#define Beep_ON    PIN_Write(Beep,0);
#define Beep_OFF   PIN_Write(Beep,1);
#endif
