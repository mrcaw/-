################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/Userbuild/bpnn/src/tm_layers.c" \
"../Src/Userbuild/bpnn/src/tm_layers_O1.c" \
"../Src/Userbuild/bpnn/src/tm_layers_fp8.c" \
"../Src/Userbuild/bpnn/src/tm_model.c" \
"../Src/Userbuild/bpnn/src/tm_stat.c" 

COMPILED_SRCS += \
"Src/Userbuild/bpnn/src/tm_layers.src" \
"Src/Userbuild/bpnn/src/tm_layers_O1.src" \
"Src/Userbuild/bpnn/src/tm_layers_fp8.src" \
"Src/Userbuild/bpnn/src/tm_model.src" \
"Src/Userbuild/bpnn/src/tm_stat.src" 

C_DEPS += \
"./Src/Userbuild/bpnn/src/tm_layers.d" \
"./Src/Userbuild/bpnn/src/tm_layers_O1.d" \
"./Src/Userbuild/bpnn/src/tm_layers_fp8.d" \
"./Src/Userbuild/bpnn/src/tm_model.d" \
"./Src/Userbuild/bpnn/src/tm_stat.d" 

OBJS += \
"Src/Userbuild/bpnn/src/tm_layers.o" \
"Src/Userbuild/bpnn/src/tm_layers_O1.o" \
"Src/Userbuild/bpnn/src/tm_layers_fp8.o" \
"Src/Userbuild/bpnn/src/tm_model.o" \
"Src/Userbuild/bpnn/src/tm_stat.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/Userbuild/bpnn/src/tm_layers.src":"../Src/Userbuild/bpnn/src/tm_layers.c" "Src/Userbuild/bpnn/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/src/tm_layers.o":"Src/Userbuild/bpnn/src/tm_layers.src" "Src/Userbuild/bpnn/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/src/tm_layers_O1.src":"../Src/Userbuild/bpnn/src/tm_layers_O1.c" "Src/Userbuild/bpnn/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/src/tm_layers_O1.o":"Src/Userbuild/bpnn/src/tm_layers_O1.src" "Src/Userbuild/bpnn/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/src/tm_layers_fp8.src":"../Src/Userbuild/bpnn/src/tm_layers_fp8.c" "Src/Userbuild/bpnn/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/src/tm_layers_fp8.o":"Src/Userbuild/bpnn/src/tm_layers_fp8.src" "Src/Userbuild/bpnn/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/src/tm_model.src":"../Src/Userbuild/bpnn/src/tm_model.c" "Src/Userbuild/bpnn/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/src/tm_model.o":"Src/Userbuild/bpnn/src/tm_model.src" "Src/Userbuild/bpnn/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/Userbuild/bpnn/src/tm_stat.src":"../Src/Userbuild/bpnn/src/tm_stat.c" "Src/Userbuild/bpnn/src/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/Userbuild/bpnn/src/tm_stat.o":"Src/Userbuild/bpnn/src/tm_stat.src" "Src/Userbuild/bpnn/src/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-Userbuild-2f-bpnn-2f-src

clean-Src-2f-Userbuild-2f-bpnn-2f-src:
	-$(RM) ./Src/Userbuild/bpnn/src/tm_layers.d ./Src/Userbuild/bpnn/src/tm_layers.o ./Src/Userbuild/bpnn/src/tm_layers.src ./Src/Userbuild/bpnn/src/tm_layers_O1.d ./Src/Userbuild/bpnn/src/tm_layers_O1.o ./Src/Userbuild/bpnn/src/tm_layers_O1.src ./Src/Userbuild/bpnn/src/tm_layers_fp8.d ./Src/Userbuild/bpnn/src/tm_layers_fp8.o ./Src/Userbuild/bpnn/src/tm_layers_fp8.src ./Src/Userbuild/bpnn/src/tm_model.d ./Src/Userbuild/bpnn/src/tm_model.o ./Src/Userbuild/bpnn/src/tm_model.src ./Src/Userbuild/bpnn/src/tm_stat.d ./Src/Userbuild/bpnn/src/tm_stat.o ./Src/Userbuild/bpnn/src/tm_stat.src

.PHONY: clean-Src-2f-Userbuild-2f-bpnn-2f-src

