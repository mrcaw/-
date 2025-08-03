################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/Core/cpu_init.c" 

COMPILED_SRCS += \
"Src/Core/cpu_init.src" 

C_DEPS += \
"./Src/Core/cpu_init.d" 

OBJS += \
"Src/Core/cpu_init.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Core/cpu_init.src":"../Src/Core/cpu_init.c" "Src/Core/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Core/cpu_init.o":"Src/Core/cpu_init.src" "Src/Core/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Core

clean-Src-2f-Core:
	-$(RM) ./Src/Core/cpu_init.d ./Src/Core/cpu_init.o ./Src/Core/cpu_init.src

.PHONY: clean-Src-2f-Core

