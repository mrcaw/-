################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Src/APP/Display/LQ_Display.c" \
"../Src/APP/Display/LQ_Font.c" \
"../Src/APP/Display/LQ_IPSLCD.c" \
"../Src/APP/Display/LQ_OLED096.c" \
"../Src/APP/Display/LQ_TFT18.c" \
"../Src/APP/Display/LQ_TFT2.c" 

COMPILED_SRCS += \
"Src/APP/Display/LQ_Display.src" \
"Src/APP/Display/LQ_Font.src" \
"Src/APP/Display/LQ_IPSLCD.src" \
"Src/APP/Display/LQ_OLED096.src" \
"Src/APP/Display/LQ_TFT18.src" \
"Src/APP/Display/LQ_TFT2.src" 

C_DEPS += \
"./Src/APP/Display/LQ_Display.d" \
"./Src/APP/Display/LQ_Font.d" \
"./Src/APP/Display/LQ_IPSLCD.d" \
"./Src/APP/Display/LQ_OLED096.d" \
"./Src/APP/Display/LQ_TFT18.d" \
"./Src/APP/Display/LQ_TFT2.d" 

OBJS += \
"Src/APP/Display/LQ_Display.o" \
"Src/APP/Display/LQ_Font.o" \
"Src/APP/Display/LQ_IPSLCD.o" \
"Src/APP/Display/LQ_OLED096.o" \
"Src/APP/Display/LQ_TFT18.o" \
"Src/APP/Display/LQ_TFT2.o" 


# Each subdirectory must supply rules for building sources it contributes
"Src/APP/Display/LQ_Display.src":"../Src/APP/Display/LQ_Display.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_Display.o":"Src/APP/Display/LQ_Display.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/Display/LQ_Font.src":"../Src/APP/Display/LQ_Font.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_Font.o":"Src/APP/Display/LQ_Font.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/Display/LQ_IPSLCD.src":"../Src/APP/Display/LQ_IPSLCD.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_IPSLCD.o":"Src/APP/Display/LQ_IPSLCD.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/Display/LQ_OLED096.src":"../Src/APP/Display/LQ_OLED096.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_OLED096.o":"Src/APP/Display/LQ_OLED096.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/Display/LQ_TFT18.src":"../Src/APP/Display/LQ_TFT18.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_TFT18.o":"Src/APP/Display/LQ_TFT18.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Src/APP/Display/LQ_TFT2.src":"../Src/APP/Display/LQ_TFT2.c" "Src/APP/Display/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 "-fD:/Project/Infineon/LQ_297_IMU/Debug/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc29xb -Y0 -N0 -Z0 -o "$@" "$<"
"Src/APP/Display/LQ_TFT2.o":"Src/APP/Display/LQ_TFT2.src" "Src/APP/Display/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Src-2f-APP-2f-Display

clean-Src-2f-APP-2f-Display:
	-$(RM) ./Src/APP/Display/LQ_Display.d ./Src/APP/Display/LQ_Display.o ./Src/APP/Display/LQ_Display.src ./Src/APP/Display/LQ_Font.d ./Src/APP/Display/LQ_Font.o ./Src/APP/Display/LQ_Font.src ./Src/APP/Display/LQ_IPSLCD.d ./Src/APP/Display/LQ_IPSLCD.o ./Src/APP/Display/LQ_IPSLCD.src ./Src/APP/Display/LQ_OLED096.d ./Src/APP/Display/LQ_OLED096.o ./Src/APP/Display/LQ_OLED096.src ./Src/APP/Display/LQ_TFT18.d ./Src/APP/Display/LQ_TFT18.o ./Src/APP/Display/LQ_TFT18.src ./Src/APP/Display/LQ_TFT2.d ./Src/APP/Display/LQ_TFT2.o ./Src/APP/Display/LQ_TFT2.src

.PHONY: clean-Src-2f-APP-2f-Display

