
#include "LQ_PID.h"

/*!
 * @brief    限幅函数
 *
 * @param    amt   ： 参数
 * @param    low   ： 最低值
 * @param    high  ： 最高值
 *
 * @return   无
 *
 * @note     无
 *
 * @see      无
 *
 */
float constrain_float(float amt, float low, float high)
{
    return ((amt) < (low) ? (low) : ((amt) > (high) ? (high) : (amt)));
}

/*!
 * @brief    pid参数初始化函数
 *
 * @param    无
 *
 * @return   无
 *
 * @note     无
 *
 * @see      无
 *
 */
void PidInit(pid_param_t *pid)
{
    pid->kp = 0;
    pid->ki = 0;
    pid->kd = 0;
    pid->imax = 0;
    pid->out_p = 0;
    pid->out_i = 0;
    pid->out_d = 0;
    pid->out = 0;
    pid->integrator = 0;
    pid->last_error = 0;
    pid->last_derivative = 0;
    pid->last_t = 0;
}
/*!
 * @brief    pid位置式控制器输出
 *
 * @param    pid     pid参数
 * @param    error   pid输入误差
 *
 * @return   PID输出结果
 *
 * @note     无
 *
 * @see      无
 *
 */
float PidLocCtrl(pid_param_t *pid, float error)
{
    /* �ۻ���� */
    pid->integrator += error;

    /* ����޷� */
    constrain_float(pid->integrator, -pid->imax, pid->imax);

    pid->out_p = pid->kp * error;
    pid->out_i = pid->ki * pid->integrator;
    pid->out_d = pid->kd * (error - pid->last_error);

    pid->last_error = error;

    pid->out = pid->out_p + pid->out_i + pid->out_d;

    return pid->out;
}
/*!
 * @brief    pid增量式控制器输出
 *
 * @param    pid     pid参数
 * @param    error   pid输入误差
 *
 * @return   PID输出结果   注意输出结果已经包涵了上次结果
 *
 * @note     无
 *
 * @see      无
 *
 */
float PidIncCtrl(pid_param_t *pid, float error)
{

    pid->out_p = pid->kp * (error - pid->last_error);
    pid->out_i = pid->ki * error;
    pid->out_d = pid->kd * ((error - pid->last_error) - pid->last_derivative);

    pid->last_derivative = error - pid->last_error;
    pid->last_error = error;

    pid->out += pid->out_p + pid->out_i + pid->out_d;

    return pid->out;
}
