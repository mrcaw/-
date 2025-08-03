#ifndef __LQ_MT9V034_AUX_H_
#define __LQ_MT9V034_AUX_H_

/* 摄像头使用SCCB通信 SCCB和IIC基本类似 */
#define MT9V034_SCL_PIN_AUX                       P11_12  // SCCB SCL 管脚
#define MT9V034_SDA_PIN_AUX                       P11_11  // SCCB SDA 管脚

#define MT9V034_SCL_Out_AUX                       PIN_Dir(MT9V034_SCL_PIN_AUX, 1)    // 配置输出作为SCL_Out
#define MT9V034_SDA_Out_AUX                       PIN_Dir(MT9V034_SDA_PIN_AUX, 1)    // 配置作为输出作为SDA_Out
#define MT9V034_SDA_In_AUX                        PIN_Dir(MT9V034_SDA_PIN_AUX, 0)    // 配置作为输入作为SDA_In
#define MT9V034_SCL_High_AUX                      PIN_Write(MT9V034_SCL_PIN_AUX, 1)  // 配置输出高电平
#define MT9V034_SCL_Low_AUX                       PIN_Write(MT9V034_SCL_PIN_AUX, 0)  // 配置输出低电平
#define MT9V034_SDA_High_AUX                      PIN_Write(MT9V034_SDA_PIN_AUX, 1)  // 配置输出高电平
#define MT9V034_SDA_Low_AUX                       PIN_Write(MT9V034_SDA_PIN_AUX, 0)  // 配置输出低电平
#define MT9V034_SDA_Data_AUX                      PIN_Read(MT9V034_SDA_PIN_AUX)      // 读取引脚上的引脚状态

/* MT9V034寄存器初始化 */
void MT9V034_Init_AUX(float fps);                                                   // MT9V034寄存器初始化
void MT9V034_SetFrameRate_AUX(float fps);                                           // 设置帧率
static void MT9V034_SetFrameResolution_AUX(unsigned short height, unsigned short width);    // 设置图像窗口大小
void MT9V034_SetAutoExposure_AUX(char enable);                                              // 设置自动曝光时间

/*********************************************************************
 * 摄像头SCCB底层驱动
 * 内部调用
 ***********************************************************************/

void SCCB_Init_AUX(void);
void SCCB_Wait_AUX(void);
void SCCB_Stop_AUX(void);
void SCCB_Star_AUX(void);
unsigned char SCCB_SendByte_AUX(unsigned char Data);
void SCCB_RegWrite_AUX(unsigned char Device, unsigned char Address, unsigned short Data);
unsigned char SCCB_RegRead_AUX(unsigned char Device, unsigned char Address, unsigned short *Data);
void MTV_IICWriteReg16_AUX(unsigned char reg, unsigned short val);

#endif
