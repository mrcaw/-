#ifndef __USER_FILTER_H
#define __USER_FILTER_H

typedef struct {
    float prev_output;  // 上一次的滤波输出
    float alpha;        // 滤波系数 (0.0 < alpha < 1.0)
} LowPassFilter;


void initLowPassFilter(LowPassFilter* filter, float alpha, float initial_value);
float lowPassFilter(float input, LowPassFilter* filter) ;
void init_Filter_Blance(void);


extern LowPassFilter Right_Speed;
extern LowPassFilter Left_Speed;
extern LowPassFilter R_Speed;

#endif
