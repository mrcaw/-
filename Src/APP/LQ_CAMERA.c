#include "LQ_CAMERA.h"
#include <IfxCpu.h>
#include <IfxPort_reg.h>
#include "include.h"
#include "config.h"
#include "LQ_MT9V034_AUX.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_CAMERA(void)
@功能说明：测试摄像头功能，采集图像并显示
@参数说明：无
@函数返回：无
@调用方法：Test_CAMERA();
@备    注：循环采集图像并显示在屏幕上
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_CAMERA(void)
{

    //历程默认是双摄的，需要用单摄，只需要去config.h里面切换一下就行

    //双摄使用ips屏幕，TFT屏幕不能完整显示图像，显示图像超过显示，出现花屏。


    /* 临时数组用于存储压缩后的图像 */
    unsigned char uImage1[IMAGEH][IMAGEW / 2];
    unsigned char uImage2[IMAGEH][IMAGEW / 2];

    GPIO_LED_Init();       // 初始化LED灯
    Display_Init();        // 初始化显示模块
    Display_CLS(U16_WHITE); // 清屏
    CAMERA_Init(100);      // 初始化摄像头
    Display_CLS(U16_WHITE); // 清屏

    while (1)
    {
        if (Camera_Flag == 2)
        {
            for (int y = 0; y < IMAGEH / 2; y++)
            {
                for (int x = 0; x < IMAGEW / 2; x++)
                {
                    uImage1[y][x] = Image_Data[y * 2][x * 2];
                }
            }
            Display_Show(15, 0, IMAGEH / 2, IMAGEW / 2, (unsigned char *)uImage1);
            Camera_Flag = 0;
        }
        if (Camera_Flag_AUX == 2)
        {
            for (int y = 0; y < IMAGEH / 2; y++)
            {
                for (int x = 0; x < IMAGEW / 2; x++)
                {
                    uImage2[y][x] = Image_Data_AUX[y * 2][x * 2];
                }
            }
            Display_Show(IMAGEW / 2 + 35, 0, IMAGEH / 2, IMAGEW / 2, (unsigned char *)uImage2);
            Camera_Flag_AUX = 0;
        }
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void CAMERA_Init(unsigned char fps)
@功能说明：初始化摄像头模块
@参数说明：fps ： 帧率
@函数返回：无
@调用方法：CAMERA_Init(100);
@备    注：初始化摄像头、DMA和中断
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void CAMERA_Init(float fps)
{
    /* 关闭CPU总中断 */
    IfxCpu_disableInterrupts();
    PIN_InitConfig(P02_8, PIN_MODE_OUTPUT, 0);
    PIN_InitConfig(P33_5, PIN_MODE_OUTPUT, 0);

    //==================1号摄像头==================//
    /* 初始化摄像头 数据IO */
    PIN_InitConfig(P00_0, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_1, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_2, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_3, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_4, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_5, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_6, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P00_7, PIN_MODE_INPUT_PULLDOWN, 0);

    /* 摄像头初始化 */
    MT9V034_Init(fps);
    /* DMA初始化 */
    PIN_Exti(P10_3, PIN_IRQ_MODE_FALLING);
    DMA_CameraInitConfig();

#ifndef USE_DUAL_CAMERA
    PIN_Exti(P11_10, PIN_IRQ_MODE_RISING);
#else

    //==================2号摄像头==================//
    /* 初始化摄像头 数据IO */
    PIN_InitConfig(P02_0, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_1, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_2, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_3, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_4, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_5, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_6, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P02_7, PIN_MODE_INPUT_PULLDOWN, 0);
    PIN_InitConfig(P15_1, PIN_MODE_INPUT_PULLDOWN, 0);

    PIN_Exti(P15_8, PIN_IRQ_MODE_RISING);

    MT9V034_Init_AUX(fps);
#endif
    /* 初始化完成 打开中断 */
    IfxCpu_enableInterrupts();
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void camera_soft_read()
@功能说明：软件读取摄像头数据
@参数说明：无
@函数返回：无
@调用方法：camera_soft_read();
@备    注：通过软件模拟读取摄像头数据并存储到缓冲区
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void camera_soft_read()
{
    const static unsigned char *P02 = (unsigned char *)&MODULE_P02.IN.U;
    static int cnt = 0;
    unsigned char *tmpp = &Image_Data_AUX[cnt++][0];
    for (int i = 0; i < 188; i++)
    {
        tmpp[i] = *P02;
    }
    if (cnt >= 120)
    {
        Camera_Flag_AUX = 2;
        cnt = 0;
        MT9V034_ReSET();
        DMA_CameraStart();
    }
    return;
}

