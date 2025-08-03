################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-ceva

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-ceva:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/ceva_common.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/depthwise_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/fully_connected.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/logistic.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/quantize.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/ceva/softmax.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-ceva

