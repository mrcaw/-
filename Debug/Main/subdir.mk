################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Main/Cpu0_Main.c" \
"../Main/Cpu1_Main.c" \
"../Main/Cpu2_Main.c" \
"../Main/irq.c" 

COMPILED_SRCS += \
"Main/Cpu0_Main.src" \
"Main/Cpu1_Main.src" \
"Main/Cpu2_Main.src" \
"Main/irq.src" 

C_DEPS += \
"./Main/Cpu0_Main.d" \
"./Main/Cpu1_Main.d" \
"./Main/Cpu2_Main.d" \
"./Main/irq.d" 

OBJS += \
"Main/Cpu0_Main.o" \
"Main/Cpu1_Main.o" \
"Main/Cpu2_Main.o" \
"Main/irq.o" 


# Each subdirectory must supply rules for building sources it contributes
"Main/Cpu0_Main.src":"../Main/Cpu0_Main.c" "Main/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Main/Cpu0_Main.o":"Main/Cpu0_Main.src" "Main/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Main/Cpu1_Main.src":"../Main/Cpu1_Main.c" "Main/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Main/Cpu1_Main.o":"Main/Cpu1_Main.src" "Main/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Main/Cpu2_Main.src":"../Main/Cpu2_Main.c" "Main/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Main/Cpu2_Main.o":"Main/Cpu2_Main.src" "Main/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Main/irq.src":"../Main/irq.c" "Main/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Main/irq.o":"Main/irq.src" "Main/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Main

clean-Main:
	-$(RM) ./Main/Cpu0_Main.d ./Main/Cpu0_Main.o ./Main/Cpu0_Main.src ./Main/Cpu1_Main.d ./Main/Cpu1_Main.o ./Main/Cpu1_Main.src ./Main/Cpu2_Main.d ./Main/Cpu2_Main.o ./Main/Cpu2_Main.src ./Main/irq.d ./Main/irq.o ./Main/irq.src

.PHONY: clean-Main

