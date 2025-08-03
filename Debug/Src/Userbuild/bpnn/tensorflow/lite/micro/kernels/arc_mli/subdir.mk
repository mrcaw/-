################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/add.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/depthwise_conv.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/fully_connected.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_interface_mli_20.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/mli_slicers.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/pooling.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buf_mgr.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/kernels/arc_mli/scratch_buffers.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-arc_mli

