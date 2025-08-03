#include "LQ_EEPROM.h"
#include "include.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Test_EEPROM(void)
@功能说明：测试演示
@参数说明：无
@函数返回：无
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_EEPROM(void)
{
    int i;

    GPIO_LED_Init();
    Display_Init();        // LCD初始化
    Display_CLS(U16_BLACK);    // 黑色屏幕
    Display_showString(0, 0, "eeprom Test", U16_WHITE, U16_BLACK, 16);

    unsigned long u32wBuff[24];
    unsigned long u32rBuff[24];
    float f32wBuff[24];
    float f32rBuff[24];

    /* 赋值 */
    for (i = 0; i < 24; i++)
    {
        u32wBuff[i] = i * 100;
        f32wBuff[i] = i * 2.5f;
    }

    EEPROM_EraseSector(0);
    EEPROM_EraseSector(1);
    Display_showString(0, 1, "eeporm u write",U16_WHITE, U16_BLACK, 16);
    /* 写入 */
    EEPROM_Write(0, 0, u32wBuff, 24);
    Display_showString(0, 2, "eeporm f write", U16_WHITE, U16_BLACK, 16);
    EEPROM_Write(1, 0, (unsigned long *)f32wBuff, 24);
    Display_showString(0, 3, "eeporm u read", U16_WHITE, U16_BLACK, 16);
    /* 读出 */
    EEPROM_Read(0, 0, u32rBuff, 24);
    Display_showString(0, 4, "eeporm f read", U16_WHITE, U16_BLACK, 16);
    EEPROM_Read(1, 0, (unsigned long *)f32rBuff, 24);
    /* 比较 */
    for (i = 0; i < 24; i++)
    {
        if (u32wBuff[i] != u32rBuff[i])
        {
            Display_showString(0, 5, "u32error", U16_WHITE, U16_BLACK, 16);
        }
        if (f32wBuff[i] != f32rBuff[i])
        {
            Display_showString(0, 6, "ferror", U16_WHITE, U16_BLACK, 16);
        }
    }
    Display_showString(0, 7, "eeprom is ok", U16_WHITE, U16_BLACK, 16);
#pragma warning 557 // 屏蔽警告
    while (1)
        ;
#pragma warning default // 打开警告
}
