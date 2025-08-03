#ifndef USER_ODMOMETRY_H
#define USER_ODMOMETRY_H

#define PI 3.1415926535
void Encoder_Odometry(int Encoder);
void CCU_Odometry(void);
float Average_angle(float *angles,int size);
double Cal_mile_Xy(double x1,double y1,double x2,double y2);
double Cal_angle_Xy(double x1,double y1,double x2,double y2);
extern float e_c_mile;
extern int e_c_all;
extern volatile int e_c_all_tim_flag;
extern float CCU_Odometry_mile;
extern int CCU_Odometry_enc;
extern float Odometry_Angle;
#endif
