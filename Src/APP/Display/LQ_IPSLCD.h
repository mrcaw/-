#ifndef __LQ_IPSLCD_H__
#define __LQ_IPSLCD_H__

#include "stdint.h"


#define USE_QSPI  1     //不使用硬件SPI接线方式    如果使用硬件SPI  则CS接P21_2  SCK接P00_2   SDI接P00_1  DC接P20_12  RST接P20_13



/*******************接口定义******************************/

// 龙邱IPS 模块管脚定义
#ifndef IPS_PIN
#define IPS_PIN


#define IPS_CS        P20_10     //IPS CS管脚
#define IPS_CK        P20_11     //IPS CK管脚
#define IPS_DI        P20_14     //IPS DI管脚
#define IPS_RST       P20_13     //IPS RST管脚
#define IPS_DC        P20_12     //IPS DC管脚
#endif

// 管脚操作宏定义
#define IPS_DC_H PIN_Write(IPS_DC, 1)
#define IPS_DC_L PIN_Write(IPS_DC, 0)
#define IPS_RST_H PIN_Write(IPS_RST, 1)
#define IPS_RST_L PIN_Write(IPS_RST, 0)
#define IPS_DI_H PIN_Write(IPS_DI, 1)
#define IPS_DI_L PIN_Write(IPS_DI, 0)
#define IPS_CK_H PIN_Write(IPS_CK, 1)
#define IPS_CK_L PIN_Write(IPS_CK, 0)
#define IPS_CS_H PIN_Write(IPS_CS, 1)
#define IPS_CS_L PIN_Write(IPS_CS, 0)
#define IPS200
//16位RGB颜色常用预设
#ifndef PRESET_U16_COLOR
#define PRESET_U16_COLOR

#define U16_BLACK    0x0000
#define U16_WHITE    0xFFFF
#define U16_RED      0xF000
#define U16_GREEN    0x0F00
#define U16_BLUE     0x00F0
#define U16_YELLOW   0xFF00
#define U16_CYAN     0x0FF0
#define U16_MAGENTA  0xF0F0
#define U16_GRAY     0x7777
#define U16_LIGHT_RED   0xF800
#define U16_LIGHT_GREEN 0x0800
#define U16_LIGHT_BLUE  0x0080
#define U16_DARK_RED    0x7000
#define U16_DARK_GREEN  0x0700
#define U16_DARK_BLUE   0x0070
#define U16_ORANGE      0xFC00

#endif

#ifdef IPS114
#if USE_HORIZONTAL == 0 || USE_HORIZONTAL == 1
#define LCD_W 135
#define LCD_H 240
#else
#define LCD_W 240
#define LCD_H 135
#endif
#endif

    /*******************屏幕分辨率定义******************************/
#ifdef IPS130
#define LCD_W 240
#define LCD_H 240
#endif

#ifdef IPS154
#define LCD_W 240
#define LCD_H 240
#endif

#ifdef IPS200
#if USE_HORIZONTAL == 0 || USE_HORIZONTAL == 1
#define LCD_W 240
#define LCD_H 320
#else
#define LCD_W 320
#define LCD_H 240
#endif

#endif
//防止中不到宏定义而报错
#ifndef LCD_H
#if USE_HORIZONTAL == 0 || USE_HORIZONTAL == 1
#define LCD_W 240
#define LCD_H 320
#else
#define LCD_W 320
#define LCD_H 240
#endif
#endif
/*写入命令*/
void LCD_Write_Cmd(unsigned char cmd);
/*写入8位数据*/
void LCD_Write_Byte(unsigned char dat);
/*写入16位数据*/
void LCD_Write_Word(unsigned int dat);
/*设置起始和结束地址*/
void LCD_Address_Set(unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2);

/*LQ IPS 1.14寸屏幕初始化*/
void LCD_Init(void);
/*在指定位置画点*/
void LCD_DrawPoint(unsigned int x, unsigned int y, unsigned int color);
/*指定位置填充指定颜色*/
void LCD_Fill(unsigned int xsta, unsigned int ysta, unsigned int xend, unsigned int yend, unsigned int color);
/*清屏*/
void LCD_CLS(unsigned int color);
/*画线*/
void LCD_Draw_Line(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
/*画矩形框*/
void LCD_Draw_Rectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
/*画圆*/
void LCD_Draw_Circle(unsigned char x, unsigned char y, unsigned char r, unsigned short color_dat);
/*显示图片*/
void LCD_Show_Picture(unsigned int x, unsigned int y, unsigned int length, unsigned int width, const unsigned char pic[]);
void LCD_Show_Logo(unsigned char xs, unsigned char ys);
/*显示单个字符*/
void LCD_ShowChar(unsigned int x, unsigned int y, unsigned char num, unsigned int fc, unsigned int bc, unsigned char sizey, unsigned char mode);
/*显示字符串*/
void LCD_ShowString(unsigned int x, unsigned int y, char *p, unsigned int fc, unsigned int bc, unsigned char sizey, unsigned char mode);
/*显示12*6大小的字符串*/
void LCD_ShowStr_12(unsigned int x, unsigned int y, char *p, unsigned int fc, unsigned int bc);
/*显示16*8大小的字符串*/
void LCD_ShowStr_16(unsigned int x, unsigned int y, char *p, unsigned int fc, unsigned int bc);
/*显示24*12大小的字符串*/
void LCD_ShowStr_24(unsigned int x, unsigned int y, char *p, unsigned int fc, unsigned int bc);
/*显示32*16大小的字符串*/
void LCD_ShowStr_32(unsigned int x, unsigned int y, char *p, unsigned int fc, unsigned int bc);
/*显示汉字*/
void LCD_ShowChinese(unsigned int x, unsigned int y, char *s, unsigned int fc, unsigned int bc, unsigned char sizey);
void LCDSPI_Road(unsigned char wide_start, unsigned char high_start, unsigned char high, unsigned char wide, unsigned char *Pixle);

void Test_IPSLCD(void);

#endif /*SGP18T_ILI9163B.h*/

