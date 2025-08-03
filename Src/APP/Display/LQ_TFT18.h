#ifndef __LQ_TFT18_H__
#define __LQ_TFT18_H__

#include "stdint.h"

#define TFT18W 162
#define TFT18H 132

/*******************接口定义******************************/

#ifndef PRESET_U16_COLOR
#define PRESET_U16_COLOR
#define U16_BLACK    0x0000
#define U16_WHITE    0xFFFF
#define U16_RED      0xF800
#define U16_GREEN    0x0F00
#define U16_BLUE     0x00F0
#define U16_YELLOW   0xFF0F
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

//龙邱TFT SPI口模块管脚顺序
#define TFTSPI_CS        P20_11     //IPS CS管脚
#define TFTSPI_SCK       P20_14     //IPS CK管脚
#define TFTSPI_SDI       P20_13     //IPS DI管脚
#define TFTSPI_DC        P20_12     //IPS DC管脚
#define TFTSPI_RST       P20_10     //IPS RST管脚


#define TFTSPI_CS_H PIN_Write(TFTSPI_CS, 1);   /*!< CS管脚 */
#define TFTSPI_SCK_H PIN_Write(TFTSPI_SCK, 1); /*!< SCL管脚 */
#define TFTSPI_SDI_H PIN_Write(TFTSPI_SDI, 1); /*!< SDI管脚 */
#define TFTSPI_DC_H PIN_Write(TFTSPI_DC, 1);   /*!< DC管脚 */
#define TFTSPI_RST_H PIN_Write(TFTSPI_RST, 1); /*!< RST管脚 */

#define TFTSPI_CS_L PIN_Write(TFTSPI_CS, 0);   /*!< CS管脚 */
#define TFTSPI_SCK_L PIN_Write(TFTSPI_SCK, 0); /*!< SCL管脚 */
#define TFTSPI_SDI_L PIN_Write(TFTSPI_SDI, 0); /*!< SDI管脚 */
#define TFTSPI_DC_L PIN_Write(TFTSPI_DC, 0);   /*!< DC管脚 */
#define TFTSPI_RST_L PIN_Write(TFTSPI_RST, 0); /*!< RST管脚 */

void TFTSPI_Init(void);
void TFTSPI_Write_Cmd(unsigned char cmd);
void TFTSPI_Write_Byte(unsigned char dat);
void TFTSPI_Write_Word(unsigned short dat);
void TFTSPI_Set_Pos(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye);
void TFTSPI_Fill_Area(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color);
void TFTSPI_CLS(unsigned short color);
void TFTSPI_Draw_Dot(unsigned char x, unsigned char y, unsigned short color_dat);
void TFTSPI_Draw_Part(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
void TFTSPI_Draw_Rectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
void TFTSPI_Draw_Circle(unsigned char x, unsigned char y, unsigned char r, unsigned short color_dat);
void TFTSPI_Draw_Line(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color_dat);
void TFTSPI_Show_Pic(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, const unsigned char *ppic);
void TFTSPI_P6X8Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);
void TFTSPI_P8X8Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);
void TFTSPI_P8X16Str(unsigned char x, unsigned char y, char *s_dat, unsigned short word_color, unsigned short back_color);
void TFTSPI_P16x16Str(unsigned char x, unsigned char y, unsigned char *s_dat, unsigned short word_color, unsigned short back_color);
void TFTSPI_Show_Pic2(unsigned char xs, unsigned char ys, unsigned char w, unsigned char h, const unsigned char *ppic);
void TFTSPI_Show_Battery_Icon(void);
void TFTSPI_Show_Title(void);
void TFTSPI_Show_Logo(unsigned char xs, unsigned char ys);
void TFTSPI_Road(unsigned char wide_start, unsigned char high_start, unsigned char high, unsigned char wide, unsigned char *Pixle);
void TFTSPI_BinRoad(unsigned char wide_start, unsigned char high_start, unsigned char high, unsigned char wide, unsigned char *Pixle);
void TFTSPI_ShowBeacon(void);
void TFTSPI_ShowStr(unsigned char x, unsigned char y, char *s_dat,
                    unsigned short fc, unsigned short pc, unsigned char size);
void Test_TFT18(void);

#endif /*SGP18T_ILI9163B.h*/
