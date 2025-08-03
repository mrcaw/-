
#ifndef _MAIN_H_
#define _MAIN_H_

#include <stdint.h>


/**
 * 定时器 5ms和50ms标志位
 */
extern volatile unsigned char cpu1Flage5ms;
extern volatile unsigned char cpu1Flage50ms;



int core0_main (void);

#endif /* _MAIN_H_ */
