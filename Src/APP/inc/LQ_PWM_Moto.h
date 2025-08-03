#ifndef _LQ_PWM_MOTOR_H_
#define _LQ_PWM_MOTOR_H_

// 电机频率
#define MOTOR_FREQUENCY 10000
// 电机PWM 宏定义
#define MOTOR1_P IfxGtm_ATOM0_6_TOUT42_P23_1_OUT
#define MOTOR1_N IfxGtm_ATOM0_5_TOUT40_P32_4_OUT
#define MOTOR1_I P32_4

#define MOTOR2_P IfxGtm_ATOM0_0_TOUT53_P21_2_OUT
#define MOTOR2_N IfxGtm_ATOM0_4_TOUT50_P22_3_OUT
#define MOTOR2_I P22_3

#define MOTOR3_P IfxGtm_ATOM0_7_TOUT64_P20_8_OUT
#define MOTOR3_N IfxGtm_ATOM0_3_TOUT56_P21_5_OUT
#define MOTOR3_I P21_5

#define MOTOR4_P IfxGtm_ATOM0_2_TOUT55_P21_4_OUT
#define MOTOR4_N IfxGtm_ATOM0_1_TOUT54_P21_3_OUT
#define MOTOR4_I P21_3

// 定义模块号
typedef enum
{
    Motor1 = 0, // 电机1
    Motor2 = 1, // 电机2
    Motor3 = 2, // 电机3
    Motor4      // 电机4
} Motor_e;
void MotorCtr(Motor_e Motor, sint32 motor);
void MotorInit(void);
void TestMotor(void);

#endif
