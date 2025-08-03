################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.c" \
"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.c" \
"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.c" 

COMPILED_SRCS += \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.src" \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.src" \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.src" 

C_DEPS += \
"./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.d" \
"./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.d" \
"./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.d" 

OBJS += \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.o" \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.o" \
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.o" 


# Each subdirectory must supply rules for building sources it contributes
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.src":"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.c" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.o":"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.src" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.src":"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.c" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.o":"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.src" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.src":"../Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.c" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.o":"Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.src" "Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Cpu-2f-CStart

clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Cpu-2f-CStart:
	-$(RM) ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.d ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.o ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart0.src ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.d ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.o ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart1.src ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.d ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.o ./Libraries/iLLD/TC29B/Tricore/Cpu/CStart/IfxCpu_CStart2.src

.PHONY: clean-Libraries-2f-iLLD-2f-TC29B-2f-Tricore-2f-Cpu-2f-CStart

