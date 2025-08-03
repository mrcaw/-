################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-xtensa

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-xtensa:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/add_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_common_xtensa.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_hifi.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int16_reference.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_int16.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_int8_reference.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/conv_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/decompress.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_hifi.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/depthwise_conv_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/dequantize.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_common_xtensa.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_int8.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/fully_connected_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/leaky_relu.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/logistic.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/lstm_eval_hifi.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pad_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_int8.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/pooling_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/quantize.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reduce_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/reshape_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_int8_int16.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/softmax_vision.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/strided_slice.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/sub.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/svdf.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/transpose_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/xtensa/unidirectional_sequence_lstm.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-xtensa

