

#include "IFXQSPI_REGDEF.h"
#include "IfxQspi_SpiMaster.h"
#include "IfxQspi.h"
#include "include.h"

#define MAX_BAUD    50000000

//-------------------------------------------------------------------------------------------------------------------
//  @brief      SPI初始化
//  @param      cs_pin          选择SPI片选引脚
//  @param      sck_pin         选择SPI时钟引脚
//  @param      mosi_pin        选择SPI MOSI引脚
//  @param      miso_pin        选择SPI MISO引脚
//  @param      mode            SPI模式 0：CPOL=0 CPHA=0    1：CPOL=0 CPHA=1   2：CPOL=1 CPHA=0   3：CPOL=1 CPHA=1 //具体细节可自行百度
//  @param      baud            设置SPI的波特率
//  @return     void
//  Sample usage:               LQ_QSPI_Init(IfxQspi0_SCLK_P20_11_OUT, IfxQspi0_MTSR_P20_14_OUT, IfxQspi0_MRSTA_P20_12_IN, IfxQspi0_SLSO6_P20_10_OUT, 0, 30*1000*1000);
//-------------------------------------------------------------------------------------------------------------------
void LQ_QSPI_Init(IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT, IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT, IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN, IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT, uint8 mode, uint32 baud)
{
    IfxQspi_SpiMaster_Config MasterConfig;
    IfxQspi_SpiMaster MasterHandle;
    IfxQspi_SpiMaster_Channel MasterChHandle;
    IfxQspi_SpiMaster_Pins MasterPins;
    IfxQspi_SpiMaster_Output SlsoPin;
    volatile Ifx_QSPI *moudle;

    moudle = IfxQspi_getAddress((IfxQspi_Index)0);

    MasterPins.mrstMode = IfxPort_InputMode_pullDown;
    MasterPins.mtsrMode = IfxPort_OutputMode_pushPull;
    MasterPins.sclkMode = IfxPort_OutputMode_pushPull;
    MasterPins.pinDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;

    MasterPins.sclk = &IfxQspi0_SCLK_P20_11_OUT;
    MasterPins.mtsr = &IfxQspi0_MTSR_P20_14_OUT;
    MasterPins.mrst = &IfxQspi0_MRSTA_P20_12_IN;
    SlsoPin.pin = &IfxQspi0_SLSO6_P20_10_OUT;
    SlsoPin.driver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    SlsoPin.mode = IfxPort_OutputMode_pushPull;

//
    IfxQspi_SpiMaster_initModuleConfig(&MasterConfig, moudle);
    MasterConfig.base.mode = SpiIf_Mode_master;
    MasterConfig.base.maximumBaudrate = 50000000;
    MasterConfig.base.isrProvider = IfxSrc_Tos_cpu0;


    MasterConfig.pins = &MasterPins;
    IfxQspi_SpiMaster_initModule(&MasterHandle, &MasterConfig);

    IfxQspi_SpiMaster_ChannelConfig MasterChConfig;
    IfxQspi_SpiMaster_initChannelConfig(&MasterChConfig, &MasterHandle);


    MasterChConfig.base.baudrate = (float)baud;
    switch(mode)
    {
        case 0:
        {
            MasterChConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleLow;//CPOL
            MasterChConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge;//CPHA
        }break;
        case 1:
        {
            MasterChConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleLow;
            MasterChConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge;
        }break;
        case 2:
        {
            MasterChConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleHigh;
            MasterChConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge;
        }break;
        case 3:
        {
            MasterChConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleHigh;
            MasterChConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge;
        }break;
    }

    MasterChConfig.base.mode.dataHeading = SpiIf_DataHeading_msbFirst;
    MasterChConfig.base.mode.dataWidth = 8;

    MasterChConfig.base.mode.csActiveLevel = Ifx_ActiveState_low;
    MasterChConfig.sls.output = SlsoPin;
    IfxQspi_SpiMaster_initChannel(&MasterChHandle, &MasterChConfig);

}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      SPI发送接收函数
//  @param      modata          发送的数据缓冲区地址
//  @param      midata          发送数据时接收到的数据的存储地址(不需要接收则传 NULL)
//  @param      len             发送的字节数
//  @param      continuous      本次通信是CS是否持续保持有效状态 1:持续保持  0:每传输完一个字节关闭CS(一般设置为1 即可)
//  @return     void
//  @since      v2.0
//  Sample usage:               LQ_QSPI_Wirte_Read(buf,buf,1,1);    //发送buff的内容，并接收到buf里，长度为1字节 通信期间CS持续拉低
//-------------------------------------------------------------------------------------------------------------------
void LQ_QSPI_Wirte_Read(uint8 *modata, uint8 *midata, uint32 len, uint8 continuous)
{
    uint32 i;
    Ifx_QSPI_BACON bacon;
    volatile Ifx_QSPI *moudle;

    moudle = IfxQspi_getAddress((IfxQspi_Index)0);

    bacon.U = moudle->BACON.U;

    bacon.B.DL = 7;
    bacon.B.IDLE = 1;
    bacon.B.IPRE = 1;
    bacon.B.LEAD = 1;
    bacon.B.LPRE = 1;
    bacon.B.MSB = 1;
    bacon.B.PARTYP = 0;
    bacon.B.BYTE = 0;
    bacon.B.TRAIL = 1;
    bacon.B.TPRE = 1;
    bacon.B.CS = 6;
    if(continuous)  IfxQspi_writeBasicConfigurationBeginStream(moudle, bacon.U);//发送数据后CS继续保持为低
    else            IfxQspi_writeBasicConfigurationEndStream(moudle, bacon.U);  //每发送一个字节CS信号拉高一次

    if(len>1)
    {
        i = 0;
        while(i < (len-1))
        {
            while(moudle->STATUS.B.TXFIFOLEVEL != 0);
            IfxQspi_write8(moudle, IfxQspi_ChannelId_0, modata, 1);
            while(moudle->STATUS.B.RXFIFOLEVEL == 0);
            if(NULL != midata)
            {
                IfxQspi_read8(moudle,midata,1);
                midata++;
            }
            else                (void)moudle->RXEXIT.U;
            modata++;

            i++;
        }
    }

    //发送最后一个数据
    if(continuous)  IfxQspi_writeBasicConfigurationEndStream(moudle, bacon.U);
    IfxQspi_writeTransmitFifo(moudle, *modata);
    while(moudle->STATUS.B.TXFIFOLEVEL != 0);

    while(moudle->STATUS.B.RXFIFOLEVEL == 0);
    if(NULL != midata)  IfxQspi_read8(moudle,midata,1);
    else                (void)moudle->RXEXIT.U;
}




