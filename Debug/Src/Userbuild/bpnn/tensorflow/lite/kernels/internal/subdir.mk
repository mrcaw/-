################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/common.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/portable_tensor_utils.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/quantization_util.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/runtime_shape.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_ctypes.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/tensor_utils.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal

