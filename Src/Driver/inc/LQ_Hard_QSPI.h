#ifndef _LQ_HARDSPI_H_
#define _LQ_HARDSPI_H_

#include "include.h"

void LQ_QSPI_Init(IfxQspi_Sclk_Out sck_pin, IfxQspi_Mtsr_Out mosi_pin, IfxQspi_Mrst_In miso_pin, IfxQspi_Slso_Out cs_pin, uint8 mode, uint32 baud);
void LQ_QSPI_Wirte_Read(uint8 *modata, uint8 *midata, uint32 len, uint8 continuous);

#endif
