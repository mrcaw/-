#include "include.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：根据预定义的不同屏幕类型宏，对相应的屏幕进行初始化操作。
@参数说明：无
@函数返回：无
@备    注：需确保在调用该函数前，已正确定义了所需的屏幕类型宏，否则对应的屏幕初始化操作不会执行。
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_Init(void)
{

#ifdef TFT18
    TFTSPI_Init();
#endif

#ifdef TFT20
    TFT2SPI_Init();
#endif

#ifdef IPS114
    LCD_Init();
#endif

#ifdef IPS130
    LCD_Init();
#endif

#ifdef IPS154
    LCD_Init();
#endif

#ifdef IPS200
    LCD_Init();
#endif

#ifdef OLED
    OLED_Init();
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：在屏幕上显示字符串
@参数说明：
    - x：显示字符的横坐标位置，类型：unsigned int。
    - y：显示字符的纵坐标位置，类型：unsigned int。
    - num：指向要显示的字符字符串的指针，类型：char *。
    - fc：前景色设置，类型：unsigned int。
    - bc：背景色设置，类型：unsigned int。
    - sizey：设置字符的大小 类型：unsigned char        可选大小：12 16 24 32
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/

void Display_showString(unsigned int x, unsigned int y, char *num, unsigned int fc, unsigned int bc, unsigned char sizey)
{
//TFT屏幕由于像素点较少，所以字体大小只有12与16，这里加了限制
#ifdef TFT18
    if(sizey>=16) sizey=16;
    TFTSPI_ShowStr((unsigned char)x, (unsigned char)y, (char *)num, (unsigned short)fc, (unsigned short)bc, sizey);
#endif

#ifdef TFT20
    if(sizey>=24) sizey=24;
    TFT2SPI_ShowStr((unsigned char)x, (unsigned char)y, (char *)num, (unsigned char)fc, (unsigned char)bc, sizey);
#endif

#ifdef IPS114
    LCD_ShowString(x, y, (char *)num, fc, bc, sizey, 0);
#endif

#ifdef IPS130
    LCD_ShowString(x, y, (char *)num, fc, bc, sizey, 0);
#endif

#ifdef IPS154
    LCD_ShowString(x, y, (char *)num, fc, bc, sizey, 0);
#endif

#ifdef IPS200
    LCD_ShowString(x, y, (char *)num, fc, bc, sizey, 0);
#endif

#ifdef OLED
    OLED_ShowStr((unsigned char)x, (unsigned char)y, (char *)num, (unsigned short)fc, (unsigned short)bc, sizey);
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：在屏幕中填充置顶小大的矩形色块
@参数说明：
    - xs：填充区域的起始横坐标，类型为unsigned char。
    - ys：填充区域的起始纵坐标，类型为unsigned char。
    - xe：填充区域的结束横坐标，类型为unsigned char。
    - ye：填充区域的结束纵坐标，类型为unsigned char。
    - color：用于填充区域的颜色值，类型为unsigned short。
@函数返回：无
@备    注：注意坐标越界
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_Fill(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color)
{

#ifdef TFT18
    TFTSPI_Fill_Area(xs, ys, xe, ye, color);
#endif

#ifdef TFT20
    TFT2SPI_Fill_Area(xs, ys, xe, ye, color);
#endif

#ifdef IPS114
    LCD_Fill(xs, ys, xe, ye, color);
#endif

#ifdef IPS130
    LCD_Fill(xs, ys, xe, ye, color);
#endif

#ifdef IPS154
    LCD_Fill(xs, ys, xe, ye, color);
#endif

#ifdef IPS200
    LCD_Fill(xs, ys, xe, ye, color);
#endif

#ifdef OLED
    OLED_Fill();
#endif
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：对相应屏幕执行清屏操作，并将屏幕设置为指定的颜色(color)。
@参数说明：
    - color：清屏后的背景色
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/

void Display_CLS(unsigned int color)
{

#ifdef TFT18
    TFTSPI_CLS((unsigned short)color);
#endif

#ifdef TFT20
    TFT2SPI_CLS((unsigned short)color);
#endif

#ifdef IPS114
    LCD_CLS(color);
#endif

#ifdef IPS130
    LCD_CLS(color);
#endif

#ifdef IPS154
    LCD_CLS(color);
#endif

#ifdef IPS200
    LCD_CLS(color);
#endif

#ifdef OLED
    OLED_CLS();
#endif
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：在指定的坐标位置(x, y)绘制一个指定颜色(color)的点。不同屏幕类型通过各自对应的画点函数来实现该功能。
@参数说明：
    - x：要绘制点的横坐标位置，类型为unsigned int
    - y：要绘制点的纵坐标位置，类型为unsigned int
    - color：绘制点的颜色值，类型为unsigned int
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_DrawPoint(unsigned int x, unsigned int y, unsigned int color)
{

#ifdef TFT18
    TFTSPI_Draw_Dot((unsigned char)x, (unsigned char)y, (unsigned short)color);
#endif

#ifdef TFT20
    TFT2SPI_Draw_Dot((unsigned char)x, (unsigned char)y, (unsigned short)color);
#endif

#ifdef IPS114
    LCD_DrawPoint(x, y, color);
#endif

#ifdef IPS130
    LCD_DrawPoint(x, y, color);
#endif

#ifdef IPS154
    LCD_DrawPoint(x, y, color);
#endif

#ifdef IPS200
    LCD_DrawPoint(x, y, color);
#endif

#ifdef OLED
    OLED_PutPixel((unsigned char)x, (unsigned char)y);
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：根据预定义的不同屏幕类型宏，在指定的起始坐标(xs, ys)和结束坐标(xe, ye)之间绘制一条指定颜色(color)的直线。不同屏幕类型调用各自对应的画线函数完成此操作。
@参数说明：
    - xs：直线起始点的横坐标，类型为unsigned char。
    - ys：直线起始点的纵坐标，类型为unsigned char。
    - xe：直线结束点的横坐标，类型为unsigned char。
    - ye：直线结束点的纵坐标，类型为unsigned char。
    - color：直线的颜色值，类型为unsigned short。
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_DrawLine(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color)
{

#ifdef TFT18
    TFTSPI_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef TFT20
    TFT2SPI_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef IPS114
    LCD_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef IPS130
    LCD_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef IPS154
    LCD_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef IPS200
    LCD_Draw_Line(xs, ys, xe, ye, color);
#endif

#ifdef OLED
    OLED_PutPixel(xs, ys);
    OLED_PutPixel(xe, ye);
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Display_DrawRectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color)
@功能说明：在由指定的左上角坐标(xs, ys)和右下角坐标(xe, ye)确定的区域内绘制一个指定颜色(color)的矩形
@参数说明：
    - xs：矩形左上角的横坐标，类型为unsigned char。
    - ys：矩形左上角的纵坐标，类型为unsigned char。
    - xe：矩形右下角的横坐标，类型为unsigned char。
    - ye：矩形右下角的纵坐标，类型为unsigned char。
    - color：矩形的颜色值，类型为unsigned short。
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_DrawRectangle(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned short color)
{

#ifdef TFT18
    TFTSPI_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef TFT20
    TFT2SPI_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef IPS114
    LCD_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef IPS130
    LCD_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef IPS154
    LCD_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef IPS200
    LCD_Draw_Rectangle(xs, ys, xe, ye, color);
#endif

#ifdef OLED
    OLED_Rectangle(xs, ys, xe, ye, 0);
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：以指定的坐标(x, y)为圆心，指定的半径(r)绘制一个指定颜色(color)的圆。
@参数说明：
    - x：圆心的横坐标，类型为unsigned char。
    - y：圆心的纵坐标，类型为unsigned char。
    - r：圆的半径，类型为unsigned char。
    - color：圆的颜色值，类型为unsigned short。
@函数返回：无
@备    注：画出的圆为空心圆
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
// 画圆
void Display_DrawCircle(unsigned char x, unsigned char y, unsigned char r, unsigned short color)
{

#ifdef TFT18
    TFTSPI_Draw_Circle(x, y, r, color);
#endif

#ifdef TFT20
    TFT2SPI_Draw_Circle(x, y, r, color);
#endif

#ifdef IPS114
    LCD_Draw_Circle(x, y, r, color);
#endif

#ifdef IPS130
    LCD_Draw_Circle(x, y, r, color);
#endif

#ifdef IPS154
    LCD_Draw_Circle(x, y, r, color);
#endif

#ifdef IPS200
    LCD_Draw_Circle(x, y, r, color);
#endif

}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：在由指定的左上角坐标(xs, ys)和右下角坐标(xe, ye)确定的区域内显示指定的图片(pic)
@参数说明：
    - xs：显示图片区域的左上角横坐标，类型为unsigned char。
    - ys：显示图片区域的左上角纵坐标，类型为unsigned char。
    - xe：显示图片区域的右下角横坐标，类型为unsigned char。
    - ye：显示图片区域的右下角纵坐标，类型为unsigned char。
    - pic：指向要显示图片数据的指针，类型为unsigned char *。
@函数返回：无
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/

void Display_Show(unsigned char xs, unsigned char ys, unsigned char xe, unsigned char ye, unsigned char *pic)
{

#ifdef TFT18
    TFTSPI_Road(xs, ys, xe, ye, (unsigned char *)pic);
#endif

#ifdef TFT20
    TFT2SPI_Show_Pic2(xs, ys, xe, ye, pic);
#endif

#ifdef IPS114
    LCDSPI_Road(xs, ys, xe, ye, (unsigned char *)pic);
#endif

#ifdef IPS130
    LCDSPI_Road(xs, ys, xe, ye, (unsigned char *)pic);
#endif

#ifdef IPS154
    LCDSPI_Road(xs, ys, xe, ye, (unsigned char *)pic);
#endif

#ifdef IPS200
    LCDSPI_Road(xs, ys, xe, ye, (unsigned char *)pic);

#endif

#ifdef OLED
    OLED_Show_BMP(xs, ys, xe, xe, pic);
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：在指定的坐标位置(x, y)以指定的前景色(fc)、背景色(bc)和字符大小(sizey)显示给定的汉字字符串(s)
@参数说明：
    - x：显示汉字的横坐标位置，类型为unsigned int。
    - y：显示汉字的纵坐标位置，类型为unsigned int。
    - s：指向要显示的汉字字符串的指针，类型为char *。
    - fc：前景色设置，类型为unsigned int。
    - bc：背景色设置，类型为unsigned int。
    - sizey：汉字在y方向上的大小设置，类型为unsigned char。
@函数返回：无
@备    注：只有LQ_Font.c中定义的汉字才可以调用，如果需要其他的汉字，请自行添加
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_ShowChinese(unsigned int x, unsigned int y, char *s, unsigned int fc, unsigned int bc, unsigned char sizey)
{

    //TFT屏幕由于像素点较少，所以字体大小只有12与16，这里加了限制
#ifdef TFT18
    if(sizey>=16) sizey=16;
    TFTSPI_P16x16Str((unsigned char)x, (unsigned char)y, (unsigned char *)s, (unsigned short)fc, (unsigned short)bc); // 字符串显示
    //    TFTSPI_P16x16Str((unsigned char)x, (unsigned char)y, s, (unsigned short)fc, (unsigned short)bc);
    //    TFTSPI_ShowStr((unsigned char)x, (unsigned char)y, s, (unsigned short)fc, (unsigned short)bc, sizey);

#endif

#ifdef TFT20
    if(sizey>=24) sizey=24;
    TFT2SPI_ShowStr((unsigned char)x, (unsigned char)y, s, (unsigned short)fc, (unsigned short)bc, sizey);
#endif

#ifdef IPS114
    LCD_ShowChinese(x, y, s, fc, bc, sizey);
#endif

#ifdef IPS130
    LCD_ShowChinese(x, y, s, fc, bc, sizey);
#endif

#ifdef IPS154
    LCD_ShowChinese(x, y, s, fc, bc, sizey);
#endif

#ifdef IPS200
    LCD_ShowChinese(x, y, s, fc, bc, sizey);
#endif

#ifdef OLED
//    OLED_Show_BMP(xs, ys, xe, xe, *pic);
//    OLED_P14x16Str((unsigned char)x, (unsigned char)y,(unsigned char)*s);      //显示汉字
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能显示：在指定的坐标位置(xs, ys)显示相应屏幕的logo
@参数说明：
    - xs：显示logo的横坐标位置，类型为unsigned char
    - ys：显示logo的纵坐标位置，类型为unsigned char
@函数返回：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Display_Show_Logo(unsigned char xs, unsigned char ys)
{

#ifdef TFT18
    TFTSPI_Show_Logo(xs, ys);
#endif

#ifdef TFT20
    TFT2SPI_Show_Logo(xs, ys);
#endif

#ifdef IPS114
    LCD_Show_Logo(xs, ys);
#endif

#ifdef IPS130
    LCD_Show_Logo(xs, ys);
#endif

#ifdef IPS154
    LCD_Show_Logo(xs, ys);
#endif

#ifdef IPS200
    LCD_Show_Logo(xs, ys);
#endif

#ifdef OLED
    OLED_Show_LQLogo();
#endif
}
/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@功能说明：用于测试屏幕相关功能的函数。首先进行屏幕初始化和清屏操作，然后在循环中不断更新并显示变量值、改变字符大小、显示logo、绘制图形（圆、线、矩形）等操作，以验证屏幕显示的各项功能是否正常工作。
@参数说明：无
@函数返回：无
@备    注：调用此函数可方便测试屏幕，这里也有常见屏幕函数的使用方法
需要去Main/config.h文件夹下面选择对应得屏幕型号，（默认IPS200）
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_Display(void)
{
    char txt[50];
    int count = 0;
    Display_Init();
    Delay_Ms(200);
    Display_CLS(U16_BLACK);
    Delay_Ms(100);
    unsigned char size = 12;
    while (1)
    {
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 1, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 2, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 3, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 4, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 5, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 6, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        sprintf(txt, "variate:%05d", count);                  // 将变量填充到字符串的对应位置，并将字符串存放到txt[]中
        Display_showString(0, 7, txt, U16_RED, U16_BLUE, size); // 将txt中 内容显示出来
        Delay_Ms(550);                                         // 延时等待
        Display_CLS(U16_WHITE);
        count++;
        if (size == 12)
            size = size + 4;
        else
            size = size + 8;
        if (size > 32)
            size = 12;

        Display_Show_Logo(50, 0);
        Display_DrawCircle(50, 50, 20, U16_BLUE);
        Display_DrawLine(80, 80, 20, 20, U16_BLUE);
        Display_DrawRectangle(10, 20, 30, 40, U16_BLUE);

        Delay_Ms(550); // 延时等待

        Display_CLS(U16_WHITE);
    }
}
