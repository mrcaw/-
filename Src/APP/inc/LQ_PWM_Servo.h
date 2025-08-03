#ifndef _LQ_PWM_SERRVO_H_
#define _LQ_PWM_SERRVO_H_

#define Servo_Delta 150                                  // 舵机左右转动的差值，与舵机型号，拉杆和舵机臂长有关
#define Servo_Center_Mid 760                             // 舵机直行中值，
#define Servo_Left_Max (Servo_Center_Mid + Servo_Delta)  // 舵机左转极限值
#define Servo_Right_Min (Servo_Center_Mid - Servo_Delta) // 舵机右转极限值，此值跟舵机放置方式有关，立式
#define Servo_Frequency 50                               // 舵机PWM频率

#define ATOMSERVO1 IfxGtm_ATOM2_0_TOUT32_P33_10_OUT
#define ATOMSERVO2 IfxGtm_ATOM2_5_TOUT35_P33_13_OUT

// 定义模块号
typedef enum
{
    Servo1 = 0,  // 舵机1
    Servo2 = 1,  // 舵机2
    ServoALL = 2 // 舵机1&2

} Servo_e;

void ServoInit(void);
void ServoCtrl(Servo_e Servo, uint32 duty);
void TestServo(void);
#endif
