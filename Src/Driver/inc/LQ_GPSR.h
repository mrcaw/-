#ifndef _LQ_GPSR_H_
#define _LQ_GPSR_H_

#include "../../Libraries/iLLD/TC29B/Tricore/_Impl/IfxSrc_cfg.h"

/**
 * 软件中的序号枚举
 */
typedef enum
{
    SoftIRQ0,
    SoftIRQ1,
    SoftIRQ2,
    SoftIRQ3
} SOFT_IRQ;

void GPSR_InitConfig(IfxSrc_Tos cpu, SOFT_IRQ index);
void CPSR_Trig(IfxSrc_Tos cpu, SOFT_IRQ index);

#endif /* _LQ_GPSR_H_ */
