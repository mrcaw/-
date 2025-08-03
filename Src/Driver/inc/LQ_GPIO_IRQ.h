#ifndef _LQ_GPIO_IRQ_H_
#define _LQ_GPIO_IRQ_H_

#include "IfxPort.h"
#include "LQ_GPIO.h"

/* GPIO 中断触发模式 */
void PIN_Exti(GPIO_Name_t pin, IfxPort_InputMode mode);
#define PIN_IRQ_MODE_RISING IfxPort_InputMode_pullDown             /*!< 上升沿（下拉）触发中断 */
#define PIN_IRQ_MODE_FALLING IfxPort_InputMode_pullUp              /*!< 下降沿（上拉）触发中断 */
#define PIN_IRQ_MODE_RISING_FALLING IfxPort_InputMode_noPullDevice /*!< 双边沿（开漏）触发中断 */

#endif
