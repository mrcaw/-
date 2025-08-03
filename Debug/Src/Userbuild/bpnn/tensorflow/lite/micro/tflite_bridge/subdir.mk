################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-tflite_bridge

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-tflite_bridge:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-tflite_bridge

