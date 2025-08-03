################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/Userbuild/bpnn/bpnn.c" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/bpnn.src" 

C_DEPS += \
"./Src/Userbuild/bpnn/bpnn.d" 

OBJS += \
"Src/Userbuild/bpnn/bpnn.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/bpnn.src":"../Src/Userbuild/bpnn/bpnn.c" "Src/Userbuild/bpnn/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/bpnn.o":"Src/Userbuild/bpnn/bpnn.src" "Src/Userbuild/bpnn/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn

clean-Src-2f-Userbuild-2f-bpnn:
	-$(RM) ./Src/Userbuild/bpnn/bpnn.d ./Src/Userbuild/bpnn/bpnn.o ./Src/Userbuild/bpnn/bpnn.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn

