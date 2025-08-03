#ifndef USER_UART_H
#define USER_UART_H

#define Max_buf_num 256//接受最大字符数
#define Motor_Uart UART1
#define Ble_Uart   UART0

typedef struct
{
        uint8 buf;//接受字符
        uint8 buffer[Max_buf_num];//接收字符串
        int num;//接收字符数
}Uart_TypeDef;//为串口回调函数参数结构体

extern short int Motor_Speed_Right;
extern short int Motor_Speed_Left;   //无刷电机速度

void Motor_Uart_CallBack(void);//此函数为无刷电机串口回调函数需要放在中断里面
void small_driver_set_duty(short int left_duty, short int right_duty);
void small_driver_get_speed(void);
void Ble_Change(void);
void Uart_Pose(void);
void Uart_Send_Data(void);
void Ble_Change_Vel_Init(void);
#endif
