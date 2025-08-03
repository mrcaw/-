################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-benchmarks

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-benchmarks:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/keyword_benchmark_8bit.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/benchmarks/person_detection_benchmark.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-benchmarks

