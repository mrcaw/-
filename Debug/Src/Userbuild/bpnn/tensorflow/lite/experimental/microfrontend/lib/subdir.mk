################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.cc" 

C_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.c" \
"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.c" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.src" 

C_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.d" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.src":"../Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.c" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.o":"Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.src" "Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/fft_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/filterbank_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_main.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_generator.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_memmap_main.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/frontend_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/kiss_fft_int16.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_lut.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/log_scale_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.o
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/noise_reduction_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/pcan_gain_control_util.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_io.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_test.src ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.d ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.o ./Src/Userbuild/bpnn/tensorflow/lite/experimental/microfrontend/lib/window_util.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-experimental-2f-microfrontend-2f-lib

