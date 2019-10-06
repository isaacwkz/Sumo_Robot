################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/Src/system_stm32g4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32g4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32g4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32g4xx.o: C:/2_Development/2-\ Sumo\ Bot/Programing/ESC/ESC_Drive_Motors/Src/system_stm32g4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../../../Inc -I../../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/Any/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/G4xx/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/UILibrary/Inc -I../../../MCSDK_v5.4.1/MotorControl/MCSDK/SystemDriveParams -I../../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../../Drivers/CMSIS/Include -O3 -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/system_stm32g4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

