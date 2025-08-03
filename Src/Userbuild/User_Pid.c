#include "include.h"

pid_param_t P_acc_pid;
pid_param_t P_angle_pid;
pid_param_t P_vel_pid;
pid_param_t P_vel_pid_1;

pid_param_t R_acc_pid;
pid_param_t R_angle_pid;
pid_param_t R_vel_pid;

pid_param_t Y_acc_pid;
pid_param_t Y_err_pid;


int Encoder_P=0;//行进轮编码器计数值
extern LowPassFilter R_Speed;
short Gyro1_Last;
short Gyro0_Last;
int Inc_Loc_Flag=0;//1为位置式
void P_Acc_Pid_Init(pid_param_t * pid)
{
    pid->kp        =2.5f;//4.0f;//2.0f;//0.7;
    pid->ki        = 0.15;//0.0f;//0.15f;//0.003;
    pid->kd        = 0;
    pid->imax      = 0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void P_Angle_Pid_Init(pid_param_t * pid)
{
    pid->kp        = 60;//100;//210.0f;//60 150;
    pid->ki        = 0.0000;
    pid->kd        = 0;//15;
    pid->imax      = 0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void P_Vel_Pid_Init(pid_param_t * pid)
{

    pid->kp        = 0.035;//0.03 ;
    pid->ki        = 0;//;
    pid->kd        = 0;
    pid->imax      = 100;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void R_Acc_Pid_Init(pid_param_t * pid)
{
    pid->kp        = 0.5;//1.5;//5;//1.5f;//过大会颤动 6
    pid->ki        = 1.5;//1.5;//1.5f;//0.12
    pid->kd        = 0;
    pid->imax      = 0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void R_Angle_Pid_Init(pid_param_t * pid)
{
    pid->kp        = 100;//60.0f;//60;200
    pid->ki        = 0;
    pid->kd        = 0;//10;
    pid->imax      = 0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void R_Vel_Pid_Init(pid_param_t * pid)
{

    pid->kp        = 0.0010;//0.001;//0.001f;//
    pid->ki        = 0;//0.001;//.0012
    pid->kd        = 0;
    pid->imax      = 0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}

void Y_Acc_Pid_Init(pid_param_t * pid)
{
    pid->kp        =5;
    pid->ki        = 0.0;
    pid->kd        = 0.000;
    pid->imax      = 0.0;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}
void Y_Err_Pid_Init(pid_param_t * pid)
{
    pid->kp        =40;
    pid->ki        = 0;
    pid->kd        = 0;
    pid->imax      = 100;
    pid->out_p     = 0;
    pid->out_i     = 0;
    pid->out_d     = 0;
    pid->out       = 0;
    pid->integrator= 0;
    pid->last_error= 0;
    pid->last_derivative   = 0;
    pid->last_t    = 0;
}


void Pid_P_Init(void)
{
        P_Acc_Pid_Init(&P_acc_pid);
        P_Angle_Pid_Init(&P_angle_pid);
        P_Vel_Pid_Init(&P_vel_pid);
        P_vel_pid_1.kp=50;
        P_vel_pid_1.ki=0;
        P_vel_pid_1.imax=1000;
}


void Pid_R_Init(void)
{
    R_Acc_Pid_Init(&R_acc_pid);
    R_Angle_Pid_Init(&R_angle_pid);
    R_Vel_Pid_Init(&R_vel_pid);
    Y_Acc_Pid_Init(&Y_acc_pid);
    Y_Err_Pid_Init(&Y_err_pid);
}
float Pitch_error_Last;
float Roll_error_Last_pid;


float R_Cascade_Pid_Ctrl(float zhongzhi,int V_AB)  //动量轮pid计算 未确定极性
{
    static int16_t Pid_t;
    Pid_t = Pid_t+2;


    if(Pid_t % 16 == 0)//速度环
    {
        Pid_t = 0;
        //速度读取
        PidLocCtrl(&R_vel_pid,(float)(V_AB - Motor_Speed_Left + Motor_Speed_Right));//应该倾向0 可以考虑是否加入一阶低通滤波
    }
    if(Pid_t % 4 == 0)  //角度环
    {
        PidLocCtrl(&R_angle_pid,-R_vel_pid.out+(Roll - zhongzhi));//*0.4+Roll_error_Last_pid*0.6);//
    }
    PidIncCtrl(&R_acc_pid,-(float)gyro[0]-R_angle_pid.out);  //角速度环 增量式
    Gyro0_Last=gyro[0];
    if(R_acc_pid.out>=MotorR_Max)
    {
        R_acc_pid.out=MotorR_Max;
    }
    else if(R_acc_pid.out<=-MotorR_Max)
    {
        R_acc_pid.out=-MotorR_Max;
    }
    return R_acc_pid.out;
}
float P_acc_out_last;

float P_Cascade_Pid_Ctrl(float zhongzhi, int V_C) //行进轮pid计算 未确定极性
{
    static int16_t Pid_t;
    Pid_t = Pid_t+2;
    if(Pid_t % 18 == 0)//速度环 
    {
        Pid_t = 0;
        Encoder_P = -ENC_GetCounter(ENC1_InPut_P33_7);
        Encoder_Odometry(Encoder_P);
        PidLocCtrl(&P_vel_pid, (float)((float)-V_C-Encoder_P));
        if(Car_Balance_Val.Start_Flag==0)
        {
            P_vel_pid_1.integrator=0;
            P_vel_pid_1.out=0;
        }
    }
    if(Pid_t % 6 == 0)  //角度环 
    {

        PidLocCtrl(&P_angle_pid,(-P_vel_pid.out)+(Pitch- zhongzhi));//
    }

    PidIncCtrl(&P_acc_pid,-P_angle_pid.out-(float)gyro[1]);
    Gyro1_Last=gyro[1];

    if(P_acc_pid.out>MotorP_Max)
    {
        P_acc_pid.out=MotorP_Max;
    }
    else if(P_acc_pid.out<-MotorP_Max)
    {
        P_acc_pid.out=-MotorP_Max;
    }
    if(P_vel_pid_1.out>4000)
    {
        P_vel_pid_1.out=4000;
    }
    else if(P_vel_pid_1.out<-4000)
    {
        P_vel_pid_1.out=-4000;
    }
    return P_acc_pid.out;
}

float Y_Cascade_Pid_Ctrl(float Error)//转向
{
    static int16_t Pid_t;
    Pid_t = Pid_t+2;
    if(Pid_t % 2 == 0)//角度环
    {
        Pid_t = 0;
        PidLocCtrl(&Y_err_pid,-Error);

    }
    if(Pid_t % 1 == 0)//角速度环 抑制直线偏差
    {
        PidLocCtrl(&Y_acc_pid, Y_err_pid.out);//+gyro[2]
    }
    return Y_acc_pid.out;
}
