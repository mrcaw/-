#include "include.h"

unsigned char ReadBuff1[128]; // 串口1接收缓存
Position_t point_p;
_SaveData Save_Data;

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：int BD_getdata(Position_t *);
@功能说明：获取gps数据
@参数说明：无
@函数返回：无
@备    注：
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
int BD_getdata(Position_t *Current_Point)
{
    char *p;
    int a, b;
    char c;

    double X, Y;

    if ((p = strstr((const char *)ReadBuff1, "$BDRMC")) != NULL)
        sscanf(p, "$BDRMC,%d.%d,%c,%d.%d,%c,%d.%d,%c,", &a, &b, &c, &point_p.Lat_front, &point_p.Lat_back, &point_p.Lat_dir, &point_p.Lon_front, &point_p.Lon_back, &point_p.Lon_dir);
    else
        return 0; // 数据错误

    X = (double)point_p.Lat_front / 100;
    point_p.lat = X + (double)point_p.Lat_back / 10000000;
    Y = (double)point_p.Lon_front / 100;
    point_p.lon = Y + (double)point_p.Lon_back / 10000000;

    return 1;
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void parseGpsBuffer(void);
@功能说明：数据解析
@参数说明：无
@函数返回：无
@备    注：将串口收到的数据分门别类的保存到结构体中
@           $GNRMC,130416.000,A,2236.91843,N,11359.19128,E,0.001,306.28,090720,,,A*4F
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void parseGpsBuffer(void)
{
    char *subString;
    char *subStringNext;
    char i = 0;
    if (Save_Data.isGetData) // 如果字符串不为空
    {
        for (i = 0; i <= 6; i++) // 循环7次
        {
            if (i == 0)
            {
                if ((subString = strchr(Save_Data.GPS_Buffer, ',')) == NULL) // 没有检测到逗号
                    while (1)
                        ; // 解析错误
            }
            else // 检测到逗号，返回逗号的位置
            {
                subString++;                                          // 位置加1（定位到逗号的后一位）
                if ((subStringNext = strchr(subString, ',')) != NULL) // 定位下一个逗号的位置
                {
                    char usefullBuffer[2];
                    switch (i)
                    {
                    case 1:
                        memcpy(Save_Data.UTCTime, subString, subStringNext - subString); // 两个逗号之间为 时间信息 并转换成北京时间
                        Save_Data.UTCTime[1] = Save_Data.UTCTime[1] + 8;
                        if (Save_Data.UTCTime[1] > '9')
                        {
                            Save_Data.UTCTime[0]++;
                            if (Save_Data.UTCTime[0] == '3')
                                Save_Data.UTCTime[0] = '0';
                            Save_Data.UTCTime[1] = (Save_Data.UTCTime[1] % '9') + '0' - 1;
                        }
                        break; // 结束switch
                    case 2:
                        memcpy(usefullBuffer, subString, subStringNext - subString);
                        break; // 数据是否有效标志
                    case 3:
                        memcpy(Save_Data.latitude, subString, subStringNext - subString);
                        break; // 获取纬度信息
                    case 4:
                        memcpy(Save_Data.N_S, subString, subStringNext - subString);
                        break; // 获取N/S
                    case 5:
                        memcpy(Save_Data.longitude, subString, subStringNext - subString);
                        break; // 获取经度信息
                    case 6:
                        memcpy(Save_Data.E_W, subString, subStringNext - subString);
                        break; // 获取E/W
                    default:
                        break;
                    }
                    subString = subStringNext; // 下一个逗号位置给第一个指针，
                    Save_Data.isParseData = 1; // 手动给真值，（数据是否解析完成）
                }
                else
                {
                    while (1)
                        ; // 解析错误
                }
            }
        }
    }
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：char Get_IntData(int* Lon_Z, int* Lon_X, int* Lat_Z, int* Lat_X);
@功能说明：经纬度原始值
@参数说明：Lon_Z（经度整数），Lon_X（经度小数），Lat_Z（纬度整数）,Lat_X（纬度小数）
@函数返回：无
@备    注：将结构体中的字符串转换成数据，有两种方式，#if 1：以小数点为分界。#if 0：自己手动调节
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
char Get_IntData(int *Lon_Z, int *Lon_X, int *Lat_Z, int *Lat_X)
{
#if 1
    // 判断纬度值中是否有‘.'有:说明有数据 例如：3946.99715  变化范围在后六位中变化，最后一位不稳定可舍去。取值为3946和99715
    if ((strstr(Save_Data.latitude, ".")) != NULL)
    {
        sscanf(Save_Data.latitude, "%d.%d", &(*Lat_Z), &(*Lat_X));
    }
    else
        return 0;
    // 经度原理同上 例如：11628.32198  取值为11628 和 32198
    if ((strstr(Save_Data.longitude, ".")) != NULL)
    {
        sscanf(Save_Data.longitude, "%d.%d", &(*Lon_Z), &(*Lon_X));
    }
    else
        return 0;
    return 1;
#else
    unsigned num = 0;
    // 判断纬度值中是否有‘.'有:说明有数据 例如：3946.99715  变化范围在后六位中变化，最后一位不稳定可舍去。
    if ((strstr(Save_Data.latitude, ".")) != NULL)
    {
        *Lat_Z = (Save_Data.latitude[0] - '0') * 100 + (Save_Data.latitude[1] - '0') * 10 + (Save_Data.latitude[2] - '0');
        num = (Save_Data.latitude[3] - '0') * 100000 + (Save_Data.latitude[5] - '0') * 10000 + (Save_Data.latitude[6] - '0') * 1000 +
              (Save_Data.latitude[7] - '0') * 100 + (Save_Data.latitude[8] - '0') * 10 + (Save_Data.latitude[9] - '0');
        *Lat_X = num; // 取值为394 和 699715
    }
    else
        return 0;
    // 经度原理同上 例如：11628.32198
    if ((strstr(Save_Data.longitude, ".")) != NULL)
    {
        *Lon_Z = (Save_Data.longitude[0] - '0') * 1000 + (Save_Data.longitude[1] - '0') * 100 +
                 (Save_Data.longitude[2] - '0') * 10 + (Save_Data.longitude[3] - '0');
        num = (Save_Data.longitude[4] - '0') * 100000 + (Save_Data.longitude[6] - '0') * 10000 + (Save_Data.longitude[7] - '0') * 1000 +
              (Save_Data.longitude[8] - '0') * 100 + (Save_Data.longitude[9] - '0') * 10 + (Save_Data.longitude[10] - '0');
        *Lon_X = num; // 取值为1162 和 832198
    }
    else
        return 0;
    return 1;
#endif
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：char Get_DoubleData(double* Lon, double* Lat)
@功能说明：经纬度字符串转化成浮点数
@参数说明：Lon（经度），Lat_Z（纬度整数）,Lat_X（纬度小数）
@函数返回：0:转化失败 1：转化成功
@备    注：将结构体中的字符串转换成数据，有两种方式，#if 1：以小数点为分界。#if 0：自己手动调节
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
char Get_DoubleData(double *Lon, double *Lat)
{
    double W, J;
    //  //判断纬度值中是否有‘.'有:说明有数据 例如：3946.99715  变化范围在后六位中变化，最后一位不稳定可舍去。取值为3946和99715
    //  if((strstr(Save_Data.latitude, ".")) != NULL)
    //  {
    //    sscanf(Save_Data.latitude, "%d.%d",&(* Lat_Z), &(* Lat_X));
    //  }
    //  else
    //    return 0;
    //  //经度原理同上 例如：11628.32198  取值为11628 和 32198
    //  if((strstr(Save_Data.longitude, ".")) != NULL)
    //  {
    //    sscanf(Save_Data.longitude, "%d.%d",&(* Lon_Z), &(* Lon_X));
    //  }
    //  else
    //    return 0;
    //  return 1;
    J = strtod(Save_Data.longitude, NULL);
    W = strtod(Save_Data.latitude, NULL);
    if (W == 0.0)
        return 0;
    else
        *Lon = J / 100.0;
    if (J == 0.0)
        return 0;
    else
        *Lat = W / 100.0;
    return 1;
}

void Test_BD(void)
{
    char txt[32];
    int Lon_IZ = 0, Lon_IX = 0, Lat_IZ = 0, Lat_IX = 0;
    double Lon = 0.0, Lat = 0.0;
    GPIO_LED_Init();    //LED初始化
    Display_Init();        // LCD初始化
    Display_CLS(U16_BLACK);    // 黑色屏幕
    Display_showString(0, 0, "BD Test", U16_WHITE, U16_BLACK, 16);

    UART_InitConfig(UART0_RX_P14_1, UART0_TX_P14_0, 115200); // 发送数据到上位机
    UART_InitConfig(UART1_RX_P15_5, UART1_TX_P15_0, 115200); // 接收北斗模块坐标

//在config.h里面配置自己的屏幕参数，然后需要吧BD的读取函数，放在UART1读取中断里面,串口中断在irq.c里面
//北斗读取函数BD_Read();


    while (1) // 主循环
    {
        parseGpsBuffer();

        sprintf(txt, "T:%s", Save_Data.UTCTime);
        Display_showString(0, 1, txt, U16_WHITE, U16_BLACK, 16); // 时间

        sprintf(txt, "N:%s", Save_Data.latitude); // 纬度原始值
        Display_showString(0, 2, txt, U16_WHITE, U16_BLACK, 16);
        sprintf(txt, "E:%s", Save_Data.longitude); // 经度原始值
        Display_showString(0, 3, txt, U16_WHITE, U16_BLACK, 16);
        printf("N:%s\nE:%s\n", Save_Data.latitude, Save_Data.longitude);

        if (Get_IntData(&Lon_IZ, &Lon_IX, &Lat_IZ, &Lat_IX) == 0) // 获取原始经纬度值
        {
            Lon_IZ = 0;
            Lon_IX = 0;
            Lat_IZ = 0;
            Lat_IX = 0;
        }
        sprintf(txt, "N:%d.%d", Lat_IZ, Lat_IX); // 转化成数据
        Display_showString(0, 4, txt, U16_WHITE, U16_BLACK, 16);
        sprintf(txt, "E:%d.%d", Lon_IZ, Lon_IX); // 数据
        Display_showString(0, 5, txt, U16_WHITE, U16_BLACK, 16);


        if (Get_DoubleData(&Lon, &Lat) == 0) // 获取原始经纬度值
        {
            Lon = 0.0;
            Lat = 0.0;
        }
        sprintf(txt, "N:%f", Lat); // 转化成数据
        Display_showString(0, 6, txt, U16_WHITE, U16_BLACK, 16);
        sprintf(txt, "E:%f", Lon); // 数据
        Display_showString(0, 7, txt, U16_WHITE, U16_BLACK, 16);


        Delay_Ms(100);

    }
}
void BD_Read(void)
{
    static int num1;
    char buf = UART_GetChar(UART1);

    if (buf == '\n' || buf == '\r')
    {
        strcpy((char *)Save_Data.GPS_Buffer, (const char *)ReadBuff1);
        Save_Data.isGetData = 1;
        num1 = 0;
        LED_Ctrl(LED1, RVS); // LED翻转闪烁
    }
    else
    {
        LED_Ctrl(LED0, RVS); // LED翻转闪烁
        ReadBuff1[num1++] = buf;
    }
}
