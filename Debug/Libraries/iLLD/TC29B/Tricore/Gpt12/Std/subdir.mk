################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.c" 

COMPILED_SRCS += \
"Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.src" 

C_DEPS += \
"./Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.d" 

OBJS += \
"Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.o" 


# Each subdirectory must supply rules for building sources it contributes
"Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.src":"../Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.c" "Libraries/iLLD/TC29B/Tricore/Gpt12/Std/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.o":"Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.src" "Libraries/iLLD/TC29B/Tricore/Gpt12/Std/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Gpt12-2f-Std

clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Gpt12-2f-Std:
	-$(RM) ./Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.d ./Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.o ./Libraries/iLLD/TC29B/Tricore/Gpt12/Std/IfxGpt12.src

.PHONY: clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Gpt12-2f-Std

