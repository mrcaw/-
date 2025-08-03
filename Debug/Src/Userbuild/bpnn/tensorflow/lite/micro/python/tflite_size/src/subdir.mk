################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-python-2f-tflite_size-2f-src

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-python-2f-tflite_size-2f-src:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/python/tflite_size/src/flatbuffer_size_wrapper_pybind.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-python-2f-tflite_size-2f-src

