#ifndef USER_TASK_H
#define USER_TASK_H


typedef struct
{
        int x;
        int y;
        int width;
        int height;
        int size;
        int direction;
        int mile;
}Beacon_typedef;

int Beacon_Judge(RegionFeature f);
extern Beacon_typedef Beacon[100],Beacon_1[100];
extern int Beacon_count,Beacon_count_1;
void Task(void);
void IE_to_point(float point_x,float point_y);

extern int Task_Flag;
extern int Task_Turn;
extern int Turn_Two_Flag;
void Task_IE(void);
void Boudary_Judge(void);
void Beacon_Error_Contrl(void);
extern int Boudary_flag;//边界标志位
extern int Boudary_judge_flag;//是否开启边界判断
extern int Beacon_y_speed;//信标灯远近，越大加速距离越长
extern float Pitch_Zero_max;//越大最快速度越快
extern float Pitch_Zero_speed_kp;//防超速控制Kp,越大控制越明显
extern int Camera_direction_flag;//摄像头2方向位置 0为右，1为左
extern float Task_Turn_Angle;
extern int Beep_Flag;
extern float Pitch_error;
extern float X_middle,Y_middle;
extern float Task_Speed_Max;
extern float Task_Speed_Middle;
extern float Task_Speed_Min;
#endif
