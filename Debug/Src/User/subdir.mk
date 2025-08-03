################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/User/LQ_PID.c" \
"../Src/User/LQ_Quat.c" 

COMPILED_SRCS += \
"Src/User/LQ_PID.src" \
"Src/User/LQ_Quat.src" 

C_DEPS += \
"./Src/User/LQ_PID.d" \
"./Src/User/LQ_Quat.d" 

OBJS += \
"Src/User/LQ_PID.o" \
"Src/User/LQ_Quat.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/User/LQ_PID.src":"../Src/User/LQ_PID.c" "Src/User/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/User/LQ_PID.o":"Src/User/LQ_PID.src" "Src/User/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/User/LQ_Quat.src":"../Src/User/LQ_Quat.c" "Src/User/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/User/LQ_Quat.o":"Src/User/LQ_Quat.src" "Src/User/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-User

clean-Src-2f-User:
	-$(RM) ./Src/User/LQ_PID.d ./Src/User/LQ_PID.o ./Src/User/LQ_PID.src ./Src/User/LQ_Quat.d ./Src/User/LQ_Quat.o ./Src/User/LQ_Quat.src

.PHONY: clean-Src-2f-User

