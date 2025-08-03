#ifndef __LQ_CAMERA_H
#define __LQ_CAMERA_H

#include "LQ_MT9V034.h"

#define LQMT9V034 // 默认为神眼摄像头
#define USETFT1_8
#define USEOLED // 使用OLED或者TFT1.8模块，默认为TFT1.8

#define IMAGEH MT9V034_IMAGEH /*!< 摄像头采集高度 */

#define IMAGEW MT9V034_IMAGEW /*!< 摄像头采集宽度 */
/* 使用数组宽高 修改这里即可 */
#ifdef USEOLED
#define LCDH 120 /*!< OLED显示高度（用户使用）高度 */
#define LCDW 188 /*!< OLED显示宽度（用户使用）宽度 */
#else
#define LCDH 120 /*!< TFT显示高度（用户使用）高度 */
#define LCDW 160 /*!< TFT显示宽度（用户使用）宽度 */
#endif

void CAMERA_Init(float fps); // 摄像头初始化
void camera_soft_read(void);
void Test_CAMERA(void); // 摄像头测试例程
#endif
