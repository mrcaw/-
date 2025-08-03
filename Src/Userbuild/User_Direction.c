#include "include.h"
int Flag_I,Flag_A; //标志位分频用

int Yawover_Flag=0;
int Yaw_Ture_Error;
int Yawover_Flag_record;

float Yaw_Error_Last;

int Yaw_Ture_Error_Flag=0;
int Yaw_Ture_Error_Flag1=0;

float Yaw_Flag1=0;
float Yaw_Flag2=0;
float Yaw_Flag3=0;
float Yaw_Flag4=0;
int Turn_Flag=0;
float PWMY_MAX=4000;
int Turn_Wave_Flag=0;
int Turn_Wave_Count=0;

void Car_Direction(void)
{
    PWM_Y=-Y_Cascade_Pid_Ctrl(Yaw_Error);
}


void Yaw_Error_Calculate(void)
{
    if(Task_Flag==1||Task_Flag==2)
    {

    }
    else
    {
        if(C_condition==3)//闭环转向
        {
            if(Yaw_ZX_Flag!=0)
            {
                Yaw_Init=Yaw_Init+Yaw_Out;
                if(Yaw_Init>360)
                {
                    Yaw_Init=Yaw_Init-360;
                }
                if(Yaw_Init<0)
                {
                    Yaw_Init=Yaw_Init+360;
                }
                Yaw_ZX_Flag=0;
             }
        }
        if(Car_Balance_Val.Start_Flag==1)
        {
            Yaw_Lin=Yaw;
            Yaw_Error=Yaw_Lin-Yaw_Init;
            if(Yaw_Error>180)
            {
                Yaw_Error=Yaw_Error-360;
            }
            if(Yaw_Error<-180)
            {
                Yaw_Error=Yaw_Error+360;
            }
        }
        else
        {
            Yaw_Error=0;
        }
    }
//    if(Turn_Flag==1)
//    {
//        Yaw_Error=180-Yaw_Error;
//        if(Yaw_Error>180)
//        {
//            Yaw_Error=360-Yaw_Error;
//        }
//        else
//        {
//            Yaw_Error=-Yaw_Error;
//        }
//    }
//    if(fabs(Yaw_Error)>95)//换向 用向后跑代替旋转
//    {
//        if(Turn_Flag==0)
//        {
//            Turn_Flag=1;
//        }
//        else if(Turn_Flag==1)
//        {
//            Turn_Flag=0;
//        }
//    }
}


void Car_Control(int Car_Condition,float Can_Shu)//车基本状态控制
{
    if(Car_Condition==1)//直立
    {
        C_condition=1;
        Car_Balance_Val.Start_Flag=1;
        Car_Balance_Val.Speed=0;
        Yaw_Init=Yaw;
        //Pid_P_Init();
    }
    else if(Car_Condition==2)//前进或后退
    {
        C_condition=2;
        if(Car_Balance_Val.Start_Flag==1)
        {
            Car_Balance_Val.Speed=-Can_Shu;
//            if(Turn_Flag==0)//换向
//            {
//                Car_Balance_Val.Speed=-Can_Shu;
//            }
//            else
//            {
//                Car_Balance_Val.Speed=Can_Shu;
//            }
            if(Yaw_Init==0)
            {
                Yaw_Init=Yaw;
            }
        }
        //Pid_P_Init();
    }
    else if(Car_Condition==3)//旋转
    {
        C_condition=3;
        Yaw_Out=Can_Shu;
        Yaw_ZX_Flag=1;
        //Car_Balance_Val.Speed=-10;
    }
    else if(Car_Condition==0)
    {
        C_condition=0;
        Car_Balance_Val.Start_Flag=0;
        Car_Balance_Val.Speed=0;
    }

}
int PWM_Y_last;
float Yaw_Error_Car_Direction_1=0;
float Yaw_Error_Car_Direction_1_last=0;
int Yaw_time_count=0;
float Yaw_Last;

//缓慢转向
void Car_Direction_1(void)
{
    static int16_t Pid_t;
    Pid_t = Pid_t+2;
    if(Pid_t % 5 == 0)//5ms
    {
        Pid_t = 0;
        Yaw_time_count++;
        if(Yaw_time_count==4)//50ms
        {
            Yaw_time_count=0;

            if(Yaw_Error>Yaw_Error_Car_Direction_1)
            {
                Yaw_Error_Car_Direction_1+=10;
//                if(Yaw_Error_Car_Direction_1>Yaw_Error)
//                {
//                    Yaw_Error_Car_Direction_1=Yaw_Error;
//                }
            }
            else if(Yaw_Error<Yaw_Error_Car_Direction_1)
            {
                Yaw_Error_Car_Direction_1-=10;
//                if(Yaw_Error_Car_Direction_1<Yaw_Error)
//                {
//                    Yaw_Error_Car_Direction_1=Yaw_Error;
//                }
            }
            else if(Yaw_Error==Yaw_Error_Car_Direction_1)
            {
                Yaw_Error_Car_Direction_1=Yaw_Error;
            }
      }
        //Yaw_Error_Car_Direction_1=Yaw_Error;
//        if(fabs(Yaw_Last)-5>fabs(Yaw_Error))
//        {
//            Yaw_Error_Car_Direction_1=0;
//        }
//        else if(Yaw_Last*Yaw_Error<-5)
//        {
//            Yaw_Error_Car_Direction_1=0;
//        }
//        Yaw_Last=Yaw_Error;
        Yaw_Error_Car_Direction_1=constrain_float(Yaw_Error_Car_Direction_1, -120, 120);
//        Yaw_Error_Car_Direction_1=Yaw_Error_Car_Direction_1*0.2+Yaw_Error_Car_Direction_1_last*0.8;
//        Yaw_Error_Car_Direction_1_last=Yaw_Error_Car_Direction_1;
        PidLocCtrl(&Y_err_pid, Yaw_Error_Car_Direction_1);

    }
    if(Pid_t % 1 == 0)//1ms
    {
        PidLocCtrl(&Y_acc_pid, Y_err_pid.out+gyro[2]);//
    }
    //PWM_Y=(float)Y_acc_pid.out*0.4+(float)PWM_Y_last*0.6;
    PWM_Y=Y_acc_pid.out;
    PWM_Y_last=PWM_Y;
    if(PWM_Y>PWMY_MAX)
    {
        PWM_Y=PWMY_MAX;
    }
    else if(PWM_Y<-PWMY_MAX)
    {
        PWM_Y=-PWMY_MAX;
    }
}
float Ture_Error_last;


//19届使用的软件转向 之前在O车模慢慢跑有奇效 Q车使用无效 但是非常难调
void Car_Direction_2(void)
{
    if(++Flag_I==50) // 100ms
    {
        if(Yaw_Ture_Error_Flag==0)//加速旋转标志位 角度过大加速旋转
        {
            if(fabs(Yaw_Error) < 30)
            {
                if(fabs(Yaw_Error) < 20)
                {
                    Car_Balance_Val.Ture_Error = -Yaw_Error;//
                }
                else if(Yaw_Error>0)
                {
                    Car_Balance_Val.Ture_Error -= 1;
                }
                else if(Yaw_Error<0)
                {
                    Car_Balance_Val.Ture_Error +=1;
                }
            }
            else if(fabs(Yaw_Error) < 40)
            {
                if(Yaw_Error>0)
                {
                    Car_Balance_Val.Ture_Error -= 2;
                }
                else if(Yaw_Error<0)
                {
                    Car_Balance_Val.Ture_Error +=2;
                }
            }
            else
            {
                if(Yaw_Error>0)
                {
                    Car_Balance_Val.Ture_Error -= 3;
                }
                else if(Yaw_Error<0)
                {
                    Car_Balance_Val.Ture_Error += 3;
                }
            }
        }
        Car_Balance_Val.Ture_Error = constrain_double(Car_Balance_Val.Ture_Error, -50, 50);
        if(fabs(Yaw_Error)>30&&Yaw_Ture_Error_Flag1==0)//过大角度旋转进入判断
        {
            Yaw_Ture_Error_Flag1=1;//过大角度旋转标志位
            Car_Balance_Val.Ture_Error =-Yaw_Error;
            Yaw_Flag4=Yaw_Error; //保存旋转角度
            //Car_Price.speed=vel_Min;
//            if(Car_Price.speed!=0)
//            {
//                Car_Price.speed=vel_X_1;
//                //Car_Price.speed=20;
//            }
        }
        if(abs(Yaw_Error)>abs(Yaw_Flag4)+5&&Yaw_Ture_Error_Flag1==1)//退出加速旋转
        {
            Yaw_Ture_Error_Flag=0;
            Yaw_Ture_Error_Flag1=0;
            Yaw_Flag4=Yaw_Error;
        }
        if(Yaw_Error*Yaw_Flag4<0&&Yaw_Ture_Error_Flag1==1)//退出加速旋转
        {
            Yaw_Ture_Error_Flag=0;
            Yaw_Ture_Error_Flag1=0;
            Yaw_Flag4=Yaw_Error;
            Car_Balance_Val.Ture_Error=-Yaw_Error;
        }
        if((Yaw_Ture_Error_Flag1==1&&abs(Yaw_Error)<abs(0.5*Yaw_Flag4)))// 已经转完一半 回正速度
            //(fabs(Car_Balance_Val.Ture_Error)==100&&fabs(Yaw_Error)<=40)低角度满速 饱和 可以考虑反向转弯
        {
            Yaw_Ture_Error_Flag=1;//角度变小回正速度标志位
            Car_Balance_Val.Ture_Error=-Yaw_Error;
//            if(Car_Price.speed!=0)
//            {
//                Car_Price.speed=vel_X_2;
//                //Car_Price.speed=30;
//            }
        }
        if(Yaw_Ture_Error_Flag==1)//开始回正速度
        {
            if(Car_Balance_Val.Ture_Error<0)
            {
                Car_Balance_Val.Ture_Error+=10;
            }
            if(Car_Balance_Val.Ture_Error>0)
            {
                Car_Balance_Val.Ture_Error-=10;
            }
            if(Yaw_Error>0&&Car_Balance_Val.Ture_Error>=-10)
            {
                Car_Balance_Val.Ture_Error=-10;
            }
            else if(Yaw_Error<0&&Car_Balance_Val.Ture_Error<=10)
            {
                Car_Balance_Val.Ture_Error=10;
            }
            if(fabs(Yaw_Error)<10)//角度已经回正
            {
                Yaw_Ture_Error_Flag=0;
                Yaw_Ture_Error_Flag1=0;
                Car_Balance_Val.Ture_Error = -Yaw_Error;
            }
        }
        Flag_I=0;
        if(fabs(Yaw_Error)<10)//角度已经回正
        {
            Yaw_Ture_Error_Flag=0;
            Yaw_Ture_Error_Flag1=0;
            Car_Balance_Val.Ture_Error = -Yaw_Error;
        }

    }
    Car_Balance_Val.Ture_Error = constrain_double(Car_Balance_Val.Ture_Error, -50, 50);
    if(++Flag_A==10)//20ms输出速度
    {
        Ture_Error_last= Car_Balance_Val.Ture_Error;
        PWM_Y = Y_Cascade_Pid_Ctrl(Car_Balance_Val.Ture_Error);
        PWM_Y=constrain_int(PWM_Y,-PWMY_MAX,PWMY_MAX);
        Flag_A=0;

    }
}





short constrain_short(short amt, short low, short high)
{
    return ((amt)<(low)?(low):((amt)>(high)?(high):(amt)));
}

double constrain_double(double amt, double low, double high)
{
    return ((amt)<(low)?(low):((amt)>(high)?(high):(amt)));
}

int constrain_int(int amt, int low, int high)
{
    return ((amt)<(low)?(low):((amt)>(high)?(high):(amt)));
}
