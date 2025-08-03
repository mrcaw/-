################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/APP/LQ_ADC_7Mic.c" \
"../Src/APP/LQ_BD.c" \
"../Src/APP/LQ_CAMERA.c" \
"../Src/APP/LQ_CCU6_Timer.c" \
"../Src/APP/LQ_EEPROM_TEST.c" \
"../Src/APP/LQ_Encoder.c" \
"../Src/APP/LQ_FFT_TEST.c" \
"../Src/APP/LQ_GPIO_ExInt.c" \
"../Src/APP/LQ_GPIO_KEY.c" \
"../Src/APP/LQ_GPIO_LED.c" \
"../Src/APP/LQ_MT9V034.c" \
"../Src/APP/LQ_MT9V034_aux.c" \
"../Src/APP/LQ_PWM_Moto.c" \
"../Src/APP/LQ_PWM_Servo.c" \
"../Src/APP/LQ_R9DS.c" \
"../Src/APP/LQ_STM_Timer.c" \
"../Src/APP/LQ_UART_Bluetooth.c" 

COMPILED_SRCS += \
"Src/APP/LQ_ADC_7Mic.src" \
"Src/APP/LQ_BD.src" \
"Src/APP/LQ_CAMERA.src" \
"Src/APP/LQ_CCU6_Timer.src" \
"Src/APP/LQ_EEPROM_TEST.src" \
"Src/APP/LQ_Encoder.src" \
"Src/APP/LQ_FFT_TEST.src" \
"Src/APP/LQ_GPIO_ExInt.src" \
"Src/APP/LQ_GPIO_KEY.src" \
"Src/APP/LQ_GPIO_LED.src" \
"Src/APP/LQ_MT9V034.src" \
"Src/APP/LQ_MT9V034_aux.src" \
"Src/APP/LQ_PWM_Moto.src" \
"Src/APP/LQ_PWM_Servo.src" \
"Src/APP/LQ_R9DS.src" \
"Src/APP/LQ_STM_Timer.src" \
"Src/APP/LQ_UART_Bluetooth.src" 

C_DEPS += \
"./Src/APP/LQ_ADC_7Mic.d" \
"./Src/APP/LQ_BD.d" \
"./Src/APP/LQ_CAMERA.d" \
"./Src/APP/LQ_CCU6_Timer.d" \
"./Src/APP/LQ_EEPROM_TEST.d" \
"./Src/APP/LQ_Encoder.d" \
"./Src/APP/LQ_FFT_TEST.d" \
"./Src/APP/LQ_GPIO_ExInt.d" \
"./Src/APP/LQ_GPIO_KEY.d" \
"./Src/APP/LQ_GPIO_LED.d" \
"./Src/APP/LQ_MT9V034.d" \
"./Src/APP/LQ_MT9V034_aux.d" \
"./Src/APP/LQ_PWM_Moto.d" \
"./Src/APP/LQ_PWM_Servo.d" \
"./Src/APP/LQ_R9DS.d" \
"./Src/APP/LQ_STM_Timer.d" \
"./Src/APP/LQ_UART_Bluetooth.d" 

OBJS += \
"Src/APP/LQ_ADC_7Mic.o" \
"Src/APP/LQ_BD.o" \
"Src/APP/LQ_CAMERA.o" \
"Src/APP/LQ_CCU6_Timer.o" \
"Src/APP/LQ_EEPROM_TEST.o" \
"Src/APP/LQ_Encoder.o" \
"Src/APP/LQ_FFT_TEST.o" \
"Src/APP/LQ_GPIO_ExInt.o" \
"Src/APP/LQ_GPIO_KEY.o" \
"Src/APP/LQ_GPIO_LED.o" \
"Src/APP/LQ_MT9V034.o" \
"Src/APP/LQ_MT9V034_aux.o" \
"Src/APP/LQ_PWM_Moto.o" \
"Src/APP/LQ_PWM_Servo.o" \
"Src/APP/LQ_R9DS.o" \
"Src/APP/LQ_STM_Timer.o" \
"Src/APP/LQ_UART_Bluetooth.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/APP/LQ_ADC_7Mic.src":"../Src/APP/LQ_ADC_7Mic.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_ADC_7Mic.o":"Src/APP/LQ_ADC_7Mic.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_BD.src":"../Src/APP/LQ_BD.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_BD.o":"Src/APP/LQ_BD.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_CAMERA.src":"../Src/APP/LQ_CAMERA.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_CAMERA.o":"Src/APP/LQ_CAMERA.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_CCU6_Timer.src":"../Src/APP/LQ_CCU6_Timer.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_CCU6_Timer.o":"Src/APP/LQ_CCU6_Timer.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_EEPROM_TEST.src":"../Src/APP/LQ_EEPROM_TEST.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_EEPROM_TEST.o":"Src/APP/LQ_EEPROM_TEST.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_Encoder.src":"../Src/APP/LQ_Encoder.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_Encoder.o":"Src/APP/LQ_Encoder.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_FFT_TEST.src":"../Src/APP/LQ_FFT_TEST.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_FFT_TEST.o":"Src/APP/LQ_FFT_TEST.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_GPIO_ExInt.src":"../Src/APP/LQ_GPIO_ExInt.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_GPIO_ExInt.o":"Src/APP/LQ_GPIO_ExInt.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_GPIO_KEY.src":"../Src/APP/LQ_GPIO_KEY.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_GPIO_KEY.o":"Src/APP/LQ_GPIO_KEY.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_GPIO_LED.src":"../Src/APP/LQ_GPIO_LED.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_GPIO_LED.o":"Src/APP/LQ_GPIO_LED.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_MT9V034.src":"../Src/APP/LQ_MT9V034.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_MT9V034.o":"Src/APP/LQ_MT9V034.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_MT9V034_aux.src":"../Src/APP/LQ_MT9V034_aux.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_MT9V034_aux.o":"Src/APP/LQ_MT9V034_aux.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_PWM_Moto.src":"../Src/APP/LQ_PWM_Moto.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_PWM_Moto.o":"Src/APP/LQ_PWM_Moto.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_PWM_Servo.src":"../Src/APP/LQ_PWM_Servo.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_PWM_Servo.o":"Src/APP/LQ_PWM_Servo.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_R9DS.src":"../Src/APP/LQ_R9DS.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_R9DS.o":"Src/APP/LQ_R9DS.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_STM_Timer.src":"../Src/APP/LQ_STM_Timer.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_STM_Timer.o":"Src/APP/LQ_STM_Timer.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/LQ_UART_Bluetooth.src":"../Src/APP/LQ_UART_Bluetooth.c" "Src/APP/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/LQ_UART_Bluetooth.o":"Src/APP/LQ_UART_Bluetooth.src" "Src/APP/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-APP

clean-Src-2f-APP:
	-$(RM) ./Src/APP/LQ_ADC_7Mic.d ./Src/APP/LQ_ADC_7Mic.o ./Src/APP/LQ_ADC_7Mic.src ./Src/APP/LQ_BD.d ./Src/APP/LQ_BD.o ./Src/APP/LQ_BD.src ./Src/APP/LQ_CAMERA.d ./Src/APP/LQ_CAMERA.o ./Src/APP/LQ_CAMERA.src ./Src/APP/LQ_CCU6_Timer.d ./Src/APP/LQ_CCU6_Timer.o ./Src/APP/LQ_CCU6_Timer.src ./Src/APP/LQ_EEPROM_TEST.d ./Src/APP/LQ_EEPROM_TEST.o ./Src/APP/LQ_EEPROM_TEST.src ./Src/APP/LQ_Encoder.d ./Src/APP/LQ_Encoder.o ./Src/APP/LQ_Encoder.src ./Src/APP/LQ_FFT_TEST.d ./Src/APP/LQ_FFT_TEST.o ./Src/APP/LQ_FFT_TEST.src ./Src/APP/LQ_GPIO_ExInt.d ./Src/APP/LQ_GPIO_ExInt.o ./Src/APP/LQ_GPIO_ExInt.src ./Src/APP/LQ_GPIO_KEY.d ./Src/APP/LQ_GPIO_KEY.o ./Src/APP/LQ_GPIO_KEY.src ./Src/APP/LQ_GPIO_LED.d ./Src/APP/LQ_GPIO_LED.o ./Src/APP/LQ_GPIO_LED.src ./Src/APP/LQ_MT9V034.d ./Src/APP/LQ_MT9V034.o ./Src/APP/LQ_MT9V034.src ./Src/APP/LQ_MT9V034_aux.d ./Src/APP/LQ_MT9V034_aux.o ./Src/APP/LQ_MT9V034_aux.src ./Src/APP/LQ_PWM_Moto.d ./Src/APP/LQ_PWM_Moto.o ./Src/APP/LQ_PWM_Moto.src ./Src/APP/LQ_PWM_Servo.d ./Src/APP/LQ_PWM_Servo.o ./Src/APP/LQ_PWM_Servo.src ./Src/APP/LQ_R9DS.d ./Src/APP/LQ_R9DS.o ./Src/APP/LQ_R9DS.src ./Src/APP/LQ_STM_Timer.d ./Src/APP/LQ_STM_Timer.o ./Src/APP/LQ_STM_Timer.src ./Src/APP/LQ_UART_Bluetooth.d ./Src/APP/LQ_UART_Bluetooth.o ./Src/APP/LQ_UART_Bluetooth.src

.PHONY: clean-Src-2f-APP

