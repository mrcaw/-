//此文件为存放while循环中的屏幕显示函数

#include "include.h"






extern int Encoder_P;


void User_Display(void)
{
    switch (Key_Flag)
    {
        case 0:
            User_Display_Data();
            //User_Display_Motor();
            break;
        case 10:
            User_Display_Image();
            break;
        case 11:
            User_Change_Vel();
            break;
        default:
            break;
    }

}
void User_Change_Vel(void)//简单的按键调参  写的有点复杂 随便写写的懒得优化
{
    Two_Camera_Flag=(int)Vel_Change((float)Two_Camera_Flag,1,0);
    Two_Camera_Flag=constrain_int(Two_Camera_Flag, 0, 1);
    sprintf(LCD_txt,"Two_Camera_Flag=%d       ",Two_Camera_Flag);
    Display_change_color(0);

    Boudary_judge_flag=(int)Vel_Change((float)Boudary_judge_flag,1,1);
    Boudary_judge_flag=constrain_int(Boudary_judge_flag, 0, 1);
    sprintf(LCD_txt,"Boudary_judge_flag=%d       ",Boudary_judge_flag);
    Display_change_color(1);

    Roll_error_Max=(float)Vel_Change((float)Roll_error_Max,1,2);
    Roll_error_Max=constrain_float(Roll_error_Max, 0, 15);
    sprintf(LCD_txt,"Roll_error_Max=%.0f      ",Roll_error_Max);
    Display_change_color(2);

    R_acc_pid.ki=Vel_Change((float)R_acc_pid.ki,0.1,3);
    R_acc_pid.ki=constrain_float(R_acc_pid.ki, 0, 5);
    sprintf(LCD_txt,"R_acc_pid.ki=%.1f       ",R_acc_pid.ki);
    Display_change_color(3);

    Pitch_Zero_speed_kp=Vel_Change((float)Pitch_Zero_speed_kp,1,4);
    Pitch_Zero_speed_kp=constrain_float(Pitch_Zero_speed_kp, 0, 20);
    sprintf(LCD_txt,"Pitch_Zero_speed_kp=%.1f       ",Pitch_Zero_speed_kp);
    Display_change_color(4);

    Camera_direction_flag=Vel_Change((float)Camera_direction_flag,1,5);
    Camera_direction_flag=constrain_int(Camera_direction_flag, 0, 1);
    sprintf(LCD_txt,"Camera_direction_flag=%d      ",Camera_direction_flag);
    Display_change_color(5);

    Task_Turn_Angle=Vel_Change((float)Task_Turn_Angle,10,6);
    Task_Turn_Angle=constrain_float(Task_Turn_Angle, 0, 160);
    sprintf(LCD_txt,"Task_Turn_Angle=%.0f      ",Task_Turn_Angle);
    Display_change_color(6);

    X_middle=Vel_Change((float)X_middle,0.5,7);
    sprintf(LCD_txt,"X_middle=%.1f       ",X_middle);
    Display_change_color(7);

    Y_middle=Vel_Change((float)Y_middle,0.5,8);
    sprintf(LCD_txt,"Y_middle=%.1f       ",Y_middle);
    Display_change_color(8);

    Task_Speed_Max=Vel_Change((float)Task_Speed_Max,50,9);
    sprintf(LCD_txt,"Task_Speed_Max=%.0f       ",Task_Speed_Max);
    Display_change_color(9);

    Task_Speed_Middle=Vel_Change((float)Task_Speed_Middle,50,10);
    sprintf(LCD_txt,"Task_Speed_Middle=%.0f       ",Task_Speed_Middle);
    Display_change_color(10);

    Task_Speed_Min=Vel_Change((float)Task_Speed_Min,50,11);
    sprintf(LCD_txt,"Task_Speed_Min=%.0f       ",Task_Speed_Min);
    Display_change_color(11);
}



void Display_change_color(int line)
{
    if(Key_DSW11_line_flag==line)
    {
        Display_showString(0, line, LCD_txt, U16_RED, U16_BLACK, 16);
    }
    else
    {
        Display_showString(0, line, LCD_txt, U16_WHITE, U16_BLACK, 16);
    }
}

float Vel_Change(float Vel,float Vel_vel,int line)
{
    if(Key_DSW11_line_flag==line)
    {
        if(Key_add_flag==1)
        {
            return Vel+Vel_vel;
            //Key_add_flag=0;
        }
        else if(Key_reduce_flag==1)
        {
            return Vel-Vel_vel;
            //Key_reduce_flag=0;
        }
    }
    return Vel;
}

void User_Display_Motor(void)
{
    sprintf(LCD_txt,"S_Left=%d       ",Motor_Speed_Left);
    Display_showString(0, 0, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"S_Right=%d      ",Motor_Speed_Right);
    Display_showString(0, 1, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"PWM_R=%d           ",PWM_R);
    Display_showString(0, 2, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"PWM_Y=%d           ",PWM_Y);
    Display_showString(0, 3, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Motor_P=%d         ",Motor_P);
    Display_showString(0, 4, LCD_txt, U16_WHITE, U16_BLACK, 12);

    Encoder_P = -ENC_GetCounter(ENC1_InPut_P33_7);
    sprintf(LCD_txt,"Enconder_P=%d      ",Encoder_P);
    Display_showString(0, 5, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Moto_Test=%d       ",left_pwm);
    Display_showString(0, 6, LCD_txt, U16_WHITE, U16_BLACK, 12);

}

void User_Display_Data(void)
{
    sprintf(LCD_txt,"x=%.4f       ",x);
    Display_showString(0, 0, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"y=%.4f      ",y);
    Display_showString(0, 1, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Beacon_count_1=%d           ",Beacon_count_1);
    Display_showString(0, 2, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Beacon_count=%d           ",Beacon_count);
    Display_showString(0, 3, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"pwmy=%d         ",PWM_Y);
    Display_showString(0, 4, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Enconder_P=%d      ",Encoder_P);
    Display_showString(0, 5, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Photo_Mode_flag=%d       ",Photo_Mode_flag);
    Display_showString(0, 6, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Roll=%.2f            ",Roll);
    Display_showString(0, 7, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Pitch=%.2f           ",Pitch);
    Display_showString(0, 8, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Yaw=%.2f             ",Yaw);
    Display_showString(0, 9, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Motor_Speed_Left=%d         ",Motor_Speed_Left);
    Display_showString(0, 10, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Motor_Speed_Right=%d        ",Motor_Speed_Right);
    Display_showString(0, 11, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"gyro[2]=%d         ",gyro[2]);
    Display_showString(0, 12, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"acc_out=%f         ",R_acc_pid.out);
    Display_showString(0, 13, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"yaw_error=%.2f         ",Yaw_Error);
    Display_showString(0, 14, LCD_txt, U16_WHITE, U16_BLACK, 12);


    sprintf(LCD_txt,"Start_Flag=%d        ",Car_Balance_Val.Start_Flag);
    Display_showString(0, 15, LCD_txt, U16_WHITE, U16_BLACK, 12);

    e_c_mile=(float)e_c_all/11955;
    sprintf(LCD_txt,"mile=%.2f        ",e_c_mile);
    Display_showString(0, 16, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"Beacon_count=%d        ",Beacon_count);
    Display_showString(0, 17, LCD_txt, U16_WHITE, U16_BLACK, 12);


    sprintf(LCD_txt,"Task_Flag=%d        ",Task_Flag);
    Display_showString(0, 18, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"x=%d        ",Beacon[0].x);
    Display_showString(0, 19, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"R_Angle_Pid.P=%.6f        ",R_angle_pid.kp);
    Display_showString(0, 20, LCD_txt, U16_WHITE, U16_BLACK,12);

    sprintf(LCD_txt,"R_vel_Pid.P=%.6f        ",R_vel_pid.kp);
    Display_showString(0, 21, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"P_Acc_Pid.P=%.6f        ",P_acc_pid.kp);
    Display_showString(0, 22, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"P_Acc_Pid.i=%.6f        ",P_acc_pid.ki);
    Display_showString(0, 23, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"P_Angle_Pid.P=%.6f        ",P_angle_pid.kp);
    Display_showString(0, 24, LCD_txt, U16_WHITE, U16_BLACK, 12);

    sprintf(LCD_txt,"P_vel_Pid.P=%.6f        ",P_vel_pid.kp);
    Display_showString(0, 25, LCD_txt, U16_WHITE, U16_BLACK, 12);
}

void User_Display_Image(void)
{

    Display_Show(15, 0, IMAGEH / 2, IMAGEW / 2, (unsigned char *)User_Image);
    Display_Show(15, 100, IMAGEH/2, IMAGEW/2, (unsigned char *)B_Image);
    Display_Show(IMAGEW / 2 + 35, 100, IMAGEH/2, IMAGEW/2, (unsigned char *)B_Image_1);
    Display_Show(IMAGEW / 2 + 35, 0, IMAGEH / 2, IMAGEW / 2, (unsigned char *)User_Image_1);


    float angle=0;
    angle=-((float)b_x-47.0f)/47.0f*63.0f;
    if(angle<0)
    {
        angle+=360;
    }
    sprintf(LCD_txt,"yaw=%.2f,angle=%.2f        ",Yaw,angle);
    Display_showString(0, 21, LCD_txt, U16_WHITE, U16_BLACK, 12);
    sprintf(LCD_txt,"b_x=%d,b_y=%d,b_perimeter=%d        ",b_x,b_y,b_perimeter);
    Display_showString(0, 22, LCD_txt, U16_WHITE, U16_BLACK, 12);
    sprintf(LCD_txt,"size=%d,max=%d,min=%d,a_b=%d      ",size,b_max,b_min,a_b);
    Display_showString(0, 23, LCD_txt, U16_WHITE, U16_BLACK, 12);
    sprintf(LCD_txt,"labels_count=%d        ",labels_count);
    Display_showString(0, 24, LCD_txt, U16_WHITE, U16_BLACK, 12);
    sprintf(LCD_txt,"threshold=%d        ",B_threshold);
    Display_showString(0, 25, LCD_txt, U16_WHITE, U16_BLACK, 12);
    for(int i=0;i<Beacon_count;i++)
    {
        Display_DrawRectangle((unsigned char)Rectangle_x[i]+15,(unsigned char)Rectangle_y[i],
                (unsigned char)Rectangle_x1[i]+15,(unsigned char)Rectangle_y1[i],U16_RED);
    }

}
