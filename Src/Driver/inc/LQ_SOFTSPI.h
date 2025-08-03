#ifndef __LQ_Soft_SPI_H_
#define __LQ_Soft_SPI_H_

//                   单片机    龙邱模块
#define Soft_SPI_SCK_PIN P15_3  // SCK
#define Soft_SPI_MISO_PIN P15_5 // 单片机MISO接模块的--SDO
#define Soft_SPI_MOSI_PIN P15_7 // 单片机MOSI接模块的--SDI
#define Soft_SPI_CS_PIN P15_2   // CS

#define Soft_SPI_SCK_OUT_H PIN_Write(Soft_SPI_SCK_PIN, 1) // 配置输出高电平
#define Soft_SPI_SCK_OUT_L PIN_Write(Soft_SPI_SCK_PIN, 0) // 配置输出低电平

#define Soft_SPI_MISO_IN PIN_Read(Soft_SPI_MISO_PIN) // 读取引脚上的引脚状态

#define Soft_SPI_MOSI_OUT_H PIN_Write(Soft_SPI_MOSI_PIN, 1) // 配置输出高电平
#define Soft_SPI_MOSI_OUT_L PIN_Write(Soft_SPI_MOSI_PIN, 0) // 配置输出低电平

#define Soft_SPI_CS_OUT_H PIN_Write(Soft_SPI_CS_PIN, 1) // 配置输出高电平
#define Soft_SPI_CS_OUT_L PIN_Write(Soft_SPI_CS_PIN, 0) // 配置输出低电平

void Soft_SPI_Init(void);
void Soft_SPI_ReadWriteNbyte(unsigned char *lqbuff, unsigned char len);
void LQ_SPI_Read(unsigned char reg, unsigned short len, unsigned char *buf);
void LQ_SPI_Write(unsigned char reg, unsigned char value);
#endif
