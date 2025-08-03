#ifndef _LQ_ADC_H_
#define _LQ_ADC_H_

/*
 * adc 通道 枚举   ADC0对应管脚 AN0
 */
typedef enum
{
    ADC0 = 0x0000,
    ADC1 = 0x0101,
    ADC2 = 0x0202,
    ADC3 = 0x0303,
    ADC4 = 0x0404,
    ADC5 = 0x0505,
    ADC6 = 0x0606,
    ADC7 = 0x0707,
    ADC8 = 0x1008,
    ADC9 = 0x1109,
    ADC10 = 0x120A,
    ADC11 = 0x130B,
    ADC12 = 0x140C,
    ADC13 = 0x150D,
    ADC14 = 0x160E,
    ADC15 = 0x170F,
    ADC16 = 0x2010,
    ADC17 = 0x2111,
    ADC18 = 0x2212,
    ADC19 = 0x2313,
    ADC20 = 0x2414,
    ADC21 = 0x2515,
    ADC22 = 0x2616,
    ADC23 = 0x2717,
    ADC24 = 0x3018,
    ADC25 = 0x3119,
    ADC26 = 0x321A,
    ADC27 = 0x331B,
    ADC28 = 0x341C,
    ADC29 = 0x351D,
    ADC30 = 0x361E,
    ADC31 = 0x371F,

} ADC_Channel_t;

/* 获取ADC对应组 */
#define ADC_GetGroup(ADC_Channel) ((ADC_Channel & 0xF000) >> 12)
/* 获取ADC对应通道 */
#define ADC_GetChannel(ADC_Channel) ((ADC_Channel & 0x0F00) >> 8)
/* 获取ADC对应管脚序列号 宏定义 */
#define ADC_GetIndex(ADC_Channel) (unsigned char)(ADC_Channel & 0x00FF)

void ADC_InitConfig(ADC_Channel_t channel, unsigned long Freq_Hz);
unsigned short ADC_Read(ADC_Channel_t chn);
unsigned short ADC_ReadAverage(ADC_Channel_t chn, unsigned char count);

#endif
