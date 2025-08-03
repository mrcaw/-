#include "LQ_Quat.h"

// 采集的原始数据
ICM_DATA icm_data;

// 低通滤波后数据
ICM_DATA icm_data_lpf;

// 陀螺仪的偏差
ICM_DATA icm_offset;
// 结算后的数据
ICM_Angle icm_angle;

uint8_t offset_flag = 0;

// 四元数
typedef struct
{
    float q0;
    float q1;
    float q2;
    float q3;
} Quaternion_t;

void IMU_Read(ICM_DATA *pMpu)
{

    ICM_Get_Raw_data(&pMpu->accX, &pMpu->accY, &pMpu->accZ, &pMpu->gyroX, &pMpu->gyroY, &pMpu->gyroZ); // 得到加速度传感器数据
}

// 牛顿迭代法求平方根
double newton_sqrt(double n)
{
    double x = n;
    double next_x;

    while (1)
    {
        next_x = 0.5 * (x + n / x);
        if (fabs(next_x - x) < 1e3 - 1)
        {
            break;
        }
        x = next_x;
    }
    return x;
}

void IMU_GetOffset(ICM_DATA *offset)
{
    int32_t data[6] = {0};
    for (uint8_t i = 0; i < 100; i++)
    {
        IMU_Read(&icm_data);
        data[3] += icm_data.gyroX;
        data[4] += icm_data.gyroY;
        data[5] += icm_data.gyroZ;
        Delay_Us(100);
    }

    offset->gyroX = data[3] / 100;
    offset->gyroY = data[4] / 100;
    offset->gyroZ = data[5] / 100;
    offset_flag = 1;
    printf("%d,%d,%d,%d,%d,%d\n", offset->accX, offset->accY, offset->accZ, offset->gyroX, offset->gyroY, offset->gyroZ);
}
void IMU_MoveOffset(ICM_DATA *pMpu, ICM_DATA *offset)
{
    if (offset_flag == 0)
        return;
    pMpu->gyroX -= offset->gyroX;
    pMpu->gyroY -= offset->gyroY;
    pMpu->gyroZ -= offset->gyroZ;
}

// 四元数解析函数
/*************************************************************************************/
#define fullT 0.001f // 采样周期

float Kp = 3, Ki = 0.00; // PID 控制参数

#define halfT fullT / 2 // 采样周期的一半

// 四元数初始化
// float q0 = 1, q1 = 0, q2 = 0, q3 = 0;
Quaternion_t Q = {1, 0, 0, 0};
float exInt = 0, eyInt = 0, ezInt = 0; // 误差积分项
float a_zi = 0.07, j_z;                // 陀螺仪比例因子0.07 //对应陀螺仪得2g量程
float acc_lpf[3];                      // 加速度低通滤波
float gyr_lpf[3];                      // 角速度低通滤波
int16_t acc[3];                        // 加速度原始数据
int16_t gyr[3];                        // 陀螺仪原始数据
float gyrset[3];                       // 陀螺仪偏置

// 姿态更新函数
void IMUupdate(ICM_DATA *pMpu, ICM_Angle *pAngle)
{
    float norm;
    float vx, vy, vz;
    float ex, ey, ez;
    float a, b;
    float gx, gy, gz, ax, ay, az;

    gx = pMpu->gyroX;
    gy = pMpu->gyroY;
    gz = pMpu->gyroZ;
    ax = pMpu->accX;
    ay = pMpu->accY;
    az = pMpu->accZ;

    // 角速度单位转换（度 -> 弧度）
    gx = gx * a_zi * 0.017453;
    gy = gy * a_zi * 0.017453;
    gz = gz * a_zi * 0.017453;

    // 归一化加速度数据
    norm = newton_sqrt(ax * ax + ay * ay + az * az);
    if (norm != 0)
    {
        ax = ax / norm;
        ay = ay / norm;
        az = az / norm;
    }

    // 计算当前的重力方向
    vx = 2 * (Q.q1 * Q.q3 - Q.q0 * Q.q2);
    vy = 2 * (Q.q0 * Q.q1 + Q.q2 * Q.q3);
    vz = Q.q0 * Q.q0 - Q.q1 * Q.q1 - Q.q2 * Q.q2 + Q.q3 * Q.q3;

    // 计算测量误差（加速度计与估计重力方向的误差）
    ex = (ay * vz - az * vy);
    ey = (az * vx - ax * vz);
    ez = (ax * vy - ay * vx);

    // 误差积分
    exInt = exInt + ex * Ki;
    eyInt = eyInt + ey * Ki;
    ezInt = ezInt + ez * Ki;

    // 调整角速度
    gx = gx + Kp * ex + exInt;
    gy = gy + Kp * ey + eyInt;
    gz = gz + Kp * ez + ezInt;
    j_z = gy;

    // 四元数更新（积分）
    Q.q0 = Q.q0 + (-Q.q1 * gx - Q.q2 * gy - Q.q3 * gz) * halfT;
    Q.q1 = Q.q1 + (Q.q0 * gx + Q.q2 * gz - Q.q3 * gy) * halfT;
    Q.q2 = Q.q2 + (Q.q0 * gy - Q.q1 * gz + Q.q3 * gx) * halfT;
    Q.q3 = Q.q3 + (Q.q0 * gz + Q.q1 * gy - Q.q2 * gx) * halfT;

    // 归一化四元数
    norm = newton_sqrt(Q.q0 * Q.q0 + Q.q1 * Q.q1 + Q.q2 * Q.q2 + Q.q3 * Q.q3);
    if (norm != 0)
    {
        Q.q0 = Q.q0 / norm;
        Q.q1 = Q.q1 / norm;
        Q.q2 = Q.q2 / norm;
        Q.q3 = Q.q3 / norm;
    }

    // 计算姿态角
    a = -asin(-2 * Q.q1 * Q.q3 + 2 * Q.q0 * Q.q2) * 57.324841;                                   // Pitch
    b = atan2(2 * Q.q2 * Q.q3 + 2 * Q.q0 * Q.q1, -2 * Q.q1 * Q.q1 - 2 * Q.q2 * Q.q2 + 1) * 57.3; // Roll
    pAngle->pitch = a;
    pAngle->roll = b;
    Pitch=pAngle->pitch;
    if(pAngle->roll>0)
    {
        Roll= pAngle->roll-180;
    }
    else if(pAngle->roll<0)
    {
        Roll= pAngle->roll+180;
    }
    Yaw+=pMpu->gyroZ/14.3*0.001;
    if(Yaw >360 )
    {
        Yaw = Yaw- 360;
    }
    else if(Yaw<0)
    {
        Yaw = Yaw + 360;
    }
    //Yaw=360-Yaw;
}

// 获取姿态数据  需要放在定时器中
int Gyro_1_Last;
float Gyro_float[3];
void Attitude_get(void)
{
    // 陀螺仪读取
    IMU_Read(&icm_data);
    // 消去零飘
    IMU_MoveOffset(&icm_data, &icm_offset);
    acc[0] = icm_data.accX;
    acc[1] = icm_data.accY;
    acc[2] = icm_data.accZ;
    gyr[0] = icm_data.gyroX;
    gyr[1] = icm_data.gyroY;
    gyr[2] = icm_data.gyroZ;
    gyro[0]=gyr[0];
    gyro[1]=gyr[1];
    gyro[2]=gyr[2];
////    // 低通滤波处理加速度计数据
//    icm_data_lpf.accX = icm_data_lpf.accX + ((fullT / (7.9617834e-3 + fullT)) * ((float)acc[0] - icm_data_lpf.accX)); // 低通滤波
//    icm_data_lpf.accY = icm_data_lpf.accY + ((fullT / (7.9617834e-3 + fullT)) * ((float)acc[1] - icm_data_lpf.accY));
//    icm_data_lpf.accZ = icm_data_lpf.accZ + ((fullT / (7.9617834e-3 + fullT)) * ((float)acc[2] - icm_data_lpf.accZ));
//
//    // 低通滤波处理陀螺仪数据
//    icm_data_lpf.gyroX = icm_data_lpf.gyroY + ((fullT / (7.9617834e-3 + fullT)) * ((float)gyr[0] - icm_data_lpf.gyroX));
    //icm_data_lpf.gyroZ = icm_data_lpf.gyroZ + ((fullT / (7.9617834e-3 + fullT)) * ((float)gyr[2] - icm_data_lpf.gyroZ));
    icm_data_lpf.accX = icm_data.accX;
    icm_data_lpf.accY = icm_data.accY;
    icm_data_lpf.accZ = icm_data.accZ;

    icm_data_lpf.gyroX=icm_data.gyroX;
    icm_data_lpf.gyroY=icm_data.gyroY;
    icm_data_lpf.gyroZ=icm_data.gyroZ;

    IMUupdate(&icm_data_lpf, &icm_angle); // 姿态更新
}

void Test_Quat(void)
{
    char txt[100];
    GPIO_LED_Init(); // LED初始化
    Display_Init();  // 屏幕初始化
    SPI_Gryo_Init();
    Delay_Ms(500);
    IMU_GetOffset(&icm_offset);
    CCU6_InitConfig(CCU60, CCU6_Channel0, 1); // CCU6初始化 LED0
    Display_CLS(U16_BLACK);
    while (1)
    {
        // 读取加上解算的姿态数据

        // 显示姿态数据

        sprintf((char *)txt, "ax:%06d", icm_data_lpf.accX);
        Display_showString(0, 2, txt, U16_WHITE, U16_BLACK, 16);

        sprintf((char *)txt, "ay:%06d", icm_data_lpf.accY);
        Display_showString(0, 3, txt, U16_WHITE, U16_BLACK, 16);
        sprintf((char *)txt, "az:%06d", icm_data_lpf.accZ);
        Display_showString(0, 4, txt, U16_WHITE, U16_BLACK, 16);

        sprintf((char *)txt, "gx:%06d", icm_data_lpf.gyroX);
        Display_showString(0, 5, txt, U16_WHITE, U16_BLACK, 16);

        sprintf((char *)txt, "gy:%06d", icm_data_lpf.gyroY);
        Display_showString(0, 6, txt, U16_WHITE, U16_BLACK, 16);

        sprintf((char *)txt, "gz:%06d", icm_data_lpf.gyroZ);
        Display_showString(0, 7, txt, U16_WHITE, U16_BLACK, 16);

        sprintf(txt, "Pitch:%.2f Roll:%.2f", icm_angle.pitch, icm_angle.roll);
        Display_showString(0, 9, txt, U16_WHITE, U16_BLACK, 16);

        Delay_Ms(1);
    }
}
