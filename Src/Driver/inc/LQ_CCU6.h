#ifndef _LQ_CCU6_H_
#define _LQ_CCU6_H_

/**
 *  CCU6模块枚举
 */
typedef enum
{
    CCU60,
    CCU61
} CCU6_t;

/**
 *  CCU6通道枚举
 */
typedef enum
{
    CCU6_Channel0,
    CCU6_Channel1,
} CCU6_Channel_t;

extern const void *Ccu6IrqFuncPointer[4];
void CCU6_InitConfig(CCU6_t ccu6, CCU6_Channel_t channel, unsigned long ms);
void CCU6_InitConfig_u(CCU6_t ccu6, CCU6_Channel_t channel, unsigned long us);
void CCU6_DisableInterrupt(CCU6_t ccu6, CCU6_Channel_t channel);
void CCU6_EnableInterrupt(CCU6_t ccu6, CCU6_Channel_t channel);

#endif
