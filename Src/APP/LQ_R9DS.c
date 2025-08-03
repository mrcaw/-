#include "LQ_R9DS.h"

int num3 = 0;
unsigned char ReadBuff3[512];
char Usart3_Rec_Fini_Flag = 0; // 串口3接收完成标志位

unsigned int RIGHTH = 0; // 右手左右
unsigned int LEFTV = 0;  // 左手上下
unsigned int RIGHTV = 0; // 右手上下
unsigned int LEFTH = 0;  // 左手左右
unsigned int VRH = 0;    // H开关
unsigned int VRF = 0;    // F开关
unsigned int SWC = 0;    // C开关
unsigned int SWD = 0;    // D开关
unsigned int SWA = 0;    // A开关
unsigned int SWB = 0;    // B开关
unsigned int CHDATA[18];

/***********************************************************
 *函 数 名:update_sbus
 *设计人(开发人)：
 *功能说明: 解析SUBS模块信息
 ***********************************************************/

void update_sbus(void)
{
    RIGHTV = ((ReadBuff3[1] | ReadBuff3[2] << 8) & 0x07FF);                        // 右手水平左中右    432---992---1552
    RIGHTH = ((ReadBuff3[2] >> 3 | ReadBuff3[3] << 5) & 0x07FF);                   // 右手下中上    432---992---1552
    LEFTH = (ReadBuff3[3] >> 6 | ReadBuff3[4] << 2 | ReadBuff3[5] << 10) & 0x07FF; // 左手左中右      432---992---1552
    LEFTV = (ReadBuff3[5] >> 1 | ReadBuff3[6] << 7) & 0x07FF;                      // 左手下中上      432---992---1552
    SWA = (ReadBuff3[6] >> 4 | ReadBuff3[7] << 4) & 0x07FF;                        // SWA-5上中下  192---992---1792
    SWB = (ReadBuff3[7] >> 7 | ReadBuff3[8] << 1 | ReadBuff3[9] << 9) & 0x07FF;    // SWB-6上下  192---1792
    SWC = (ReadBuff3[9] >> 2 | ReadBuff3[10] << 6) & 0x07FF;                       // SWC-7  192---1792
    SWD = (ReadBuff3[10] >> 5 | ReadBuff3[11] << 3) & 0x07FF;                      // SWD-8上中下  192---992---1792
    // SWB   =CHDATA[9] =(ReadBuff3[13] & 0X07)<<8  | ReadBuff3[12];                   //SWA左拉杆顺时针左右   0074-1925；      0000-2000
}

// 接收函数，需要放在uart2的RX回调函数里面
void R9DS_Read(void)
{
    unsigned char buf;
    buf = UART_GetChar(UART2);
    if (num3 == 0 && buf == 0x0F) // 帧头
    {
        ReadBuff3[num3] = buf;
        num3++;
        LED_Ctrl(LED1, RVS); // LED闪烁 指示程序运行状态
    }
    else if (num3 != 0)
    {
        LED_Ctrl(LED0, RVS); // LED闪烁 指示程序运行状态
        ReadBuff3[num3] = buf;
        num3++;
        if (num3 > 24) // 接收数据超过24，表示一帧接收完成
        {
            Usart3_Rec_Fini_Flag = 0; // 停止接收

            if (ReadBuff3[0] == 0x0F && ReadBuff3[24] == 0x00 && num3 == 25) // 接受完一帧数据
            {
                update_sbus(); // 数据解析
            }
            num3 = 0; // 清空
        }
    }
}

void Test_R9DS(void)
{
    char txt[32];
    unsigned char size = 12;
    Display_Init();
    Display_CLS(U16_BLACK);
    UART_InitConfig(UART2_RX_P33_8, UART2_TX_P10_5, 100000); // 初始化串口3 接收SBUS信号
    GPIO_LED_Init();                                         // LED初始化
    GPIO_KEY_Init();                                         // 按键初始化

    while (1)
    {

        Usart3_Rec_Fini_Flag = 1; // 开始接收

        sprintf(txt, "RV:%04d RH:%04d", RIGHTV, RIGHTH);
        Display_showString(0, 2, txt, U16_WHITE, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "LV:%04d LH:%04d", LEFTV, LEFTH);
        Display_showString(0, 3, txt, U16_WHITE, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "SWA:%04d SWB:%04d", SWA, SWB);
        Display_showString(0, 4, txt, U16_WHITE, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "SWC:%04d SWD:%04d", SWC, SWD);
        Display_showString(0, 5, txt, U16_WHITE, U16_BLUE, size); // 将txt中 内容显示出来

        Delay_Ms(10);
    }
}
