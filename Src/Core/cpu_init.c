#include "include.h"

App_Cpu0 g_AppCpu0; // brief CPU 0 global data

void cpu_init(void)
{
    // 关闭CPU总中断
    disableInterruptLatency();
    // 关闭看门狗，如果不设置看门狗喂狗需要关闭
    SafetyWatchdog();
    // 读取总线频率
    readCPUFreq();

    // 开启CPU总中断
    enableInterruptLatency();
}

// 关闭看门狗，如果不设置看门狗喂狗需要关闭
void SafetyWatchdog(void)
{
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());
}
// 读取总线频率
void readCPUFreq(void)
{
    g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
    g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreIndex());
    g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
    g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);
}
// 关闭CPU总中断
boolean disableInterruptLatency(void)
{
    return IfxCpu_disableInterrupts();
}

// 开启CPU总中断
void enableInterruptLatency(void)
{
    IfxCpu_enableInterrupts();
}
