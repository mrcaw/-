#include "LQ_GPT12_ENC.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void ENC_InitConfig(ENC_InputPin_t InputPin, ENC_DirPin_t DirPin)
@功能说明：ENC 初始化
@参数说明：
@InputPin:ENC脉冲输入管脚  LQ_GPT12_ENC.h 中枚举体
@DirPin  :ENC方向管脚      LQ_GPT12_ENC.h 中枚举体
@函数返回：无
@备    注：ENC_InitConfig(ENC2_InPut_P33_7, ENC2_Dir_P33_6); //初始化ENC2 P33_7作为脉冲计数管脚  P33_6作为方向管脚
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void ENC_InitConfig(ENC_InputPin_t InputPin, ENC_DirPin_t DirPin)
{
    // 初始化全局时钟
    IfxGpt12_enableModule(&MODULE_GPT120);
    if (ENC_GetTimer(InputPin) != ENC_GetTimer(DirPin))
    {
#pragma warning 557 // 屏蔽警告
        while (1)
            ;           // 请检查 ENC脉冲输入管脚和方向管脚是否为同一个 ENC
#pragma warning default // 打开警告
    }
    switch (ENC_GetTimer(InputPin))
    {
    case 2:
        // 设置T2 计数模式
        IfxGpt12_T2_setMode(&MODULE_GPT120, IfxGpt12_Mode_counter);
        // 设置T2 计数模式   TxIn 上升沿计数
        IfxGpt12_T2_setIncrementalInterfaceInputMode(&MODULE_GPT120, IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxIN);
        IfxGpt12_T2_setCounterInputMode(&MODULE_GPT120, IfxGpt12_CounterInputMode_risingEdgeTxIN);
        // 设置T2 辅助管脚 A
        IfxGpt12_T2_setEudInput(&MODULE_GPT120, (IfxGpt12_EudInput)(DirPin & 0x0f));
        IfxGpt12_T2_setInput(&MODULE_GPT120, (IfxGpt12_Input)(InputPin & 0x0f));
        // 计数方向  使用外部管脚控制
        IfxGpt12_T2_setDirectionSource(&MODULE_GPT120, IfxGpt12_TimerDirectionSource_external);
        // 设置向上计数
        IfxGpt12_T2_setTimerDirection(&MODULE_GPT120, IfxGpt12_TimerDirection_up);
        IfxGpt12_T2_run(&MODULE_GPT120, IfxGpt12_TimerRun_start);
        break;
    case 3:
        // 设置T3 计数模式
        IfxGpt12_T3_setMode(&MODULE_GPT120, IfxGpt12_Mode_counter);
        // 设置T2 计数模式   TxIn 上升沿计数
        IfxGpt12_T3_setIncrementalInterfaceInputMode(&MODULE_GPT120, IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxIN);
        IfxGpt12_T3_setCounterInputMode(&MODULE_GPT120, IfxGpt12_CounterInputMode_risingEdgeTxIN);
        // 设置T2 辅助管脚 A
        IfxGpt12_T3_setEudInput(&MODULE_GPT120, (IfxGpt12_EudInput)(DirPin & 0x0f));
        IfxGpt12_T3_setInput(&MODULE_GPT120, (IfxGpt12_Input)(InputPin & 0x0f));
        // 计数方向  使用外部管脚控制
        IfxGpt12_T3_setDirectionSource(&MODULE_GPT120, IfxGpt12_TimerDirectionSource_external);
        // 设置向上计数
        IfxGpt12_T3_setTimerDirection(&MODULE_GPT120, IfxGpt12_TimerDirection_up);
        IfxGpt12_T3_run(&MODULE_GPT120, IfxGpt12_TimerRun_start);
        break;
    case 4:
        // 设置T4 计数模式
        IfxGpt12_T4_setMode(&MODULE_GPT120, IfxGpt12_Mode_counter);
        // 设置T4 计数模式   TxIn 上升沿计数
        IfxGpt12_T4_setIncrementalInterfaceInputMode(&MODULE_GPT120, IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxIN);
        IfxGpt12_T4_setCounterInputMode(&MODULE_GPT120, IfxGpt12_CounterInputMode_risingEdgeTxIN);
        // 设置T4 辅助管脚 A
        IfxGpt12_T4_setEudInput(&MODULE_GPT120, (IfxGpt12_EudInput)(DirPin & 0x0f));
        IfxGpt12_T4_setInput(&MODULE_GPT120, (IfxGpt12_Input)(InputPin & 0x0f));
        // 计数方向  使用外部管脚控制
        IfxGpt12_T4_setDirectionSource(&MODULE_GPT120, IfxGpt12_TimerDirectionSource_external);
        // 设置向上计数
        IfxGpt12_T4_setTimerDirection(&MODULE_GPT120, IfxGpt12_TimerDirection_up);
        IfxGpt12_T4_run(&MODULE_GPT120, IfxGpt12_TimerRun_start);
        break;
    case 5:
        // 设置T5计数模式
        IfxGpt12_T5_setMode(&MODULE_GPT120, IfxGpt12_Mode_counter);
        // 设置T5 计数模式   TxIn 上升沿计数
        IfxGpt12_T5_setCounterInputMode(&MODULE_GPT120, IfxGpt12_CounterInputMode_risingEdgeTxIN);
        // 设置T5 辅助管脚 A
        IfxGpt12_T5_setEudInput(&MODULE_GPT120, (IfxGpt12_EudInput)(DirPin & 0x0f));
        IfxGpt12_T5_setInput(&MODULE_GPT120, (IfxGpt12_Input)(InputPin & 0x0f));
        // 计数方向  使用外部管脚控制
        IfxGpt12_T5_setDirectionSource(&MODULE_GPT120, IfxGpt12_TimerDirectionSource_external);
        // 设置向上计数
        IfxGpt12_T5_setTimerDirection(&MODULE_GPT120, IfxGpt12_TimerDirection_up);
        IfxGpt12_T5_run(&MODULE_GPT120, IfxGpt12_TimerRun_start);
        break;
    case 6:
        // 设置T6 计数模式
        IfxGpt12_T6_setMode(&MODULE_GPT120, IfxGpt12_Mode_counter);
        // 设置T6 计数模式   TxIn 上升沿计数
        IfxGpt12_T6_setCounterInputMode(&MODULE_GPT120, IfxGpt12_CounterInputMode_risingEdgeTxIN);
        // 设置T6 辅助管脚 A
        IfxGpt12_T6_setEudInput(&MODULE_GPT120, (IfxGpt12_EudInput)(DirPin & 0x0f));
        IfxGpt12_T6_setInput(&MODULE_GPT120, (IfxGpt12_Input)(InputPin & 0x0f));
        // 计数方向  使用外部管脚控制
        IfxGpt12_T6_setDirectionSource(&MODULE_GPT120, IfxGpt12_TimerDirectionSource_external);
        // 设置向上计数
        IfxGpt12_T6_setTimerDirection(&MODULE_GPT120, IfxGpt12_TimerDirection_up);
        IfxGpt12_T6_run(&MODULE_GPT120, IfxGpt12_TimerRun_start);
        break;
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void ENC_InitConfig(ENC_InputPin_t InputPin, ENC_DirPin_t DirPin)
@功能说明：ENC 得到计数值,使用前需要对ENC初始化
@参数说明：InputPin:ENC脉冲输入管脚  LQ_GPT12_ENC.h 中枚举体
@函数返回：无
@备    注：ENC_GetCounter(ENC2_InPut_P00_7); //获取ENC2脉冲计数值
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
signed short ENC_GetCounter(ENC_InputPin_t InputPin)
{
    signed short value = 0;
    switch (ENC_GetTimer(InputPin))
    {
    case 2:
        value = (signed short)MODULE_GPT120.T2.U;
        MODULE_GPT120.T2.U = 0;
        break;

    case 3:
        value = (signed short)MODULE_GPT120.T3.U;
        MODULE_GPT120.T3.U = 0;
        break;

    case 4:
        value = (signed short)MODULE_GPT120.T4.U;
        MODULE_GPT120.T4.U = 0;
        break;

    case 5:
        value = (signed short)MODULE_GPT120.T5.U;
        MODULE_GPT120.T5.U = 0;
        break;

    case 6:
        value = (signed short)MODULE_GPT120.T6.U;
        MODULE_GPT120.T6.U = 0;
        break;
    }
    return value;
}

/////////////////////////////////////////////////////////////////////////////////////
