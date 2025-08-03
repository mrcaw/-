################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Src/Userbuild/subdir.mk
-include Src/User/subdir.mk
-include Src/Driver/subdir.mk
-include Src/Core/subdir.mk
-include Src/APP/IMU/subdir.mk
-include Src/APP/Display/subdir.mk
-include Src/APP/subdir.mk
-include Main/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/_PinMap/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/_Lib/DataHandling/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/_Impl/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Vadc/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Vadc/Adc/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Stm/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Src/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Scu/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Qspi/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Qspi/SpiMaster/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Port/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Mtu/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Gtm/Tom/Pwm/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Gtm/Tim/In/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Gtm/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Gtm/Atom/Pwm/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Gpt12/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Flash/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Dma/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Dma/Dma/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Cpu/Trap/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Cpu/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Cpu/Irq/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Cpu/CStart/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Ccu6/Timer/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Ccu6/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Asclin/Std/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Asclin/Spi/subdir.mk
-include Libraries/iLLD/TC29B/Tricore/Asclin/Asc/subdir.mk
-include Libraries/Service/CpuGeneric/SysSe/Math/subdir.mk
-include Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk
-include Libraries/Service/CpuGeneric/StdIf/subdir.mk
-include Libraries/Service/CpuGeneric/If/subdir.mk
-include Libraries/Infra/Platform/Tricore/Compilers/subdir.mk
-include Configurations/Debug/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := LQ_297_IMU
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_SIZE += \
LQ_297_IMU.siz \


# All Target
all: main-build

# Main-build Target
main-build: LQ_297_IMU.elf secondary-outputs

# Tool invocations
LQ_297_IMU.elf: $(OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: TASKING Linker'
	cctc --lsl-file="../Lcf_Tasking_Tricore_Tc.lsl" -Wl-Oc -Wl-OL -Wl-Ot -Wl-Ox -Wl-Oy "D:\Project\Infineon\LQ_297_IMU\Src\APP\IMU\LQ_MPU6050_DMP.o" -Wl--map-file="LQ_297_IMU.map" -Wl-mc -Wl-mf -Wl-mi -Wl-mk -Wl-ml -Wl-mm -Wl-md -Wl-mr -Wl-mu --no-warnings= -Wl--error-limit=42 --fp-model=2 -lrt -lc_fpu --lsl-core=vtc --exceptions --strict --anachronisms --force-c++ -Ctc29xb -o"LQ_297_IMU.elf" -Wl-o"LQ_297_IMU.hex:IHEX" $(OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

LQ_297_IMU.siz: LQ_297_IMU.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: Print Size'
	elfsize  "LQ_297_IMU.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) LQ_297_IMU.siz LQ_297_IMU.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
