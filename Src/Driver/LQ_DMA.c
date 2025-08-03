#include "LQ_DMA.h"
#include <IfxCpu_Irq.h>
#include <IfxCpu.h>
#include <IfxDma.h>
#include <IfxDma_Dma.h>
#include <IfxDma_reg.h>
#include <Platform_Types.h>
#include "include.h"

// 安装中断服务函数，向量号和优先级
IFX_INTERRUPT(DMA_IRQHandler, DMA_VECTABNUM, DMA_PRIORITY);
#define camera_Channel PIN_INT3_PRIORITY
// 安装中断服务函数
void DMA_IRQHandler(void)
{
    Camera_Flag++;
    /* 开启CPU中断  否则中断不可嵌套 */
    IfxCpu_enableInterrupts();
    if (Camera_Flag == 2)
    {
        MODULE_DMA.TSR[camera_Channel].B.DCH = 1;
    }
}
/**
 * 摄像头 DMA 配置结构体
 */
Dma_Camera_t g_DmaCameraLinkedList;
/** 摄像头 */
unsigned char Camera_Flag = 0;
unsigned char Camera_Flag_AUX = 0;
unsigned char Image_Data[IMAGEH][IMAGEW];
unsigned char Image_Data_AUX[IMAGEH][IMAGEW];
void DMA_CameraInitConfig()
{
    /* 关闭中断 */
    boolean interruptState = IfxCpu_disableInterrupts(); // 关闭中断，并保存当前中断状态，防止在配置过程中被中断干扰

    IfxDma_Dma_Config dmaConfig; // 定义一个DMA模块配置结构体变量，用于存储DMA模块的配置信息
    IfxDma_Dma_initModuleConfig(&dmaConfig, &MODULE_DMA); // 初始化DMA模块的配置，指定要使用的DMA模块

    IfxDma_Dma dma; // 定义一个DMA模块实例变量
    IfxDma_Dma_initModule(&dma, &dmaConfig); // 根据配置信息初始化DMA模块

    IfxDma_Dma_ChannelConfig cfg; // 定义一个DMA通道配置结构体变量，用于存储DMA通道的配置信息
    IfxDma_Dma_initChannelConfig(&cfg, &dma); // 初始化DMA通道的配置，关联到已初始化的DMA模块

    /* 1号摄像头 通道配置 */
    cfg.requestMode = IfxDma_ChannelRequestMode_oneTransferPerRequest;          // 请求启动一次传输 // 设置请求模式为每次请求触发一次数据传输
    cfg.moveSize = IfxDma_ChannelMoveSize_8bit;                                 // 一次move 8bit // 每次数据传输的大小为8位
    cfg.shadowControl = IfxDma_ChannelShadow_none;                              // 单次模式 // 采用单次传输模式，不使用影子缓冲区
    cfg.operationMode = IfxDma_ChannelOperationMode_continuous;                 // 传输完成继续传输 // 设置为连续传输模式，传输完成后会继续进行下一次传输
    cfg.hardwareRequestEnabled = TRUE;                                          // 使能硬件触发传输 // 启用硬件触发方式来启动DMA传输
    cfg.sourceAddress = IFXCPU_GLB_ADDR_DSPR(IfxCpu_getCoreId(), (unsigned long)(&MODULE_P00.IN.U)); // 设置源地址 // 设置数据传输的源地址，通常是摄像头数据的输入端口
    cfg.sourceCircularBufferEnabled = TRUE;                                     // 保持源地址不变 // 启用源地址的循环缓冲区功能，使源地址在传输过程中保持不变
    cfg.sourceAddressCircularRange = IfxDma_ChannelIncrementCircular_none; // 设置源地址在循环模式下的增量范围为无，即源地址不做增量变化
    cfg.channelId = camera_Channel;                     // 设置DMA通道 // 指定使用的DMA通道编号
    cfg.channelInterruptEnabled = TRUE;          // 使能通道中断 // 启用该DMA通道的中断功能
    cfg.channelInterruptPriority = DMA_PRIORITY; // DMA中断优先级 // 设置DMA通道中断的优先级
    cfg.channelInterruptTypeOfService = DMA_VECTABNUM; // 设置DMA通道中断对应的服务向量表编号，用于确定中断服务函数

    /* 设置传输表述符 */
    cfg.destinationAddress = IFXCPU_GLB_ADDR_DSPR(IfxCpu_getCoreId(), (unsigned long)Image_Data); // 设置目标地址，即数据要传输到的位置
    cfg.shadowAddress = 0; // 设置影子地址为0，通常用于链式传输场景，这里不使用
    cfg.transferCount = IMAGEH*IMAGEW/2; // 设置要传输的数据数量，通常根据图像的高度和宽度计算得出

    IfxDma_Dma_initChannel(&g_DmaCameraLinkedList.chn, &cfg); // 根据配置信息初始化DMA通道实例
    IfxDma_Dma_initLinkedListEntry((void *)&g_DmaCameraLinkedList.linkedList[0], &cfg); // 将配置信息存储到链表条目中，可能用于链式传输或管理多个传输任务

    IfxCpu_Irq_installInterruptHandler((void *)DMA_IRQHandler, DMA_PRIORITY); // 安装DMA中断处理函数，当DMA通道产生中断时会调用该函数

    (IfxDma_Dma_getSrcPointer(&g_DmaCameraLinkedList.chn))->B.CLRR = 1; // 清除DMA通道的服务请求标志，确保没有残留的请求信号
    IfxDma_clearChannelInterrupt(&MODULE_DMA, camera_Channel); // 清除指定DMA通道的中断标志
    IfxDma_disableChannelTransaction(&MODULE_DMA, camera_Channel); // 禁用指定DMA通道的传输事务，在需要时再启用

    /* 开启中断 */
    IfxCpu_restoreInterrupts(interruptState); // 恢复之前保存的中断状态，允许系统响应中断
}
/* 摄像头DMA传输开启 */
void DMA_CameraStart()
{
    if (Camera_Flag == 0) // 检测标志位是否清除   如果没有清除则不进行新的数据采集  避免覆盖未使用数据
    {
        /* DMA 设置传输目的地址  */
        IfxDma_setChannelDestinationAddress(&MODULE_DMA, camera_Channel,
                                            (void *)IFXCPU_GLB_ADDR_DSPR(IfxCpu_getCoreId(), &Image_Data[0][0]));
        /* 开启DMA传输  */
        MODULE_DMA.TSR[camera_Channel].B.ECH = 1;
    }
}
