#ifndef USER_PID_H
#define USER_PID_H

#define MotorP_Max 7000 //有刷占空比最大值
#define MotorP_Min 1000

#define MotorR_Max 9500 //无刷占空比最大值
#define MotorR_Min 100


void Pid_P_Init(void);
void Pid_R_Init(void);

void P_Acc_Pid_Init(pid_param_t * pid);
void P_Angle_Pid_Init(pid_param_t * pid);
void P_Vel_Pid_Init(pid_param_t * pid);


void R_Acc_Pid_Init(pid_param_t * pid);
void R_Angle_Pid_Init(pid_param_t * pid);
void R_Vel_Pid_Init(pid_param_t * pid);
void Y_Acc_Pid_Init(pid_param_t * pid);
void Y_Err_Pid_Init(pid_param_t * pid);

float R_Cascade_Pid_Ctrl(float zhongzhi,int V_AB);
float P_Cascade_Pid_Ctrl(float zhongzhi, int V_C);

float Y_Cascade_Pid_Ctrl(float Error);


extern pid_param_t P_acc_pid;
extern pid_param_t P_angle_pid;
extern pid_param_t P_vel_pid;
extern pid_param_t R_acc_pid;
extern pid_param_t R_angle_pid;
extern pid_param_t R_vel_pid;
extern pid_param_t Y_acc_pid;
extern pid_param_t Y_err_pid;
extern pid_param_t P_vel_pid_1;
extern int Encoder_P;
extern int Inc_Loc_Flag;//1为位置式
#endif
