#ifndef _LQ_BD_H_
#define _LQ_BD_H_

typedef enum
{
    N = 0,
    S
} lat;
typedef enum
{
    E = 0,
    W
} lon;

typedef struct
{
    char Lon_dir;
    char Lat_dir;
    int32_t Lon_front;
    int32_t Lon_back;
    int32_t Lat_front;
    int32_t Lat_back;
    double lon; // 坐标值ֵ
    double lat;
} Position_t;

typedef struct SaveData
{
    char GPS_Buffer[128]; // 完整数据
    char isGetData;       // 是否获取到GPS数据
    char isParseData;     // 是否解析完成
    char UTCTime[11];     // UTC时间
    char latitude[11];    // 纬度
    char N_S[2];          // N/S
    char longitude[12];   // 经度
    char E_W[2];          // E/W
    char isUsefull;       // 定位信息是否有效
} _SaveData;

extern _SaveData Save_Data;
extern Position_t point_p;
extern unsigned char ReadBuff1[128]; // 串口1接收缓存
char Get_DoubleData(double *Lon, double *Lat);
char Get_IntData(int *Lon_Z, int *Lon_X, int *Lat_Z, int *Lat_X);
int BD_getdata(Position_t *Current_Point);
void Test_BD(void);
void parseGpsBuffer(void);
void BD_Read(void);

#endif
