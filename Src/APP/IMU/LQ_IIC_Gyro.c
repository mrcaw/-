#include "include.h"
signed short aac_x, aac_y, aac_z;    // 加速度传感器原始数据
signed short gyro_x, gyro_y, gyro_z; // 陀螺仪原始数据

#define MPU6050_ADDR 0x68 // IIC写入时的地址字节数据，+1为读取

unsigned char IIC_ICM20602 = 0;
unsigned char IIC_ICM20689 = 0;
unsigned char IIC_MPU9250 = 0;
unsigned char IIC_ICM42605 = 0;
unsigned char IIC_ICM42688 = 0;
unsigned char IIC_MPU6050 = 0;
unsigned char IIC_errorid = 0;

unsigned char Gyro_ID = 0;

/**
 * @brief   读取陀螺仪的设备ID
 *
 * @param   void
 *
 * @retur   void
 *
 * @note
 *
 * @see      Gyro_Chose();
 *
 * @date     2021/7/12 星期一
 */
unsigned char Gyro_Chose(void)
{
    Gyro_ID = MPU_Read_Byte(MPU6050_ADDR, WHO_AM_I);
    switch (Gyro_ID)
    {
    case 0x12:
        IIC_ICM20602 = 1;
        break;
    case 0x71:
        IIC_MPU9250 = 1;
        break;
    case 0x98:
        IIC_ICM20689 = 1;
        break;
    case 0x42:
        IIC_ICM42605 = 1;
        break;
    case 0x47:
        IIC_ICM42688 = 1;
        break;
    case 0x68:
        IIC_MPU6050 = 1;
        break;
    default:
        IIC_errorid = 1;
        return 0;
    }
    return Gyro_ID;
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
 【函数名】void Test_IIC_Gyro(void)
 【功  能】测试陀螺仪模块
 【参数值】无
 【返回值】无
 【作  者】LQ Guo
 【最后更新】2022年11月6日
 【软件版本】V1.82
 【调用样例】 Test_IIC_Gyro();
   检测陀螺仪加速度计模块
   型号：6050 20602 20689 9250 42605（AD0接GND）自动识别
 IIC接口 SCK-B10 SDA-B11
 QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Test_IIC_Gyro(void)
{
    unsigned char res;
    char txt[30];
    signed short aacx, aacy, aacz;    // 加速度传感器原始数据
    signed short gyrox, gyroy, gyroz; // 陀螺仪原始数据
    short magx, magy, magz;           // 地磁原始数据
    GPIO_LED_Init();                  // LED初始化
    Display_Init();                   // 屏幕初始化
    Display_CLS(U16_BLACK);
    Display_showString(2, 0, "LQ IMU Test", U16_WHITE, U16_BLACK, 16); // 字符串显示

    IIC_Init(); // IIC初始化//IIC初始化
    Delay_Ms(100);
    res = Gyro_Chose(); // 判断陀螺仪型号
    sprintf(txt, "ID:0X%2x", res);
    Display_showString(0, 1, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示

    IIC_Gyro_init();

    while (1)
    {
        MPU_Get_Raw_data(&aacx, &aacy, &aacz, &gyrox, &gyroy, &gyroz); // 得到加速度传感器数据
        if (IIC_MPU9250)
            MPU9250_Get_Magnetometer(&magx, &magy, &magz);

        sprintf((char *)txt, "ax:%06d", aacx);
        Display_showString(1, 2, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        sprintf((char *)txt, "ay:%06d", aacy);
        Display_showString(1, 3, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        sprintf((char *)txt, "az:%06d", aacz);
        Display_showString(1, 4, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        sprintf((char *)txt, "gx:%06d", gyrox);
        Display_showString(1, 5, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        sprintf((char *)txt, "gy:%06d", gyroy);
        Display_showString(1, 6, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        sprintf((char *)txt, "gz:%06d", gyroz);
        Display_showString(1, 7, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示

        if (IIC_MPU9250)
        {
            sprintf((char *)txt, "gx:%06d", magx);
            Display_showString(1, 8, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
            sprintf((char *)txt, "gy:%06d", magy);
            Display_showString(1, 9, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
            sprintf((char *)txt, "gz:%06d", magz);
            Display_showString(1, 10, txt, U16_WHITE, U16_BLACK, 16); // 字符串显示
        }

        Delay_Ms(30);
    }
}
/**
 * @brief    初始化MPU6050 或者 ICM20602
 *
 * @param    无
 *
 * @return   0：初始化成功   1：失败
 *
 * @note     使用前先初始化IIC接口
 *
 * @see      MPU6050_Init();
 *
 * @date     2019/6/12 星期三
 */
unsigned char IIC_Gyro_init(void)
{
    int res;
    if (IIC_ICM42605 || IIC_ICM42688)
    {
        MPU_Write_Byte(MPU6050_ADDR, device_config_reg,
                       bit_soft_reset_chip_config); // chip soft reset
        Delay_Ms(10);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x01); // Change to bank 1
        MPU_Write_Byte(MPU6050_ADDR, intf_config4, 0x03); // 4 wire spi mode  四线SPI  默认值0x03
        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        MPU_Write_Byte(MPU6050_ADDR, fifo_config_reg, 0x40); // Stream-to-FIFO Mode  陀螺仪Y轴陷波滤波器的频率选择

        res = MPU_Read_Byte(MPU6050_ADDR, int_source0_reg);
        MPU_Write_Byte(MPU6050_ADDR, int_source0_reg, 0x00);
        MPU_Write_Byte(MPU6050_ADDR, fifo_config2_reg, 0x00); // watermark
        MPU_Write_Byte(MPU6050_ADDR, fifo_config3_reg, 0x02); // watermark
        MPU_Write_Byte(MPU6050_ADDR, int_source0_reg, (unsigned char)res);
        MPU_Write_Byte(MPU6050_ADDR, fifo_config1_reg, 0x63); // Enable the accel and gyro to the FIFO

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        MPU_Write_Byte(MPU6050_ADDR, int_config_reg, 0x36);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = (MPU_Read_Byte(MPU6050_ADDR, int_source0_reg) | bit_int_fifo_ths_int1_en);
        MPU_Write_Byte(MPU6050_ADDR, int_source0_reg, (unsigned char)res);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = ((MPU_Read_Byte(MPU6050_ADDR, accel_config0_reg) & 0x1F) | (bit_accel_ui_fs_sel_8g)); // 8g
        MPU_Write_Byte(MPU6050_ADDR, accel_config0_reg, (unsigned char)res);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = ((MPU_Read_Byte(MPU6050_ADDR, accel_config0_reg) & 0xF0) | bit_accel_odr_50hz);
        MPU_Write_Byte(MPU6050_ADDR, accel_config0_reg, (unsigned char)res);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = ((MPU_Read_Byte(MPU6050_ADDR, gyro_config0_reg) & 0x1F) | (bit_gyro_ui_fs_sel_1000dps));
        MPU_Write_Byte(MPU6050_ADDR, gyro_config0_reg, (unsigned char)res);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = ((MPU_Read_Byte(MPU6050_ADDR, gyro_config0_reg) & 0xF0) | bit_gyro_odr_50hz);
        MPU_Write_Byte(MPU6050_ADDR, gyro_config0_reg, (unsigned char)res);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = MPU_Read_Byte(MPU6050_ADDR, pwr_mgmt0_reg) | (bit_accel_mode_ln); // Accel on in LNM
        MPU_Write_Byte(MPU6050_ADDR, pwr_mgmt0_reg, (unsigned char)res);
        Delay_Ms(1);

        MPU_Write_Byte(MPU6050_ADDR, reg_bank_sel, 0x00);
        res = MPU_Read_Byte(MPU6050_ADDR, pwr_mgmt0_reg) | (bit_gyro_mode_ln); // Gyro on in LNM
        MPU_Write_Byte(MPU6050_ADDR, pwr_mgmt0_reg, (unsigned char)res);
        Delay_Ms(1);
        return 0;
    }
    else
    {
        res = MPU_Read_Byte(MPU6050_ADDR, WHO_AM_I); // 读取MPU6050的ID
        if (res != Gyro_ID)                          // 器件ID正确
            return 1;

        res = 0;
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_PWR_MGMT1_REG, 0X80); // 复位MPU6050
        Delay_Ms(100);                                                // 延时100ms
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_PWR_MGMT1_REG, 0X00); // 唤醒MPU6050
        res += MPU_Set_Gyro_Fsr(3);                                   // 陀螺仪传感器,±2000dps
        res += MPU_Set_Accel_Fsr(1);                                  // 加速度传感器,±4g
        res += MPU_Set_Rate(1000);                                    // 设置采样率1000Hz
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_CFG_REG, 0x02);       // 设置数字低通滤波器   98hz
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_INT_EN_REG, 0X00);    // 关闭所有中断
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_USER_CTRL_REG, 0X00); // I2C主模式关闭
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_PWR_MGMT1_REG, 0X01); // 设置CLKSEL,PLL X轴为参考
        res += MPU_Write_Byte(MPU6050_ADDR, MPU_PWR_MGMT2_REG, 0X00); // 加速度与陀螺仪都工作
        if (IIC_MPU9250)
        {
            MPU_Write_Byte(MPU6050_ADDR, MPU_FIFO_EN_REG, 0X00);   // 关闭FIFO
            MPU_Write_Byte(MPU6050_ADDR, MPU_INTBP_CFG_REG, 0X82); // INT引脚低电平有效，开启bypass模式
            res = MPU_Read_Byte(AK8963_ADDR, MPU_MAG_WIA);         // 读取MPU9250的ID
            if (res == AK8963_ID)                                  // 器件ID正确
            {
                MPU_Write_Byte(AK8963_ADDR, MPU_MAG_CNTL2_REG, 0X01); // 软件重置
                Delay_Ms(100);
                MPU_Write_Byte(AK8963_ADDR, MPU_MAG_CNTL1_REG, 0X16); // 设置为单次模式，输出16bit
            }
        }
        return 0;
    }
}

/**
 * @brief    设置陀螺仪测量范围
 *
 * @param    fsr:0,±250dps;1,±500dps;2,±1000dps;3,±2000dps
 *
 * @return   0 ：设置成功
 *
 * @note     无
 *
 * @see      MPU_Set_Gyro_Fsr(3);        //陀螺仪传感器,±2000dps
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Set_Gyro_Fsr(unsigned char fsr)
{
    return MPU_Write_Byte(MPU6050_ADDR, MPU_GYRO_CFG_REG, fsr << 3);
}

/**
 * @brief    设置加速度计测量范围
 *
 * @param    fsr:0,±2g;1,±4g;2,±8g;3,±16g
 *
 * @return   0：设置成功
 *
 * @note     无
 *
 * @see      MPU_Set_Accel_Fsr(1);       //加速度传感器,±4g
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Set_Accel_Fsr(unsigned char fsr)
{
    return MPU_Write_Byte(MPU6050_ADDR, MPU_ACCEL_CFG_REG, fsr << 3);
}

/**
 * @brief    设置数字低通滤波
 *
 * @param    lpf:数字低通滤波频率(Hz)
 *
 * @return   0：设置成功
 *
 * @note     无
 *
 * @see      MPU_Set_LPF(100);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Set_LPF(uint16 lpf)
{
    unsigned char dat = 0;
    if (lpf >= 188)
        dat = 1;
    else if (lpf >= 98)
        dat = 2;
    else if (lpf >= 42)
        dat = 3;
    else if (lpf >= 20)
        dat = 4;
    else if (lpf >= 10)
        dat = 5;
    else
        dat = 6;
    return MPU_Write_Byte(MPU6050_ADDR, MPU_CFG_REG, dat); // 设置数字低通滤波器
}

/**
 * @brief    设置采样率
 *
 * @param    rate:4~1000(Hz)
 *
 * @return   0：设置成功
 *
 * @note     无
 *
 * @see      MPU_Set_Rate(1000);              //设置采样率1000Hz
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Set_Rate(uint16 rate)
{
    unsigned char dat;
    if (rate > 1000)
        rate = 1000;
    if (rate < 4)
        rate = 4;
    dat = 1000 / rate - 1;
    MPU_Write_Byte(MPU6050_ADDR, MPU_SAMPLE_RATE_REG, dat); // 设置数字低通滤波器
    return MPU_Set_LPF(rate / 2);                           // 自动设置LPF为采样率的一半
}

/**
 * @brief    获取温度值
 *
 * @param    无
 *
 * @return   温度值(扩大了100倍)
 *
 * @note     无
 *
 * @see      signed short temp = MPU_Get_Temperature();
 *
 * @date     2019/6/12 星期三
 */
short MPU_Get_Temperature(void)
{
    unsigned char buf[2];
    short raw;
    float temp;
    MPU_Read_Len(MPU6050_ADDR, MPU_TEMP_OUTH_REG, 2, buf);
    raw = ((uint16)buf[0] << 8) | buf[1];
    temp = 21 + ((double)raw) / 333.87;
    return (short)temp * 100;
}

/**
 * @brief    获取磁力计值
 *
 * @param    mx,my,mz:磁力计仪x,y,z轴的原始读数(带符号)
 *
 * @return   0：读取成功
 *
 * @note     无
 *
 * @see      signed short data[3];
 * @see      MPU9250_Get_Magnetometer(&data[0], &data[1], &data[2]);
 *
 * @date     2020/12/15 星期二
 */
unsigned char MPU9250_Get_Magnetometer(short *mx, short *my, short *mz)
{
    unsigned char buf[6], res;
    res = MPU_Read_Len(AK8963_ADDR, MPU_MAG_XOUTL_REG, 6, buf);
    if (res == 0)
    {
        *mx = ((uint16_t)buf[1] << 8) | buf[0];
        *my = ((uint16_t)buf[3] << 8) | buf[2];
        *mz = ((uint16_t)buf[5] << 8) | buf[4];
    }
    MPU_Read_Byte(AK8963_ADDR, MPU_MAG_ST2_REG);
    return res;
}

/**
 * @brief    获取陀螺仪值
 *
 * @param    gx,gy,gz:陀螺仪x,y,z轴的原始读数(带符号)
 *
 * @return   0：读取成功
 *
 * @note     无
 *
 * @see      signed short data[3];
 * @see      MPU_Get_Gyroscope(&data[0], &data[1], &data[2]);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Get_Gyroscope(signed short *gx, signed short *gy,
                                signed short *gz)
{
    unsigned char buf[6], res;
    res = MPU_Read_Len(MPU6050_ADDR, MPU_GYRO_XOUTH_REG, 6, buf);
    if (res == 0)
    {
        *gx = ((uint16)buf[0] << 8) | buf[1];
        *gy = ((uint16)buf[2] << 8) | buf[3];
        *gz = ((uint16)buf[4] << 8) | buf[5];
    }
    return res;
}

/**
 * @brief    获取加速度值
 *
 * @param    ax,ay,az:陀螺仪x,y,z轴的原始读数(带符号)
 *
 * @return   0：读取成功
 *
 * @note     无
 *
 * @see      signed short data[3];
 * @see      MPU_Get_Accelerometer(&data[0], &data[1], &data[2]);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Get_Accelerometer(signed short *ax, signed short *ay,
                                    signed short *az)
{
    unsigned char buf[6], res;
    res = MPU_Read_Len(MPU6050_ADDR, MPU_ACCEL_XOUTH_REG, 6, buf);
    if (res == 0)
    {
        *ax = ((uint16)buf[0] << 8) | buf[1];
        *ay = ((uint16)buf[2] << 8) | buf[3];
        *az = ((uint16)buf[4] << 8) | buf[5];
    }
    return res;
}

/**
 * @brief    获取 加速度值 角速度值
 *
 * @param    ax,ay,az:陀螺仪x,y,z轴的原始读数(带符号)
 * @param    gx,gy,gz:陀螺仪x,y,z轴的原始读数(带符号)
 *
 * @return   0：读取成功
 *
 * @note     无
 *
 * @see      signed short data[6];
 * @see      MPU_Get_Raw_data(&data[0], &data[1], &data[2],&data[3], &data[4], &data[5]);
 *
 */
unsigned char MPU_Get_Raw_data(signed short *ax, signed short *ay,
                               signed short *az, signed short *gx, signed short *gy, signed short *gz)
{
    if (IIC_ICM42605 || IIC_ICM42688)
    {
        unsigned char buf[14], res;
        res = MPU_Read_Len(MPU6050_ADDR, ICM42605_ACCEL_XOUTH_REG, 12, buf);
        if (res == 0)
        {
            *ax = ((uint16)buf[0] << 8) | buf[1];
            *ay = ((uint16)buf[2] << 8) | buf[3];
            *az = ((uint16)buf[4] << 8) | buf[5];
            *gx = ((uint16)buf[6] << 8) | buf[7];
            *gy = ((uint16)buf[8] << 8) | buf[9];
            *gz = ((uint16)buf[10] << 8) | buf[11];
        }
        return res;
    }
    else
    {
        unsigned char buf[14], res;

        res = MPU_Read_Len(MPU6050_ADDR, MPU_ACCEL_XOUTH_REG, 14, buf);
        if (res == 0)
        {
            *ax = ((uint16)buf[0] << 8) | buf[1];
            *ay = ((uint16)buf[2] << 8) | buf[3];
            *az = ((uint16)buf[4] << 8) | buf[5];
            *gx = ((uint16)buf[8] << 8) | buf[9];
            *gy = ((uint16)buf[10] << 8) | buf[11];
            *gz = ((uint16)buf[12] << 8) | buf[13];
        }
        return res;
    }
}

/**
 * @brief    IIC 连续读
 *
 * @param    addr:器件地址
 * @param    reg :要读取的寄存器地址
 * @param    len :要读取的长度
 * @param    buf :读取到的数据存储区
 *
 * @return   0 ：读取成功
 *
 * @note     底层驱动 移植时需要修改
 *
 * @see      unsigned char buf[14];
 * @see      MPU_Read_Len(MPU6050_ADDR,MPU_ACCEL_XOUTH_REG,14,buf);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Read_Len(unsigned char addr, unsigned char reg,
                           unsigned char len, unsigned char *buf)
{
    return IIC_ReadMultByteFromSlave(addr << 1, reg, len, buf);
}

/**
 * @brief    IIC 连续写
 *
 * @param    addr:器件地址
 * @param    reg :要写入的寄存器地址
 * @param    len :要写入的长度
 * @param    buf :写入到的数据存储区
 *
 * @return   0 ：写入成功
 *
 * @note     底层驱动 移植时需要修改
 *
 * @see      unsigned char buf[14];
 * @see      MPU9250_Write_Len(MPU9250_ADDR,MPU_ACCEL_XOUTH_REG,14,buf);
 *
 * @date     2021/7/1 星期四
 */
unsigned char MPU_Write_Len(unsigned char addr, unsigned char reg,
                            unsigned char len, unsigned char *buf)
{
    return IIC_WriteMultByteToSlave(addr << 1, reg, len, buf);
}

/**
 * @brief    IIC 写一个寄存器
 *
 * @param    addr  :器件地址
 * @param    reg   :寄存器地址
 * @param    value :要写入的值
 *
 * @return   0 ：读取成功
 *
 * @note     底层驱动 移植时需要修改
 *
 * @see      MPU_Write_Byte(MPU6050_ADDR,MPU_SAMPLE_RATE_REG,1);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Write_Byte(unsigned char addr, unsigned char reg,
                             unsigned char value)
{
    return IIC_WriteByteToSlave(addr << 1, reg, value);
}

/**
 * @brief    IIC 读一个寄存器
 *
 * @param    addr  :器件地址
 * @param    reg   :寄存器地址
 *
 * @return   读取的值
 *
 * @note     底层驱动 移植时需要修改
 *
 * @see      MPU_Read_Byte(MPU6050_ADDR,WHO_AM_I);
 *
 * @date     2019/6/12 星期三
 */
unsigned char MPU_Read_Byte(unsigned char addr, unsigned char reg)
{
    unsigned char value[1];
    MPU_Read_Len(addr, reg, 1, value);
    return value[0];
}
