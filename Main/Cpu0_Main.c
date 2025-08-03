/*LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
@编   写：龙邱科技
@邮   箱：chiusir@163.com
@编译IDE：AURIX Development Studio 1.10.2及以上版本
@使用平台：北京龙邱智能科技TC297TX核心板和母板
@相关信息参考下列地址
    网      站：http://www.lqist.cn
    淘 宝 店 铺：http://longqiu.taobao.com
    程序配套视频：https://space.bilibili.com/95313236
@软件版本：V2.1 版权所有，单位使用请先联系授权

@修改日期：2025-03-07
@修改内容：
@注意事项：
    导入工程的时候路径要为纯英文,不要有空格、特殊符合和中文
QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ*/

//================================ 系统代码 ================================//
#include "include.h" //头文件

IfxCpu_syncEvent g_cpuSyncEvent = 0; // 核心同步所需要的变量

//================================ 用户代码 ================================//

int core0_main(void)
{
    //================================ 系统代码 ================================//
    cpu_init();                        // 等待cpu初始化
    IfxCpu_emitEvent(&g_cpuSyncEvent); // 等待cpu同步
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);
    //UART_InitConfig(UART0_RX_P14_1, UART0_TX_P14_0, 115200); // 初始化上位机串口
                                                             //
    //================================ 用户代码 ================================//
    // Test_GPIO_OUT();        // PASS,测试GPIO，P10.6和P10.5闪灯
    // Test_Bluetooth();       // PASS,测试UART0(P14.0RX/P14.1TX)，
    // Test_GPIO_KEY();        // PASS,测试外部按键输入，P22.0--2   按下按键   LED亮
    // Test_GPIO_Extern_Int(); // PASS,测试外部第1组中断P15.8，P10.6和P10.5闪灯
    // LQ_STM_Timer();         // PASS,测试定时中断、闪灯
    // Test_Display();         // PASS,屏幕测试函数，需要去config.h中配置屏幕类型
    // Test_ADC();             // PASS,测试ADC采样时间 屏幕上显示 ADC采样10K次时间
    // TestMotor();            // PASS,测试3路电机PWM控制
    // TestServo();            // PASS,测试两路舵机
    // TestEncoder();          // PASS,测试编码器，兼容正交解码以及带方向龙邱编码器
    // Test_IIC_Gyro();        // PASS,测试陀螺仪模块,包括MPU6050 9250或者ICM20602 20689 IIC接线   P15_3接SCL  P15_6接SDA
    // Test_MPU6050_DMP();     // PASS 测试MPU6050的DMP算法，需要MPU6050的硬件连接
    // Test_SPI_Gyro();        // PASS,测试陀螺仪模块, SPI接线
    // Test_Quat();            // PASS,测试四元数运算，陀螺仪姿态解算,采用spi接线，需要把解算和读取函数放在一个1ms的定时器中
    // Test_CAMERA();          // PASS 双摄测试程序，仅适用于双摄母板TCsUnicycleMBV2
    // Test_R9DS();            // PASS 测试遥控器程序，需要在串口2的回调函数放入遥控器的接收函数

    Balance_Init();
    PIN_InitConfig(P23_1, PIN_MODE_OUTPUT, 1);
    /* 主循环 */
    while (1)
    {
        Delay_Ms(1000);
    }
}
