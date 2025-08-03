################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/Userbuild/User_Balance.c" \
"../Src/Userbuild/User_Direction.c" \
"../Src/Userbuild/User_Display.c" \
"../Src/Userbuild/User_Filter.c" \
"../Src/Userbuild/User_Key.c" \
"../Src/Userbuild/User_Odometry.c" \
"../Src/Userbuild/User_Photo.c" \
"../Src/Userbuild/User_Pid.c" \
"../Src/Userbuild/User_Task.c" \
"../Src/Userbuild/User_Tow_Pass.c" \
"../Src/Userbuild/User_Uart.c" 

COMPILED_SRCS += \
"Src/Userbuild/User_Balance.src" \
"Src/Userbuild/User_Direction.src" \
"Src/Userbuild/User_Display.src" \
"Src/Userbuild/User_Filter.src" \
"Src/Userbuild/User_Key.src" \
"Src/Userbuild/User_Odometry.src" \
"Src/Userbuild/User_Photo.src" \
"Src/Userbuild/User_Pid.src" \
"Src/Userbuild/User_Task.src" \
"Src/Userbuild/User_Tow_Pass.src" \
"Src/Userbuild/User_Uart.src" 

C_DEPS += \
"./Src/Userbuild/User_Balance.d" \
"./Src/Userbuild/User_Direction.d" \
"./Src/Userbuild/User_Display.d" \
"./Src/Userbuild/User_Filter.d" \
"./Src/Userbuild/User_Key.d" \
"./Src/Userbuild/User_Odometry.d" \
"./Src/Userbuild/User_Photo.d" \
"./Src/Userbuild/User_Pid.d" \
"./Src/Userbuild/User_Task.d" \
"./Src/Userbuild/User_Tow_Pass.d" \
"./Src/Userbuild/User_Uart.d" 

OBJS += \
"Src/Userbuild/User_Balance.o" \
"Src/Userbuild/User_Direction.o" \
"Src/Userbuild/User_Display.o" \
"Src/Userbuild/User_Filter.o" \
"Src/Userbuild/User_Key.o" \
"Src/Userbuild/User_Odometry.o" \
"Src/Userbuild/User_Photo.o" \
"Src/Userbuild/User_Pid.o" \
"Src/Userbuild/User_Task.o" \
"Src/Userbuild/User_Tow_Pass.o" \
"Src/Userbuild/User_Uart.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/User_Balance.src":"../Src/Userbuild/User_Balance.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Balance.o":"Src/Userbuild/User_Balance.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Direction.src":"../Src/Userbuild/User_Direction.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Direction.o":"Src/Userbuild/User_Direction.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Display.src":"../Src/Userbuild/User_Display.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Display.o":"Src/Userbuild/User_Display.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Filter.src":"../Src/Userbuild/User_Filter.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Filter.o":"Src/Userbuild/User_Filter.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Key.src":"../Src/Userbuild/User_Key.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Key.o":"Src/Userbuild/User_Key.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Odometry.src":"../Src/Userbuild/User_Odometry.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Odometry.o":"Src/Userbuild/User_Odometry.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Photo.src":"../Src/Userbuild/User_Photo.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Photo.o":"Src/Userbuild/User_Photo.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Pid.src":"../Src/Userbuild/User_Pid.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Pid.o":"Src/Userbuild/User_Pid.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Task.src":"../Src/Userbuild/User_Task.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Task.o":"Src/Userbuild/User_Task.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Tow_Pass.src":"../Src/Userbuild/User_Tow_Pass.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Tow_Pass.o":"Src/Userbuild/User_Tow_Pass.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/User_Uart.src":"../Src/Userbuild/User_Uart.c" "Src/Userbuild/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/User_Uart.o":"Src/Userbuild/User_Uart.src" "Src/Userbuild/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild

clean-Src-2f-Userbuild:
	-$(RM) ./Src/Userbuild/User_Balance.d ./Src/Userbuild/User_Balance.o ./Src/Userbuild/User_Balance.src ./Src/Userbuild/User_Direction.d ./Src/Userbuild/User_Direction.o ./Src/Userbuild/User_Direction.src ./Src/Userbuild/User_Display.d ./Src/Userbuild/User_Display.o ./Src/Userbuild/User_Display.src ./Src/Userbuild/User_Filter.d ./Src/Userbuild/User_Filter.o ./Src/Userbuild/User_Filter.src ./Src/Userbuild/User_Key.d ./Src/Userbuild/User_Key.o ./Src/Userbuild/User_Key.src ./Src/Userbuild/User_Odometry.d ./Src/Userbuild/User_Odometry.o ./Src/Userbuild/User_Odometry.src ./Src/Userbuild/User_Photo.d ./Src/Userbuild/User_Photo.o ./Src/Userbuild/User_Photo.src ./Src/Userbuild/User_Pid.d ./Src/Userbuild/User_Pid.o ./Src/Userbuild/User_Pid.src ./Src/Userbuild/User_Task.d ./Src/Userbuild/User_Task.o ./Src/Userbuild/User_Task.src ./Src/Userbuild/User_Tow_Pass.d ./Src/Userbuild/User_Tow_Pass.o ./Src/Userbuild/User_Tow_Pass.src ./Src/Userbuild/User_Uart.d ./Src/Userbuild/User_Uart.o ./Src/Userbuild/User_Uart.src

.PHONY: clean-Src-2f-Userbuild

