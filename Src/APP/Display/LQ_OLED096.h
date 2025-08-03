#ifndef _LQOLED_H
#define _LQOLED_H

#include <stdint.h>

// 龙邱OLED SPI口模块管脚顺序
#define OLED_CK P20_14  // OLED CK管脚
#define OLED_DI P20_11  // OLED DI管脚
#define OLED_RST P20_10 // OLED RST管脚
#define OLED_DC P20_12  // OLED DC管脚
#define OLED_CS P20_13  // OLED CS管脚 默认拉低，可以不用

#define OLED_DC_H PIN_Write(OLED_DC, 1);
#define OLED_DC_L PIN_Write(OLED_DC, 0);

#define OLED_RST_H PIN_Write(OLED_RST, 1);
#define OLED_RST_L PIN_Write(OLED_RST, 0);

#define OLED_DI_H PIN_Write(OLED_DI, 1);
#define OLED_DI_L PIN_Write(OLED_DI, 0);

#define OLED_CK_H PIN_Write(OLED_CK, 1);
#define OLED_CK_L PIN_Write(OLED_CK, 0);

#define X_WIDTH 132
#define Y_WIDTH 64

/* OLED初始化 */
void OLED_Init(void);
/*  OLED全亮  */
void OLED_Fill(void);
/* OLED清屏  */
void OLED_CLS(void);
/*画一个点  */
void OLED_PutPixel(unsigned char x, unsigned char y);
/*  清除8个点 */
void OLED_ClrDot(unsigned char x, unsigned char y);
/*   画矩形 */
void OLED_Rectangle(unsigned char x1, unsigned char y1, unsigned char x2, unsigned char y2, unsigned char gif);
/*  写入一组标准ASCII字符串 */
void OLED_P6x8Str(unsigned char x, unsigned char y, char ch[]);
/*   写入一组标准ASCII字符串  */
void OLED_P8x16Str(unsigned char x, unsigned char y, char ch[]);
/*  输出汉字字符串  */
void OLED_P14x16Str(unsigned char x, unsigned char y, unsigned char ch[]);
/* 显示BMP图片 最大 128×64  */
void OLED_Show_BMP(unsigned char x0, unsigned char y0, unsigned char wide, unsigned char high, const unsigned char *bmp);
/* 显示龙邱图片128×64  */
void OLED_Show_LQLogo(void);
/* 画边线 OV7725显示图像时 可以用这个画边线 */
void OLED_Show_Frame80(void);
/* 画边线 MT9V034显示图像时 可以用这个画边线 */
void OLED_Show_Frame94(void);
/*  OLED 二值化图像显示  */
void OLED_Road(unsigned short high, unsigned short wide, unsigned char *Pixle);
/*  OLED命令 */
void OLED_WrCmd(unsigned char cmd);
/*  OLED设置点 */
void OLED_Set_Pos(unsigned char x, unsigned char y);
void OLED_ShowStr(unsigned char x, unsigned char y, char *s_dat,
                  unsigned short fc, unsigned short pc, unsigned char size);
/*  OLED 测试函数 */
void Test_OLED(void);

#endif
