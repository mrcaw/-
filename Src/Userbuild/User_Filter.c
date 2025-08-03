#include "include.h"


LowPassFilter Right_Speed;
LowPassFilter Left_Speed;
LowPassFilter R_Speed;

// 初始化滤波器
// 参数：filter - 滤波器结构体指针
//       alpha - 滤波系数
//       initial_value - 初始输入值
void initLowPassFilter(LowPassFilter* filter, float alpha, float initial_value)
{
    filter->alpha = alpha;
    filter->prev_output = initial_value;
}

// 一阶低通滤波函数
// 参数：input - 当前输入值
//       filter - 滤波器结构体指针
// 返回：滤波后的输出值
float lowPassFilter(float input, LowPassFilter* filter)
{
    filter->prev_output = filter->prev_output + filter->alpha * (input - filter->prev_output);
    return filter->prev_output;
}

void init_Filter_Blance(void)
{
    initLowPassFilter(&Right_Speed,0.5,0);
    initLowPassFilter(&Left_Speed,0.5,0);
    //initLowPassFilter(&R_Speed,0.3,0);

}
