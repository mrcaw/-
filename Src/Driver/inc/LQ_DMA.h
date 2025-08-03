#ifndef _LQ_DMA_H_
#define _LQ_DMA_H_

#include "../../Libraries/iLLD/TC29B/Tricore/Cpu/Std/IfxCpu.h"
#include "../../Libraries/iLLD/TC29B/Tricore/Dma/Dma/IfxDma_Dma.h"
#include "../../Libraries/iLLD/TC29B/Tricore/Dma/Std/IfxDma.h"
#include "../../Libraries/Infra/Sfr/TC29B/_Reg/IfxDma_regdef.h"
#include "LQ_CAMERA.h"


/* 摄像头 DMA 配置结构体 */
typedef struct
{
    Ifx_DMA_CH linkedList[2]; // 总是报错，去掉了IFX_ALIGN(256)，实测没有影响
    IfxDma_Dma_Channel chn; // Dma channel handle
} Dma_Camera_t;


#define camera_Channel PIN_INT3_PRIORITY


/* 摄像头 DMA 配置结构体 */
extern Dma_Camera_t g_DmaCameraLinkedList;


/** 摄像头 */
extern unsigned char Camera_Flag;
extern unsigned char Camera_Flag_AUX;
extern unsigned char Image_Data[IMAGEH][IMAGEW];
extern unsigned char Image_Data_AUX[IMAGEH][IMAGEW];
/* DMA 中断服务函数  */
void DMA_IRQHandler(void);
/* 摄像头DMA传输初始化*/
void DMA_CameraInitConfig(void);
/*  摄像头DMA传输开启 */
void DMA_CameraStart(void);

#endif /* 0_APPSW_TRICORE_APP_LQ_GPIO_H_ */
