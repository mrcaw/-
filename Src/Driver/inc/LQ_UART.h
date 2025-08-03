
#ifndef _LQ_ASC_H_
#define _LQ_ASC_H_

#include <Platform_Types.h>
#include <stdint.h>
#include <Ifx_Fifo.h>
#include <Ifx_Types.h>
#include <IfxAsclin.h>
#include <IfxAsclin_Asc.h>
#include <IfxAsclin_PinMap.h>
#include <IfxCpu.h>
#include <IfxCpu_Irq.h>
#include <IfxPort.h>
#include <IfxPort_regdef.h>
#include "include.h"

/**
 * @brief UART 枚举
 */
typedef enum
{
    UART0 = 0,
    UART1,
    UART2,
    UART3
} UART_t;

// L.Q UART RX 管脚枚举
typedef enum
{
    UART0_RX_P14_1 = 0xB401,
    UART0_RX_P15_3 = 0xB503,

    UART1_RX_P02_3 = 0xA203,
    UART1_RX_P11_10 = 0xB10A,
    UART1_RX_P15_1 = 0xB501,
    UART1_RX_P15_5 = 0xB505,
    UART1_RX_P20_9 = 0xC009,
    UART1_RX_P33_13 = 0xD30D,

    UART2_RX_P02_0 = 0xA200,
    UART2_RX_P02_1 = 0xA201,
    UART2_RX_P10_6 = 0xB006,
    UART2_RX_P14_3 = 0xB403,
    UART2_RX_P33_8 = 0xD308,

    UART3_RX_P00_1 = 0xA001,
    UART3_RX_P15_7 = 0xB507,
    UART3_RX_P20_3 = 0xC003,
    UART3_RX_P21_6 = 0xC106

} UART_RX_t;

// L.Q UART TX 管脚枚举
typedef enum
{
    UART0_TX_P14_0 = 0xB400,
    UART0_TX_P14_1 = 0xB401,
    UART0_TX_P15_2 = 0xB502,
    UART0_TX_P15_3 = 0xB503,

    UART1_TX_P02_2 = 0xA202,
    UART1_TX_P11_12 = 0xB10C,
    UART1_TX_P15_0 = 0xB500,
    UART1_TX_P15_1 = 0xB501,
    UART1_TX_P15_4 = 0xB504,
    UART1_TX_P15_5 = 0xB505,
    UART1_TX_P20_10 = 0xC00A,
    UART1_TX_P33_12 = 0xD30C,
    UART1_TX_P33_13 = 0xD30D,

    UART2_TX_P02_0 = 0xA200,
    UART2_TX_P10_5 = 0xB005,
    UART2_TX_P14_2 = 0xB402,
    UART2_TX_P14_3 = 0xB403,
    UART2_TX_P33_8 = 0xD308,
    UART2_TX_P33_9 = 0xD309,

    UART3_TX_P00_0 = 0xA000,
    UART3_TX_P00_1 = 0xA001,
    UART3_TX_P15_6 = 0xB506,
    UART3_TX_P15_7 = 0xB507,
    UART3_TX_P20_0 = 0xC000,
    UART3_TX_P20_3 = 0xC003,
    UART3_TX_P21_7 = 0xC107

} UART_TX_t;

extern IfxAsclin_Asc g_UartConfig[4];
void UART_InitConfig(UART_RX_t RxPin, UART_TX_t TxPin, unsigned long baudrate);
void UART_PutChar(UART_t uratn, char ch);
void UART_PutStr(UART_t uratn, char *str);
void UART_PutBuff(UART_t uratn, unsigned char *buff, unsigned long len);
uint8 UART_GetCount(UART_t uratn);
char UART_GetChar(UART_t uratn);
char UART_GetBuff(UART_t uratn, unsigned char *data, unsigned char len);

#endif /* 0_APPSW_TRICORE_APP_LQ_ASC_H_ */
