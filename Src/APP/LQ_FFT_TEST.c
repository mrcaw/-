#include <CompilerTasking.h>
#include <Ifx_FftF32.h>
#include <Ifx_Types.h>
#include <math.h>

#include "LQ_GPIO_LED.h"

// 源波形，256位对齐
IFX_ALIGN(256)
cfloat32 sfftIn[1024];
// IFFT变换结果，256位对齐
IFX_ALIGN(256)
cfloat32 sifftOut[1024];
// FFT变换结果，256位对齐
IFX_ALIGN(256)
cfloat32 sfftOut[1024];
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_SoftFft(void)
@功能说明：测试软件FFT变换
@参数说明：无
@函数返回：无
@备    注：测试FFT变换和IFFT变换
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_SoftFft(void)
{
    unsigned short Fs = 1024; // 信号频率
    float T = 1.0f / Fs;      // 信号周期
    unsigned short L = 1024;  // 长度
    /* 做一个50Hz和120Hz的正玄叠加信号  */
    int i = 0;
    GPIO_LED_Init();
    for (i = 0; i < L; i++)
    {
        sfftIn[i].real = 70 * sin(2 * IFX_PI * 50 * T * i) + 100 * sin(2 * IFX_PI * 120 * T * i);
        sfftIn[i].imag = 0;
    }
    while (1)
    {
        // FFT
        Ifx_FftF32_radix2(sfftOut, sfftIn, 1024);
        // IFFT  注意 这里IFFT输出结果是实际结果的1024倍
        Ifx_FftF32_radix2I(sifftOut, sfftOut, 1024);
        LED_Ctrl(LED0, RVS); // 电平翻转,LED闪烁
    }
}
