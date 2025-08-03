################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-memory_planner

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-memory_planner:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/greedy_memory_planner_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/linear_memory_planner_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim_test.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-memory_planner

