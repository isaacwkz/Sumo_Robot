################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/MotorControl/subdir.mk
-include Middlewares/FreeRTOS/subdir.mk
-include Drivers/STM32G4xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Application/User/subdir.mk
-include Application/SW4STM32/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
ESC_Drive_Motors.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
ESC_Drive_Motors.list \

OBJCOPY_HEX += \
ESC_Drive_Motors.hex \


# All Target
all: ESC_Drive_Motors.elf secondary-outputs

# Tool invocations
ESC_Drive_Motors.elf: $(OBJS) $(USER_OBJS) ../STM32G431CBUx_FLASH.ld
	arm-none-eabi-gcc -o "ESC_Drive_Motors.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"../STM32G431CBUx_FLASH.ld" --specs=nosys.specs -Wl,-Map="ESC_Drive_Motors.map" -Wl,--gc-sections -static -L../../../MCSDK_v5.4.1/MotorControl/lib --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

ESC_Drive_Motors.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "ESC_Drive_Motors.list"
	@echo 'Finished building: $@'
	@echo ' '

ESC_Drive_Motors.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "ESC_Drive_Motors.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
