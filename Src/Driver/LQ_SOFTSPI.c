#include "include.h"
#include "LQ_SOFTSPI.h"

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Soft_SPI_Init(void)
@功能说明：模拟SPI初始化
@参数说明：无
@函数返回：无
@调用方法：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Soft_SPI_Init(void)
{
    PIN_InitConfig(Soft_SPI_SCK_PIN, PIN_MODE_OUTPUT, 1);
    PIN_InitConfig(Soft_SPI_MISO_PIN, PIN_MODE_INPUT, 0);
    PIN_InitConfig(Soft_SPI_MOSI_PIN, PIN_MODE_OUTPUT, 1);
    PIN_InitConfig(Soft_SPI_CS_PIN, PIN_MODE_OUTPUT, 0);
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void Soft_SPI_ReadWriteNbyte(uint8_t *lqbuff, uint8_t len)
@功能说明：模拟SPI读写数据及长度
@参数说明：uint8_t *buf数据指针,u16 len长度
@函数返回：无
@调用方法：SPI_Read_Nbytes(SPI1,reg|0x80,buf,len);
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void Soft_SPI_ReadWriteNbyte(uint8_t *lqbuff, uint8_t len)
{
    uint8_t i;

    Soft_SPI_CS_OUT_L;
    Soft_SPI_SCK_OUT_H;
    do
    {
        for (i = 0; i < 8; i++)
        {
            if ((*lqbuff) >= 0x80)
                Soft_SPI_MOSI_OUT_H;
            else
                Soft_SPI_MOSI_OUT_L;
            Soft_SPI_SCK_OUT_L;
            (*lqbuff) <<= 1;
            Soft_SPI_SCK_OUT_H;
            (*lqbuff) |= Soft_SPI_MISO_IN;
        }
        lqbuff++;
    } while (--len);
    Soft_SPI_CS_OUT_H;
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void LQ_SPI_Read(unsigned char reg, unsigned short len, unsigned char* buf)
@功能说明：SPI从设备读取数据
@参数说明：unsigned char reg,设备起始地址unsigned char* buf,数据存放地址unsigned short len,待写入的数据长度
@函数返回：无
@调用方法：SPI_Read_Nbytes(SPI1,reg|0x80,buf,len);
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void LQ_SPI_Read(unsigned char reg, unsigned short len, unsigned char *buf)
{
    unsigned short i;
    buf[0] = reg | 0x80;
    Soft_SPI_ReadWriteNbyte(buf, len + 1);
    for (i = 0; i < len; i++)
        buf[i] = buf[i + 1];
}

/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@函数名称：void LQ_SPI_Write(unsigned char reg, unsigned short len, unsigned char* buf)
@功能说明：SPI向设备写入数据
@参数说明：unsigned char reg,设备起始地址unsigned char* buf,数据存放地址unsigned short len,待写入的数据长度
@函数返回：无
@调用方法：无
@备    注：无
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/
void LQ_SPI_Write(unsigned char reg, unsigned char value)
{
    unsigned char buff[2];

    buff[0] = reg & 0x7f; // 先发送寄存器
    buff[1] = value;      // 再发送数据
    Soft_SPI_ReadWriteNbyte(buff, 2);
}
