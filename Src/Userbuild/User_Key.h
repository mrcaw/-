#ifndef __USER_KEY_H
#define __USER_KEY_H

void Key(void);
void Key_Dsw(void);
void Key_Test_MotorR(void);
void Key_Test_MotorP(void);
void Key_DSW00(void);
void Key_DSW10(void);
void Key_DSW11(void);
void Key_time(void);

extern int Motor1_Test;
extern int left_pwm,right_pwm;
volatile extern int Key_Flag;
extern int Key_DSW11_line_flag;
extern int Key_add_flag;
extern int Key_reduce_flag;
extern int Time_delay_Key3;
extern int Time_delay_Key2;

#endif
