################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.src" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.o" \
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.src":"../Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o":"Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.src" "Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/comparisons.src ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o ./Src/Userbuild/bpnn/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

