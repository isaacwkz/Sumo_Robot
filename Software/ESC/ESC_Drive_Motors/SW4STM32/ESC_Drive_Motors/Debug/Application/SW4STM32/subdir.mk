################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/SW4STM32/startup_stm32g431xx.s 

C_SRCS += \
C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/SW4STM32/syscalls.c 

OBJS += \
./Application/SW4STM32/startup_stm32g431xx.o \
./Application/SW4STM32/syscalls.o 

C_DEPS += \
./Application/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32g431xx.o: C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/SW4STM32/startup_stm32g431xx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Application/SW4STM32/syscalls.o: C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/SW4STM32/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../../../Inc -I../../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/Any/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/G4xx/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/UILibrary/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/SystemDriveParams -I../../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../../Drivers/CMSIS/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Application/SW4STM32/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

