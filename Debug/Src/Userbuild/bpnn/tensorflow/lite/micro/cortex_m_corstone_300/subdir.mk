################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-cortex_m_corstone_300

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-cortex_m_corstone_300:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/micro_time.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/cortex_m_corstone_300/system_setup.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-cortex_m_corstone_300

