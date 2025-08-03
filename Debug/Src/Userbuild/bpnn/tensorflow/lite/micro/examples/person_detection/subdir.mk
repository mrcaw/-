################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.cc" \
"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.cc" 

CC_DEPS += \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.d" \
"./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.d" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.src" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.src" 

OBJS += \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.o" \
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.src":"../Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.cc" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.o":"Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.src" "Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection

clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection:
	-$(RM) ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/detection_responder_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/image_provider_test.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/main_functions.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/model_settings.src ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.d ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.o ./Src/Userbuild/bpnn/tensorflow/lite/micro/examples/person_detection/person_detection_test.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-tensorflow-2f-lite-2f-micro-2f-examples-2f-person_detection

