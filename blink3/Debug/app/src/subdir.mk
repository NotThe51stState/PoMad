################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/src/main.c \
../app/src/stm32f0xx_it.c 

OBJS += \
./app/src/main.o \
./app/src/stm32f0xx_it.o 

C_DEPS += \
./app/src/main.d \
./app/src/stm32f0xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/%.o app/src/%.su app/src/%.cyclo: ../app/src/%.c app/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DSTM32F091xC -c -I"C:/STM/PoMad/blink3/app/inc" -I"C:/STM/PoMad/blink3/bsp/inc" -I"C:/STM/PoMad/blink3/cmsis/core" -I"C:/STM/PoMad/blink3/cmsis/device/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-app-2f-src

clean-app-2f-src:
	-$(RM) ./app/src/main.cyclo ./app/src/main.d ./app/src/main.o ./app/src/main.su ./app/src/stm32f0xx_it.cyclo ./app/src/stm32f0xx_it.d ./app/src/stm32f0xx_it.o ./app/src/stm32f0xx_it.su

.PHONY: clean-app-2f-src

