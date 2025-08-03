#ifndef USER_DIRECTION_H
#define USER_DIRECTION_H



extern float steering_output;
void Car_Direction(void);
void Yaw_Error_Calculate(void);
void Car_Control(int Car_Condition,float Can_Shu);
void Car_Direction_1(void);
float Direction_YAW_Control(void);

short constrain_short(short amt, short low, short high);
double constrain_double(double amt, double low, double high);
int constrain_int(int amt, int low, int high);
void Car_Direction_2(void);
extern float PWMY_MAX;
extern int Turn_Wave_Flag;
extern int Turn_Wave_Count;
extern float Yaw_Error_Car_Direction_1;
#endif
