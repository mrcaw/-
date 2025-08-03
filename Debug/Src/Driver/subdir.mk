################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/Driver/LQ_ADC.c" \
"../Src/Driver/LQ_CCU6.c" \
"../Src/Driver/LQ_DMA.c" \
"../Src/Driver/LQ_EEPROM.c" \
"../Src/Driver/LQ_GPIO.c" \
"../Src/Driver/LQ_GPIO_IRQ.c" \
"../Src/Driver/LQ_GPSR.c" \
"../Src/Driver/LQ_GPT12_ENC.c" \
"../Src/Driver/LQ_GTM_PWM.c" \
"../Src/Driver/LQ_Hard_QSPI.c" \
"../Src/Driver/LQ_QSPI.c" \
"../Src/Driver/LQ_SOFTI2C.c" \
"../Src/Driver/LQ_SOFTSPI.c" \
"../Src/Driver/LQ_SPI.c" \
"../Src/Driver/LQ_STM.c" \
"../Src/Driver/LQ_UART.c" 

COMPILED_SRCS += \
"Src/Driver/LQ_ADC.src" \
"Src/Driver/LQ_CCU6.src" \
"Src/Driver/LQ_DMA.src" \
"Src/Driver/LQ_EEPROM.src" \
"Src/Driver/LQ_GPIO.src" \
"Src/Driver/LQ_GPIO_IRQ.src" \
"Src/Driver/LQ_GPSR.src" \
"Src/Driver/LQ_GPT12_ENC.src" \
"Src/Driver/LQ_GTM_PWM.src" \
"Src/Driver/LQ_Hard_QSPI.src" \
"Src/Driver/LQ_QSPI.src" \
"Src/Driver/LQ_SOFTI2C.src" \
"Src/Driver/LQ_SOFTSPI.src" \
"Src/Driver/LQ_SPI.src" \
"Src/Driver/LQ_STM.src" \
"Src/Driver/LQ_UART.src" 

C_DEPS += \
"./Src/Driver/LQ_ADC.d" \
"./Src/Driver/LQ_CCU6.d" \
"./Src/Driver/LQ_DMA.d" \
"./Src/Driver/LQ_EEPROM.d" \
"./Src/Driver/LQ_GPIO.d" \
"./Src/Driver/LQ_GPIO_IRQ.d" \
"./Src/Driver/LQ_GPSR.d" \
"./Src/Driver/LQ_GPT12_ENC.d" \
"./Src/Driver/LQ_GTM_PWM.d" \
"./Src/Driver/LQ_Hard_QSPI.d" \
"./Src/Driver/LQ_QSPI.d" \
"./Src/Driver/LQ_SOFTI2C.d" \
"./Src/Driver/LQ_SOFTSPI.d" \
"./Src/Driver/LQ_SPI.d" \
"./Src/Driver/LQ_STM.d" \
"./Src/Driver/LQ_UART.d" 

OBJS += \
"Src/Driver/LQ_ADC.o" \
"Src/Driver/LQ_CCU6.o" \
"Src/Driver/LQ_DMA.o" \
"Src/Driver/LQ_EEPROM.o" \
"Src/Driver/LQ_GPIO.o" \
"Src/Driver/LQ_GPIO_IRQ.o" \
"Src/Driver/LQ_GPSR.o" \
"Src/Driver/LQ_GPT12_ENC.o" \
"Src/Driver/LQ_GTM_PWM.o" \
"Src/Driver/LQ_Hard_QSPI.o" \
"Src/Driver/LQ_QSPI.o" \
"Src/Driver/LQ_SOFTI2C.o" \
"Src/Driver/LQ_SOFTSPI.o" \
"Src/Driver/LQ_SPI.o" \
"Src/Driver/LQ_STM.o" \
"Src/Driver/LQ_UART.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Driver/LQ_ADC.src":"../Src/Driver/LQ_ADC.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_ADC.o":"Src/Driver/LQ_ADC.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_CCU6.src":"../Src/Driver/LQ_CCU6.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_CCU6.o":"Src/Driver/LQ_CCU6.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_DMA.src":"../Src/Driver/LQ_DMA.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_DMA.o":"Src/Driver/LQ_DMA.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_EEPROM.src":"../Src/Driver/LQ_EEPROM.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_EEPROM.o":"Src/Driver/LQ_EEPROM.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_GPIO.src":"../Src/Driver/LQ_GPIO.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_GPIO.o":"Src/Driver/LQ_GPIO.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_GPIO_IRQ.src":"../Src/Driver/LQ_GPIO_IRQ.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_GPIO_IRQ.o":"Src/Driver/LQ_GPIO_IRQ.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_GPSR.src":"../Src/Driver/LQ_GPSR.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_GPSR.o":"Src/Driver/LQ_GPSR.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_GPT12_ENC.src":"../Src/Driver/LQ_GPT12_ENC.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_GPT12_ENC.o":"Src/Driver/LQ_GPT12_ENC.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_GTM_PWM.src":"../Src/Driver/LQ_GTM_PWM.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_GTM_PWM.o":"Src/Driver/LQ_GTM_PWM.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_Hard_QSPI.src":"../Src/Driver/LQ_Hard_QSPI.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_Hard_QSPI.o":"Src/Driver/LQ_Hard_QSPI.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_QSPI.src":"../Src/Driver/LQ_QSPI.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_QSPI.o":"Src/Driver/LQ_QSPI.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_SOFTI2C.src":"../Src/Driver/LQ_SOFTI2C.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_SOFTI2C.o":"Src/Driver/LQ_SOFTI2C.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_SOFTSPI.src":"../Src/Driver/LQ_SOFTSPI.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_SOFTSPI.o":"Src/Driver/LQ_SOFTSPI.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_SPI.src":"../Src/Driver/LQ_SPI.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_SPI.o":"Src/Driver/LQ_SPI.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_STM.src":"../Src/Driver/LQ_STM.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_STM.o":"Src/Driver/LQ_STM.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Driver/LQ_UART.src":"../Src/Driver/LQ_UART.c" "Src/Driver/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Driver/LQ_UART.o":"Src/Driver/LQ_UART.src" "Src/Driver/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Driver

clean-Src-2f-Driver:
	-$(RM) ./Src/Driver/LQ_ADC.d ./Src/Driver/LQ_ADC.o ./Src/Driver/LQ_ADC.src ./Src/Driver/LQ_CCU6.d ./Src/Driver/LQ_CCU6.o ./Src/Driver/LQ_CCU6.src ./Src/Driver/LQ_DMA.d ./Src/Driver/LQ_DMA.o ./Src/Driver/LQ_DMA.src ./Src/Driver/LQ_EEPROM.d ./Src/Driver/LQ_EEPROM.o ./Src/Driver/LQ_EEPROM.src ./Src/Driver/LQ_GPIO.d ./Src/Driver/LQ_GPIO.o ./Src/Driver/LQ_GPIO.src ./Src/Driver/LQ_GPIO_IRQ.d ./Src/Driver/LQ_GPIO_IRQ.o ./Src/Driver/LQ_GPIO_IRQ.src ./Src/Driver/LQ_GPSR.d ./Src/Driver/LQ_GPSR.o ./Src/Driver/LQ_GPSR.src ./Src/Driver/LQ_GPT12_ENC.d ./Src/Driver/LQ_GPT12_ENC.o ./Src/Driver/LQ_GPT12_ENC.src ./Src/Driver/LQ_GTM_PWM.d ./Src/Driver/LQ_GTM_PWM.o ./Src/Driver/LQ_GTM_PWM.src ./Src/Driver/LQ_Hard_QSPI.d ./Src/Driver/LQ_Hard_QSPI.o ./Src/Driver/LQ_Hard_QSPI.src ./Src/Driver/LQ_QSPI.d ./Src/Driver/LQ_QSPI.o ./Src/Driver/LQ_QSPI.src ./Src/Driver/LQ_SOFTI2C.d ./Src/Driver/LQ_SOFTI2C.o ./Src/Driver/LQ_SOFTI2C.src ./Src/Driver/LQ_SOFTSPI.d ./Src/Driver/LQ_SOFTSPI.o ./Src/Driver/LQ_SOFTSPI.src ./Src/Driver/LQ_SPI.d ./Src/Driver/LQ_SPI.o ./Src/Driver/LQ_SPI.src ./Src/Driver/LQ_STM.d ./Src/Driver/LQ_STM.o ./Src/Driver/LQ_STM.src ./Src/Driver/LQ_UART.d ./Src/Driver/LQ_UART.o ./Src/Driver/LQ_UART.src

.PHONY: clean-Src-2f-Driver

