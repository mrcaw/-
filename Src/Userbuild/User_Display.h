#ifndef USER_DISPLAY_H
#define USER_DISPLAY_H

void User_Display(void);
void User_Display_Motor(void);
void User_Display_IMU(void);
void User_Display_Data(void);
void User_Display_Image(void);
void Display_change_color(int line);
void User_Change_Vel(void);
float Vel_Change(float Vel,float Vel_vel,int line);

extern float x,y;

#endif
