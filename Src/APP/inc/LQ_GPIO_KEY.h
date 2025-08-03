
#ifndef __LQ_KEY_H_
#define __LQ_KEY_H_

// 定义模块号
typedef enum
{
    KEY0 = 0, // 母板上按键0
    KEY1 = 1,
    KEY2 = 2,
    KEY3 = 3,
    DSW0, // 母板上拨码开关0
    DSW1
} KEYn_e;

typedef enum
{
    LOW = 0,     // 按下
    HIGH = 1,    // 松开
    FAIL = 0xff, // 错误
} KEYs_e;

// 定义的管脚要对应实际按键
#define KEY0p P22_0  // 母板上按键0
#define KEY1p P22_1  // 母板上按键1
#define KEY2p P22_2  // 母板上按键2
#define KEY3p P33_11 // 母板上按键3
#define DSW0p P33_8  // 母板上拨码开关0
#define DSW1p P33_9 // 母板上拨码开关1

void GPIO_KEY_Init(void);
unsigned char KEY_Read(KEYn_e KEYno);
void Test_GPIO_KEY(void);
#endif /* 0_APPSW_TRICORE_APP_LQ_ASC_H_ */
