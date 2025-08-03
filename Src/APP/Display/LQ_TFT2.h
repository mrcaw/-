#ifndef __LQ_TFT2_H__
#define __LQ_TFT2_H__

#include "stdint.h"

#define TFT20W 220
#define TFT20H 176

/*******************接口定义******************************/

// 龙邱TFT2 SPI口模块管脚顺序
#define TFT2SPI_CS P20_11  // CS管脚 默认拉低，可以不用
#define TFT2SPI_SCK P20_14 // SPI SCK管脚
#define TFT2SPI_SDI P20_13 // SPI MOSI管脚
#define TFT2SPI_DC P20_12  // D/C管脚
#define TFT2SPI_RST P20_10 // RESET管脚

// 龙邱TFT2 SPI 高电平的操作
#define TFT2SPI_CS_H PIN_Write(TFT2SPI_CS, 1);   /*!< CS管脚 */
#define TFT2SPI_SCK_H PIN_Write(TFT2SPI_SCK, 1); /*!< SCL管脚 */
#define TFT2SPI_SDI_H PIN_Write(TFT2SPI_SDI, 1); /*!< SDI管脚 */
#define TFT2SPI_DC_H PIN_Write(TFT2SPI_DC, 1);   /*!< DC管脚 */
#define TFT2SPI_RST_H PIN_Write(TFT2SPI_RST, 1); /*!< RST管脚 */

#define TFT2SPI_CS_L PIN_Write(TFT2SPI_CS, 0);   /*!< CS管脚 */
#define TFT2SPI_SCK_L PIN_Write(TFT2SPI_SCK, 0); /*!< SCL管脚 */
#define TFT2SPI_SDI_L PIN_Write(TFT2SPI_SDI, 0); /*!< SDI管脚 */
#define TFT2SPI_DC_L PIN_Write(TFT2SPI_DC, 0);   /*!< DC管脚 */
#define TFT2SPI_RST_L PIN_Write(TFT2SPI_RST, 0); /*!< RST管脚 */

#ifndef PRESET_U16_COLOR
#define PRESET_U16_COLOR

#define U16_BLACK 0x0000
#define U16_WHITE 0xFFFF
#define U16_RED 0xF000
#define U16_GREEN 0x0F00
#define U16_BLUE 0x00F0
#define U16_YELLOW 0xFF00
#define U16_CYAN 0x0FF0
#define U16_MAGENTA 0xF0F0
#define U16_GRAY 0x7777
#define U16_LIGHT_RED 0xF800
#define U16_LIGHT_GREEN 0x0800
#define U16_LIGHT_BLUE 0x0080
#define U16_DARK_RED 0x7000
#define U16_DARK_GREEN 0x0700
#define U16_DARK_BLUE 0x0070
#define U16_ORANGE 0xFC00

#endif

/*TFT2初始化  */
void TFT2SPI_Init(void);
/* 写命令 */
void TFT2SPI_Write_Cmd(unsigned char cmd);
/*写字节  */
void TFT2SPI_Write_Byte(unsigned char dat);
/* 写半字 */
void TFT2SPI_Write_Word(unsigned short dat);
/*  重新定位输入信息位置 */
void TFT2SPI_Set_Pos(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye);
/*  填充指定区域  */
void TFT2SPI_Fill_Area(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color);
/* 全屏显示单色画面  */
void TFT2SPI_CLS(unsigned short color);
/*   填充矩形区域  */
void TFT2SPI_Draw_Part(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
/* 画矩形边框 */
void TFT2SPI_Draw_Rectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
/* 画圆  */
void TFT2SPI_Draw_Circle(unsigned char x, unsigned char y, unsigned char r, unsigned short color_dat);
/* 画线 */
void TFT2SPI_Draw_Line(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
/* 画点  */
void TFT2SPI_Draw_Dot(unsigned char x, unsigned char y, unsigned short color_dat);
/*  显示图片  */
void TFT2SPI_Show_Pic(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, const unsigned char *ppic);
/*  液晶字符串输出(6*8字体) */
void TFT2SPI_P6X8Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);
/*  液晶字符串输出(8*8字体)*/
void TFT2SPI_P8X8Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);
/*  液晶字符串输出(8*16字体)  */
void TFT2SPI_P8X16Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);

/* 液晶汉字字符串输出(16*16字体) */
void TFT2SPI_P16x16Str(unsigned char x, unsigned char y, unsigned char *s_dat, unsigned short word_color, unsigned short back_color);
/*   显示图片  */
void TFT2SPI_Show_Pic2(unsigned char xs, unsigned char ys, unsigned char w, unsigned char h, const unsigned char *ppic);
/*  显示电池图标  */
void TFT2SPI_Show_Battery_Icon(void);
/*  显示标签  */
void TFT2SPI_Show_Title(void);
/*   显示龙邱LOG  */
void TFT2SPI_Show_Logo(unsigned char xs, unsigned char ys);
/*   TFT2屏 unsigned char 灰度数据显示  */
void TFT2SPI_Road(unsigned char high_start, unsigned char wide_start, unsigned char high, unsigned char wide, unsigned char *Pixle);
/* TFT2屏 unsigned char 二值化数据显示 */
void TFT2SPI_BinRoad(unsigned char high_start, unsigned char wide_start, unsigned char high, unsigned char wide, unsigned char *Pixle);
void write_command(unsigned char LCD_Reg, unsigned int LCD_RegValue);
void TFT2SPI_ShowStr(unsigned char x, unsigned char y, char *s_dat,
                     unsigned short fc, unsigned short pc, unsigned char size);

void Test_TFT2(void);

#endif
