#ifndef _LQ_QUAT_H_
#define _LQ_QUAT_H_
#define M_PI 3.14159265358979323846

#include "include.h"
typedef struct
{
    short accX;
    short accY;
    short accZ;
    short gyroX;
    short gyroY;
    short gyroZ;
} ICM_DATA;

typedef struct
{
    float roll;
    float pitch;
    float yaw;
} ICM_Angle;

extern ICM_DATA icm_data;

extern ICM_DATA icm_offset;

extern ICM_Angle icm_angle;

void IMU_GetOffset(ICM_DATA *offset);

// 姿态更新函数
void IMUupdate(ICM_DATA *pMpu, ICM_Angle *pAngle);

// 获取姿态数据
void Attitude_get(void);

void Test_Quat(void);

extern float Gyro_float[3];

#endif // _LQ_QUAT_H_
