
#ifndef _LQ_INCLUDE_H_
#define _LQ_INCLUDE_H_

/////////////c标准库和底层库文件//////////////////////////////////////////////////
#include <Bsp.h>
#include <Compilers.h>
#include <CompilerTasking.h>
#include <IfxQspi_PinMap.h>
#include <IfxQspi_SpiMaster.h>
#include <IfxCpu.h>
#include <IfxCpu_Irq.h>
#include <IfxScuEru.h>
#include <IfxScu_reg.h>
#include <IfxScu_cfg.h>
#include <IfxScuCcu.h>
#include <IfxScuWdt.h>
#include <IfxStm.h>
#include <IfxSrc.h>
#include <IfxSrc_reg.h>
#include <IfxSrc_regdef.h>
#include <IfxScu_PinMap.h>
#include <Ifxport.h>
#include <IfxPort_regdef.h>
#include <IfxCcu6.h>
#include <IfxCcu6_cfg.h>
#include <IfxCcu6_reg.h>
#include <IfxCcu6_regdef.h>
#include <IfxCcu6_Timer.h>
#include <IfxVadc.h>
#include <IfxVadc_Adc.h>
#include <IfxDma.h>
#include <IfxDma_Dma.h>
#include <IfxDma_reg.h>
#include <IfxGpt12.h>
#include <IfxGpt12_reg.h>
#include <IfxInt_reg.h>
#include <IfxFlash.h>
#include <IfxFlash_cfg.h>
#include <IfxSrc_cfg.h>
#include <Ifx_Fifo.h>
#include <Ifx_Types.h>
#include <IfxAsclin.h>
#include <IfxAsclin_Asc.h>
#include <IfxAsclin_PinMap.h>
#include <Ifx_FftF32.h>

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include "Platform_Types.h"

/////////////////////龙邱库文件////////////////////////////////////////////
/**************APP*******************/
#include "LQ_ADC_7Mic.h"
#include "LQ_BD.h"
#include "LQ_CAMERA.h"
#include "LQ_CCU6_Timer.h"
#include "LQ_EEPROM_TEST.h"
#include "LQ_FFT_TEST.h"
#include "LQ_GPIO_ExInt.h"
#include "LQ_GPIO_LED.h"
#include "LQ_IIC_Gyro.h"
#include "LQ_SPI_Gyro.h"
#include "LQ_MPU6050_DMP.h"
#include "LQ_MT9V034.h"
#include "LQ_OLED096.h"
#include "LQ_STM_Timer.h"
#include "LQ_TFT18.h"
#include "LQ_TFT2.h"
#include "LQ_PWM_Moto.h"
#include "LQ_PWM_Servo.h"
#include "LQ_IPSLCD.h"
#include "LQ_Encoder.h"
#include "LQ_Display.h"
#include <LQ_Encoder.h>
#include <LQ_GPIO_KEY.h>
#include <LQ_GTM_PWM.h>
#include <LQ_PWM_Servo.h>
#include <LQ_UART_Bluetooth.h>
#include "LQ_R9DS.h"
#include "LQ_MPU6050_DMP.h"

/**************Drv*******************/
#include "LQ_ADC.h"
#include "LQ_CCU6.h"
#include "LQ_DMA.h"
#include "LQ_EEPROM.h"
#include "LQ_GPIO.h"
#include "LQ_GPIO_IRQ.h"
#include "LQ_GPSR.h"
#include "LQ_GPT12_ENC.h"
#include "LQ_QSPI.h"
#include "LQ_Hard_QSPI.h"
#include "LQ_SOFTI2C.h"
#include "LQ_SOFTSPI.h"
#include "LQ_SPI.h"
#include "LQ_STM.h"
#include "LQ_UART.h"

/**************Main*******************/
#include "config.h"
#include "Main.h"
#include "cpu_init.h"
#include "irq.h"

/**************User******************/
#include "LQ_PID.h"
#include "LQ_Quat.h"
#include "User_Include.h"
typedef struct
{
    float32 sysFreq; // Actual SPB frequency
    float32 cpuFreq; // Actual CPU frequency
    float32 pllFreq; // Actual PLL frequency
    float32 stmFreq; // Actual STM frequency
} AppInfo;

// Application information
typedef struct
{
    AppInfo info; // Info object
} App_Cpu0;

#endif
