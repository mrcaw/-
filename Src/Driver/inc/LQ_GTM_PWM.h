#ifndef _LQ_GTMPWM_H_
#define _LQ_GTMPWM_H_

#include "IfxGtm_PinMap.h"
#include <Platform_Types.h>
#include <stdint.h>
#include <IfxGtm.h>
#include <IfxGtm_Atom_Pwm.h>
#include <IfxGtm_cfg.h>
#include <IfxGtm_Cmu.h>
#include <IfxGtm_PinMap.h>
#include <IfxGtm_reg.h>
#include <IfxGtm_Tim_In.h>
#include <IfxGtm_Tom.h>
#include <IfxGtm_Tom_Pwm.h>
#include <IfxPort.h>

// ATOM 时钟 100MHz
#define ATOM_PWM_CLK 100000000

// ATOM 最大占空比 可自行修改
#define ATOM_PWM_MAX 10000.0f

// TOM 时钟 6.25MHz/2
#define TOM_PWM_CLK 6250000

// TOM 最大占空比 可自行修改
#define TOM_PWM_MAX 10000.0f

////////////////ATOM_PWM//////////////////////
void ATOM_PWM_InitConfig(IfxGtm_Atom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void ATOM_PWM_SetDutyFreq(IfxGtm_Atom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void ATOM_PWM_SetDuty(IfxGtm_Atom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void ATOM_PWM_SetFreq(IfxGtm_Atom_ToutMap pin, unsigned long pwmFreq_Hz);

////////////////TOM_TIM//////////////////////
void TOM_PWM_InitConfig(IfxGtm_Tom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void TOM_PWM_SetDutyFreq(IfxGtm_Tom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void TOM_PWM_SetDuty(IfxGtm_Tom_ToutMap pin, unsigned long duty, unsigned long pwmFreq_Hz);
void TOM_PWM_SetFreq(IfxGtm_Tom_ToutMap pin, unsigned long pwmFreq_Hz);

void TIM_InitConfig(IfxGtm_Tim_TinMap pin);
void TIM_GetPwm(IfxGtm_Tim_TinMap pin, float32 *Period, float32 *Duty);

#endif /* 0_APPSW_TRICORE_APP_LQ_GTM6PWM_H_ */
