#include "LQ_GPIO_IRQ.h"
#include <IfxCpu_Irq.h>
#include <Compilers.h>
#include <CompilerTasking.h>
#include <IfxCpu.h>
#include <IfxPort_regdef.h>
#include <IfxScu_PinMap.h>
#include <IfxScuEru.h>
#include <IfxSrc.h>
#include <IfxSrc_reg.h>
#include <IfxSrc_regdef.h>

#include "LQ_GPIO_LED.h"
#include "LQ_DMA.h"
#include "include.h"
#include "irq.h"


/** 外部中断CPU标号 */
const unsigned char PinIrqVectabNum[8] = {PIN_INT0_VECTABNUM, PIN_INT1_VECTABNUM, PIN_INT2_VECTABNUM, PIN_INT3_VECTABNUM,
                                          PIN_INT4_VECTABNUM, PIN_INT5_VECTABNUM, PIN_INT6_VECTABNUM, PIN_INT7_VECTABNUM};
/** 外部中断优先级 */
const unsigned char PinIrqPriority[8] = {PIN_INT0_PRIORITY, PIN_INT1_PRIORITY, PIN_INT2_PRIORITY, PIN_INT3_PRIORITY,
                                         PIN_INT4_PRIORITY, PIN_INT5_PRIORITY, PIN_INT6_PRIORITY, PIN_INT7_PRIORITY};
/** 外部中断服务函数地址 */
const void *PinIrqFuncPointer[8] = {&PIN_INT0_IRQHandler, &PIN_INT1_IRQHandler, &PIN_INT2_IRQHandler, &PIN_INT3_IRQHandler,
                                    &PIN_INT4_IRQHandler, &PIN_INT5_IRQHandler, &PIN_INT6_IRQHandler, &PIN_INT7_IRQHandler};

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_Exti(GPIO_Name_t pin, IfxPort_InputMode mode)
@功能说明：GPIO外部中断初始化
@参数说明：pin:管脚标号    lq_gpio.h中定义
@      mode:GPIO 模式   lq_gpio.h中的宏定义中选择*
@函数返回：无
@举    例：PIN_Exti(P20_0, PIN_IRQ_MODE_FALLING);//配置P20_0 下降沿触发中断
@备    注：TC297只有17个固定的GPIO支持外部中断 这15个固定GPIO分为8组，每组只能选择其中一个作为外部中断管脚使用
@         0：P15_4  P10_7                                    1：P14_3  P10_8
@         2：P10_2  P02_1  P00_4                             3：P10_3  P14_1  P02_0
@         4：P15_5  P33_7                                    5：P15_8
@         6：P20_0  P11_10                                   7：P20_9  P15_1
*           外部中断服务函数在LQ_GPIO.c中  中断优先级配置在LQ_GPIO.h中 可以自行修改
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_Exti(GPIO_Name_t pin, IfxPort_InputMode mode)
{
    int i, j;
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);
    /* 关闭中断 */
    boolean interruptState = IfxCpu_disableInterrupts();
    IfxScu_Req_In *reqPin = 0;
    /* 检测管脚 是否是 固定的17个管脚 */
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            if (IfxScu_Req_In_pinTable[0][i][j] == NULL_PTR)
            {
            }
            else if ((uint32)port == (uint32)(IfxScu_Req_In_pinTable[0][i][j]->pin.port) && pinIndex == IfxScu_Req_In_pinTable[0][i][j]->pin.pinIndex)
            {
                reqPin = IfxScu_Req_In_pinTable[0][i][j];
            }
        }
    }
    if (reqPin == 0)
    {
#pragma warning 557 // 屏蔽警告
        while (1)
            ;       /* 请选择有外部中断功能的管脚 */
#pragma warning 557 // 打开警告
    }
    /* 配置上下拉电阻 */
    IfxScuEru_initReqPin(reqPin, mode);
    /* 根据输入引脚确定输入通道EICRm */
    IfxScuEru_InputChannel inputChannel = (IfxScuEru_InputChannel)reqPin->channelId;
    /* 配置中断模式 */
    IfxScuEru_disableFallingEdgeDetection(inputChannel); /* EICRm.FENn */
    IfxScuEru_disableRisingEdgeDetection(inputChannel);  /* EICRm.RENn */
    if (mode == IfxPort_InputMode_pullUp || mode == IfxPort_InputMode_noPullDevice)
    {
        IfxScuEru_enableFallingEdgeDetection(inputChannel); /* EICRm.FENn */
    }
    if (mode == IfxPort_InputMode_pullDown || mode == IfxPort_InputMode_noPullDevice)
    {
        IfxScuEru_enableRisingEdgeDetection(inputChannel); /* EICRm.RENn */
    }
    IfxScuEru_enableAutoClear(inputChannel);
    /* 信号的目的地 */
    IfxScuEru_InputNodePointer triggerSelect = (IfxScuEru_InputNodePointer)inputChannel;
    IfxScuEru_OutputChannel outputChannel = (IfxScuEru_OutputChannel)inputChannel;

    //    /* Connecting Matrix, Event Trigger Logic ETL block */
    IfxScuEru_enableTriggerPulse(inputChannel);            /* EICRM.EIENN */
    IfxScuEru_connectTrigger(inputChannel, triggerSelect); /* EICRm.INPn */
    /* output channels, OutputGating Unit OGU block */
    IfxScuEru_setFlagPatternDetection(outputChannel, inputChannel, FALSE);                             /* IGCRm.IPENn */
    IfxScuEru_disablePatternDetectionTrigger(outputChannel);

    /* IGCRm.GEENn */
    IfxScuEru_setInterruptGatingPattern(outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive); /* IGCEm.IGPn */
    unsigned char vectabNum = PinIrqVectabNum[(int)inputChannel];
    unsigned char Priority = PinIrqPriority[(int)inputChannel];
    /* service request configuration */
    {
        volatile Ifx_SRC_SRCR *src = &MODULE_SRC.SCU.SCU.ERU[(int)outputChannel%4];
        IfxSrc_init(src, vectabNum, Priority);
        IfxSrc_enable(src);
    }
    /* 安装管理中断的中断服务 */
    IfxCpu_Irq_installInterruptHandler((void *)PinIrqFuncPointer[(int)inputChannel], Priority);
    /* 开启中断 */
    IfxCpu_restoreInterrupts(interruptState);
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void PIN_ExtiEnable(GPIO_Name_t pin,  boolean bool)
@功能说明：GPIO外部中断使能
@参数说明： pin:管脚标号    lq_gpio.h中定义
@       bool:是否开启中断
@函数返回：无
@举    例：PIN_ExtiEnable(P20_0, FALSE);//关闭P20_0 外部中断
@备    注：TC297只有17个固定的GPIO支持外部中断 这15个固定GPIO分为8组，每组只能选择其中一个作为外部中断管脚使用
@         0：P15_4  P10_7                                    1：P14_3  P10_8
@         2：P10_2  P02_1  P00_4                             3：P10_3  P14_1  P02_0
@         4：P15_5  P33_7                                    5：P15_8
@         6：P20_0  P11_10                                   7：P20_9  P15_1
*           外部中断服务函数在LQ_GPIO.c中  中断优先级配置在LQ_GPIO.h中 可以自行修改
*           PIN_Exti()函数初始化后，默认GPIO开启外部中断，如果想要关闭，则可以调用PIN_ExtiEnable()
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void PIN_ExtiEnable(GPIO_Name_t pin, boolean bool)
{
    int i, j;
    Ifx_P *port = PIN_GetModule(pin);
    unsigned char pinIndex = PIN_GetIndex(pin);
    /* 关闭中断 */
    boolean interruptState = IfxCpu_disableInterrupts();
    IfxScu_Req_In *reqPin = 0;
    /* 检测管脚 是否是 固定的17个管脚 */
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            if (IfxScu_Req_In_pinTable[0][i][j] == NULL_PTR)
            {
            }
            else if ((uint32)port == (uint32)(IfxScu_Req_In_pinTable[0][i][j]->pin.port) && pinIndex == IfxScu_Req_In_pinTable[0][i][j]->pin.pinIndex)
            {
                reqPin = IfxScu_Req_In_pinTable[0][i][j];
            }
        }
    }
    if (reqPin == 0)
    {
#pragma warning 557 // 屏蔽警告
        while (1)
            ;       /* 请选择有外部中断功能的管脚 */
#pragma warning 557 // 打开警告
    }
    /* 根据输入引脚确定输入通道EICRm */
    IfxScuEru_InputChannel inputChannel = (IfxScuEru_InputChannel)reqPin->channelId;

    volatile Ifx_SRC_SRCR *src = &MODULE_SRC.SCU.SCU.ERU[(int)inputChannel % 4];

    IfxSrc_clearOverrun(src);
    IfxSrc_clearRequest(src);

    if (bool)
    {
        IfxSrc_enable(src);
    }
    else
    {
        IfxSrc_disable(src);
    }
    /* 开启中断 */
    IfxCpu_restoreInterrupts(interruptState);
}
