#include "include.h"

float Odometry_Angle=0;
float Odometry_Angle_Init=0;
float x,y;
float e_c_mile;
int e_c_all;
float vel_imu;
float CCU_Odometry_mile;
int CCU_Odometry_enc;

//简单的里程计导航
void CCU_Odometry(void)//放进中断里计算坐标 是否加入滤波 或其他的判断 10ms中断 角度获取非平均 可以考虑是否加入俯仰角判断
{
    //vel_imu=imu660rb_acc_transition(accel[0]); //m/s^2
    CCU_Odometry_mile=(float)CCU_Odometry_enc/11839;
    Odometry_Angle=Yaw;
    if(Odometry_Angle<=0)
    {
        Odometry_Angle = Odometry_Angle+360;
    }
    //Odometry_Angle=360-Odometry_Angle;//可能存在错误 方向错了？
    Odometry_Angle=Odometry_Angle-Odometry_Angle_Init;//Odometry_Angle_Init为y轴正半轴的角度需要确定 注意转换
    if(Odometry_Angle<0)
    {
        Odometry_Angle=Odometry_Angle+360;
    }
    //俯仰角判断 即压过灯罩的误差判断
    y=y+(cos(Odometry_Angle/180*PI)*CCU_Odometry_mile);
    x=x+(sin(Odometry_Angle/180*PI)*CCU_Odometry_mile);
    CCU_Odometry_mile=0;
    CCU_Odometry_enc=0;
}

void Encoder_Odometry(int Encoder) //2ms中断
{
    e_c_all=e_c_all+Encoder;
    Car_Balance_Val.speed_vel=(float)Encoder/11955.0f/0.018f;//;
    CCU_Odometry_enc=CCU_Odometry_enc+Encoder;
   // e_c_mile=(float)e_c_all/34159;

}


float Average_angle(float *angles,int size)
{
    float angle_out;
    float cosall;
    float sinall;
    for(int i=0;i<size;i++)
    {
        cosall+=cos(angles[i]*PI/180);
        sinall+=sin(angles[i]*PI/180);
    }
    angle_out=atan2(sinall/size,cosall/size)*180/PI;
    return angle_out;
}


double Cal_mile_Xy(double x1,double y1,double x2,double y2)//xy坐标系下计算 距离 需要确定y轴正半轴
{
    double out=0;
    out=sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
    return out;
}

double Cal_angle_Xy(double x1,double y1,double x2,double y2)//只考虑到都在一象限的情况
{
    double angle=atan2(y2-y1,x2-x1)/PI*180;
    if(angle>=0&&angle<=90)
    {
        angle=90-angle;
    }
    else if(angle>90)
    {
        angle=360-angle+90;
    }
    else if(angle<0)
    {
        angle=-angle+90;
    }
    return angle;
}
