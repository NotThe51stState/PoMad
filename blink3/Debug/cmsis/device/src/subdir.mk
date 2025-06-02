################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../cmsis/device/src/startup_stm32f446xx.s 

C_SRCS += \
../cmsis/device/src/system_stm32f4xx.c 

OBJS += \
./cmsis/device/src/startup_stm32f446xx.o \
./cmsis/device/src/system_stm32f4xx.o 

S_DEPS += \
./cmsis/device/src/startup_stm32f446xx.d 

C_DEPS += \
./cmsis/device/src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
cmsis/device/src/%.o: ../cmsis/device/src/%.s cmsis/device/src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DSTM32F446xx -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"
cmsis/device/src/%.o cmsis/device/src/%.su cmsis/device/src/%.cyclo: ../cmsis/device/src/%.c cmsis/device/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F446xx -c -I"C:/STM/PoMad/blink3/app/inc" -I"C:/STM/PoMad/blink3/bsp/inc" -I"C:/STM/PoMad/blink3/cmsis/core" -I"C:/STM/PoMad/blink3/cmsis/device/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-cmsis-2f-device-2f-src

clean-cmsis-2f-device-2f-src:
	-$(RM) ./cmsis/device/src/startup_stm32f446xx.d ./cmsis/device/src/startup_stm32f446xx.o ./cmsis/device/src/system_stm32f4xx.cyclo ./cmsis/device/src/system_stm32f4xx.d ./cmsis/device/src/system_stm32f4xx.o ./cmsis/device/src/system_stm32f4xx.su

.PHONY: clean-cmsis-2f-device-2f-src

