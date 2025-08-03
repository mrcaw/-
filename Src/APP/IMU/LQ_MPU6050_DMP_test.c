/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_LQDMP(void)
@功能说明：dmp测试函数
@参数说明：无
@函数返回：无
@修改时间：2022/02/24
@调用方法：Test_LQDMP();
@备    注：主函数调用
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
#include "include.h"
void Test_MPU6050_DMP(void)
{
    char txt[32];

    Display_Init(); // 屏幕初始化

    IIC_Init(); // 初始化IIC
    Delay_Ms(200);
    Display_CLS(U16_BLACK); // 蓝色屏幕

    Display_showString(15, 0, "LQ MPU6050_DMP_Test", U16_WHITE, U16_BLACK, 24);
    Delay_Ms(100); // 字符串显示
    LQ_DMP_Init();
    Delay_Ms(100);

    while (1)
    {
        LQ_DMP_Read();

        sprintf((char *)txt, "Pitch:%.2f", Pitch);
        Display_showString(0, 1, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "Roll:%.2f", Roll);
        Display_showString(0, 2, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "Yaw:%.2f", Yaw);
        Display_showString(0, 3, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "ax:%06d", accel[0]);
        Display_showString(0, 4, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "ay:%06d", accel[1]);
        Display_showString(0, 5, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "az:%06d", accel[2]);
        Display_showString(0, 6, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "gx:%06d", gyro[0]);
        Display_showString(0, 7, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "gy:%06d", gyro[1]);
        Display_showString(0, 8, txt, U16_WHITE, U16_BLACK, 24);
        sprintf((char *)txt, "gz:%06d", gyro[2]);
        Display_showString(0, 9, txt, U16_WHITE, U16_BLACK, 24);
    }
}
