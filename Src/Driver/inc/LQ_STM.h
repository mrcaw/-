
#ifndef _LQ_STM_H_
#define _LQ_STM_H_

#include "Cpu/Std/Platform_Types.h"
#include "Stm/Std/IfxStm.h"
#include "stdint.h"
#include <Bsp.h>
#include <CompilerTasking.h>
#include <Ifx_Types.h>
#include <IfxCpu.h>
#include <IfxCpu_IntrinsicsTasking.h>
#include <IfxCpu_Irq.h>
#include <IfxStm_cfg.h>
#include <IfxStm_reg.h>
#include <IfxStm_regdef.h>
#include "include.h"

/**
 *  STM模块枚举
 */
typedef enum
{
    STM0 = 0,
    STM1
} STM_t;

/**
 *  STM通道枚举
 */
typedef enum
{
    STM_Channel_0 = 0,
    STM_Channel_1
} STM_Channel_t;

extern IfxStm_CompareConfig g_StmCompareConfig[4];
void STM_InitConfig(STM_t STM, STM_Channel_t channel, unsigned long us);
void STM_DelayUs(STM_t stm, unsigned long us);
unsigned long STM_GetNowUs(STM_t stm);
void STM_DisableInterrupt(STM_t stm, STM_Channel_t channel);
void STM_EnableInterrupt(STM_t stm, STM_Channel_t channel);
void Delay_Ms(uint32 stmms);
void Delay_Us(uint32 stmms);
#endif /* 0_APPSW_TRICORE_APP_LQ_STM_H_ */
