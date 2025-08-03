#ifndef __LQ_R9DS_H__
#define __LQ_R9DS_H__

#include "include.h"

extern unsigned char ReadBuff3[512];
extern char Usart3_Rec_Fini_Flag; // 串口3接收完成标志位

void update_sbus(void);
void R9DS_Read(void);
void Test_R9DS(void);

#endif /* __LQ_R9DS_H__ */