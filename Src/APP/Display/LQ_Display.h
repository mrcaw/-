#ifndef __LQ_DISPLAY_H__
#define __LQ_DISPLAY_H__

#ifndef PRESET_U16_COLOR
#define PRESET_U16_COLOR

#define U16_BLACK    0x0000
#define U16_WHITE    0x0FFF
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

// 初始化
void Display_Init(void);
// 清屏函数
void Display_CLS(unsigned int color);
// 画点
void Display_DrawPoint(unsigned int x, unsigned int y, unsigned int color);
// 输出字符
void Display_showString(unsigned int x, unsigned int y, char *num, unsigned int fc, unsigned int bc, unsigned char sizey);
// 画线
void Display_DrawLine(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color);
// 画矩形
void Display_DrawRectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color);
// 显示图片
void Display_Show(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned char *pic);
// 显示汉字
void Display_ShowChinese(unsigned int x, unsigned int y, char *s, unsigned int fc, unsigned int bc, unsigned char sizey);
// 显示LOGO
void Display_Show_Logo(unsigned char xs, unsigned char ys);
// 画圆
void Display_DrawCircle(unsigned char x, unsigned char y, unsigned char r, unsigned short color);
// 显示测试
void Test_Display(void);
#endif
