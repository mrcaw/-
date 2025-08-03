#include "include.h"

Beacon_typedef Beacon[100],Beacon_1[100];
int Beacon_count=0,Beacon_count_1=0;

int Task_Flag=0;
int Task_Turn=0;
int Task_Turn_Flag=0;
int Boudary_judge_flag=0;//是否开启边界判断
float Task_Speed=50;//统一速度值
float Task_Speed_Max=150;
float Task_Speed_Middle=100;
float Task_Speed_Min=50;
//float Task_Speed_Max=50;
//float Task_Speed_Middle=50;
//float Task_Speed_Min=50;
int last_y;
int Change_Direction_flag=0;
int Turn_Two_Flag=0;//旋转两次标志位
float Beacon_error;//信标灯偏移量
int Boudary_flag=0;//边界标志位
int Beacon_y_speed=25;//信标灯远近，越大加速距离越长
float Pitch_Zero_max=7;//越大最快速度越快
float Pitch_Zero_speed_kp=10;//防超速控制Kp,越大控制越明显
int Camera_direction_flag=0;//摄像头2方向位置 0为右，1为左
float Task_Turn_Angle=120;
int Beep_Flag=0;
int Beep_Tim_Flag=0;
float Pitch_error;
float X_middle=0,Y_middle=2.5;
float Boudary_mile=1.5;
int Beacon_once_error=5;
void Task(void)
{

    Boudary_Judge();//信标判断 未启用

    if((Beacon_count!=0&&(Task_Flag!=0)))
    {
        int max_size=0,max_size_i;
        Turn_Two_Flag=0;
        //寻找最大亮点。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
        for(int i=0;i<Beacon_count;i++)
        {
            if(Beacon[i].size>max_size)
            {
                max_size=Beacon[i].size;
                max_size_i=i;
            }
        }
        //寻找最大亮点。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
        if(Task_Flag==3)
        {
            //Yaw_Error_Car_Direction_1=0;
        }
        Task_Flag=2;
        float Error=0;
        if(Boudary_flag==1)//车到边界 信标灯可能在边界外
        {
            IE_to_point(X_middle,Y_middle);//去中间位置
        }
        else
        {
            //旋转到目标灯方向。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//

            Beacon_error=(float)Beacon[max_size_i].size/2;
            Beacon_error=constrain_float(Beacon_error, 0, 15);
            if(Beacon[max_size_i].x+Beacon_error>47&&Beacon[max_size_i].direction!=1)//信标灯转向控制
            {
                Error=-((Beacon[max_size_i].x+Beacon_error)-47.0f)*1.4;
                //Error=Error*0.6+Yaw_Error*0.4;
                //Yaw_Error=Error;
            }
            else if(Beacon[max_size_i].x+Beacon_error<=47&&Beacon[max_size_i].direction!=1)
            {
                Error=((float)Beacon[max_size_i].x+Beacon_error)*1.4;
            }
            Yaw_Error=Error;
            //旋转到目标灯方向。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//

            //速度控制。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
            if(Beacon[max_size_i].y<Beacon_y_speed&&fabs(Yaw_Error)<=10)//速度控制
            {
                if(Inc_Loc_Flag==0)
                {
                    Car_Control(2, Task_Speed_Max);//可以加速
                }
                else
                {
                    Pitch_error=2;
                    Car_Control(2, Task_Speed);//可以加速
                }
                //Pitch_error=1;
            }
            else if(Beacon[max_size_i].y>=Beacon_y_speed&&fabs(Yaw_Error)<=10)
            {
                if(Inc_Loc_Flag==0)
                {
                    Car_Control(2, Task_Speed_Max);//可以加速
                }
                else
                {
                    Pitch_error=2;
                    Car_Control(2, Task_Speed);//可以加速
                }
                //Pitch_error=0;
            }
            else if(Beacon[max_size_i].y>=Beacon_y_speed&&fabs(Yaw_Error)>20)
            {
                if(Inc_Loc_Flag==0)
                {
                    Car_Control(2, Task_Speed_Middle);
                }
                else
                {
                    Pitch_error=1;
                    Car_Control(2, Task_Speed);//可以加速
                }
                //Pitch_error=-1;
            }
            //速度控制。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
            Task_Turn_Flag=0;
        }
    }
    else if(Beacon_count==0&&Turn_Two_Flag!=0)//多次未找到灯
    {
        e_c_mile=(float)e_c_all/11955;
        if(e_c_mile>0.4&&Turn_Two_Flag==1)
        {
            Turn_Two_Flag=2;
            Task_Flag=2;
        }
        if(Turn_Two_Flag==2)
        {
            IE_to_point(X_middle,Y_middle);//去中间位置
            if(Inc_Loc_Flag==0)
            {
                Car_Control(2, Task_Speed_Middle);
            }
            else
            {
                Pitch_error=1;
                Car_Control(2, Task_Speed);//可以加速
            }

        }
        if(fabs(Cal_mile_Xy(X_middle,Y_middle, x, y))<0.3)
        {
            Turn_Two_Flag=0;
            Task_Flag=2;
        }
    }
    else if(Beacon_count==0&&Turn_Two_Flag==0)//未找到灯
    {
        if(Task_Flag==2||Task_Flag==1)
        {
            e_c_all=0;
            Task_Flag=3;
            Yaw_Init=Yaw;
        }
        else if(Task_Flag==3)
        {
            if(fabs(Yaw_Error)>10)
            {
                //e_c_all=0;
            }
            e_c_mile=(float)e_c_all/11955;

            //边界判断。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//
            if(Boudary_flag==1)//车到边界 信标灯可能在边界外
            {
                IE_to_point(X_middle,Y_middle);//去中间位置
            }
            //边界判断。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//

            else if(e_c_mile>0.5&&fabs(Yaw_Error)<10)//)
            {
                if(Inc_Loc_Flag==0)
                {
                    Car_Control(2, Task_Speed_Min);
                }
                else
                {
                    Pitch_error=1;
                    Car_Control(2, Task_Speed);//可以加速
                }
                //Pitch_error=-1;
                //摄像头放左放右判断。。。。。。。。。。。。。。。。。。。。。。。。。。。//
                if(Camera_direction_flag==0)
                {
                    if(Task_Turn_Angle<0)
                    {
                        Task_Turn_Angle=-Task_Turn_Angle;
                    }
                }
                else
                {
                    if(Task_Turn_Angle>0)
                    {
                        Task_Turn_Angle=-Task_Turn_Angle;
                    }
                }
                //摄像头放左放右判断。。。。。。。。。。。。。。。。。。。。。。。。。。。//

                //旋转方向判断。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//我开了连续转向两次防止左右乱转
                if(Task_Turn==1)//往左转120
                {
                    if(Task_Turn_Flag==0)
                    {
                        Task_Turn_Flag=1;
                        Turn_Two_Flag=0;
                        Car_Control(3, Task_Turn_Angle);

                    }
                    else if(Task_Turn_Flag==1)
                    {
                        Task_Turn_Flag=0;
                        Turn_Two_Flag=0;//去中间
                        Car_Control(3, Task_Turn_Angle);//连转两次
                    }
                    else if(Task_Turn_Flag==2)
                    {
                        Task_Turn_Flag=0;
                        Turn_Two_Flag=0;
                        Car_Control(3, -Task_Turn_Angle);
                    }
                    Task_Turn=0;
                }
                else
                {
                    if(Task_Turn_Flag==0)
                    {
                        Task_Turn_Flag=2;
                        Turn_Two_Flag=0;
                        Car_Control(3, -Task_Turn_Angle);
                    }
                    else if(Task_Turn_Flag==2)
                    {
                        Task_Turn_Flag=0;
                        Turn_Two_Flag=0;//连转两次没找到目标
                        Car_Control(3, -Task_Turn_Angle);//连转两次
                    }
                    else if(Task_Turn_Flag==1)
                    {
                        Task_Turn_Flag=0;
                        Turn_Two_Flag=0;
                        Car_Control(3, Task_Turn_Angle);
                    }
                    Task_Turn=0;
                }
                //旋转方向判断。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。//

                e_c_all=0;
            }
        }
    }
}

float IE_Error;

//简单的里程计导航
void IE_to_point(float point_x,float point_y)
{
    IE_Error=Odometry_Angle-(float)Cal_angle_Xy(x,y,point_x,point_y);
    if(IE_Error>180)
    {
        IE_Error=IE_Error-360;
    }
    else if(Yaw_Error<-180)
    {
        IE_Error=IE_Error+360;
    }
    Yaw_Error=IE_Error*0.5+Yaw_Error*0.5;
}
void Boudary_Judge(void)//边界检测（未测试）
{
    if(x>=Area_X_Max||y>=Area_Y_Max||x<=Area_X_Min||y<=Area_Y_Min)
    {
        Boudary_flag=1;
    }
    else if(Boudary_flag==0)
    {
        Boudary_flag=0;
    }
    else if(Boudary_flag==1)
    {
        if(fabs(Cal_mile_Xy(X_middle,Y_middle, x, y))<Boudary_mile)
        {
            Boudary_flag=0;
        }
    }
    if(Boudary_judge_flag==1&&Boudary_flag==1)//车到边界 信标灯可能在边界外
    {
        Boudary_flag=1;

    }
    else
    {
        Boudary_flag=0;
    }
}

int Beacon_Judge(RegionFeature f)//信标判断
{
    if(f.centroid_y<30&&f.size>100)
    {
        return 0;
    }
    else if(f.centroid_y>45&&f.size<20)
    {
        return 0;
    }
    else if(f.size>400)
    {
        return 0;
    }
    if(f.size<3&&f.centroid_y<30)
    {
        f.mile_min=1.8;
        f.mile_max=999;
    }
    else if(f.size>=3&&f.size<10&&f.centroid_y<30)
    {
        f.mile_min=1.2;
        f.mile_max=1.8;
    }
    else if(f.size>=10&&f.size<100)
    {
        f.mile_min=0.6;
        f.mile_max=1.2;
    }
    else if(f.size>=100&&f.centroid_y>30)
    {
        f.mile_min=0;
        f.mile_max=0.6;
    }
    else if(f.centroid_y>55)
    {
        f.mile_min=0;
        f.mile_max=0.6;
    }
//    float k,b;
//    if((360-f.angle+90)%360!=90)
//    {
//        k=tan((360-f.angle+90)%360);
//    }
    float size_flag,size_reliability;
    size_flag=6.47*f.centroid_y-166;
    if(size_flag<0)
    {
        size_flag=0;
    }
    if(size_flag<50)
    {
        size_reliability=1-fabs((float)f.size-size_flag)/50;
    }
    else
    {
        size_reliability=1-fabs((float)f.size-size_flag)/200;
    }
    if(f.centroid_y>54)
    {
        size_flag= -30.75*(float)f.centroid_y+1807;
        size_reliability=fabs(f.size-size_flag)/100;
    }
//    if(size_reliability<0.1)
//    {
//        return 0;
//    }
    float length_width_ratio;
    length_width_ratio=(float)f.width/(float)f.height;
    if(length_width_ratio<0.4)
    {
      length_width_ratio=0;
    }
    else if(length_width_ratio>5)
    {
      length_width_ratio=0;
    }
    if(length_width_ratio<1.5&&length_width_ratio!=0)
    {
      length_width_ratio=(length_width_ratio-0.9)/0.6;
    }
    else if(length_width_ratio>=1.5&&length_width_ratio<=2)
    {
      length_width_ratio=1;
    }
    else if(length_width_ratio>2)
    {
      length_width_ratio=1-(length_width_ratio-2)/2;
    }
    if(length_width_ratio<0.5)
    {
        return 0;
    }
//    if(f.max_brightness<150)
//    {
//        return 0;
//    }
    if(Camera_photo_Flag==0)
    {
        Beacon_count++;
        Beacon[Beacon_count-1].x=f.centroid_x;
        Beacon[Beacon_count-1].y=f.centroid_y;
        Beacon[Beacon_count-1].height=f.height;
        Beacon[Beacon_count-1].width=f.width;
        Beacon[Beacon_count-1].size=f.size;
        Beacon[Beacon_count-1].direction=Camera_photo_Flag;
        Beacon[Beacon_count-1].mile=f.mile_min;
    }
    else if(Camera_photo_Flag==1&&Photo_Mode_flag==0)
    {
        Beacon_count_1++;
    }
    else if(Camera_photo_Flag==1&&Photo_Mode_flag==1)
    {
        Beacon_count_1++;
        Beacon_1[Beacon_count_1-1].x=f.centroid_x;
        Beacon_1[Beacon_count_1-1].y=f.centroid_y;
        Beacon_1[Beacon_count_1-1].height=f.height;
        Beacon_1[Beacon_count_1-1].width=f.width;
        Beacon_1[Beacon_count_1-1].size=f.size;
        Beacon_1[Beacon_count_1-1].direction=Camera_photo_Flag;
    }
    return 1;
}
