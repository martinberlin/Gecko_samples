################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_burtc.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_cmu.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_core.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_emu.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_gpio.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_iadc.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_msc.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_rtcc.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_system.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_timer.c \
/home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_usart.c 

OBJS += \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_burtc.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_cmu.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_core.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_emu.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_gpio.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_iadc.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_msc.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_rtcc.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_system.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_timer.o \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_usart.o 

C_DEPS += \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_burtc.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_cmu.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_core.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_emu.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_gpio.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_iadc.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_msc.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_rtcc.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_system.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_timer.d \
./simplicity_sdk_2024.6.2/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
simplicity_sdk_2024.6.2/platform/emlib/src/em_burtc.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_burtc.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_burtc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_cmu.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_cmu.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_core.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_core.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_emu.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_emu.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_gpio.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_gpio.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_iadc.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_iadc.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_iadc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_msc.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_msc.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_msc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_rtcc.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_rtcc.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_rtcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_system.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_system.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_timer.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_timer.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_timer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

simplicity_sdk_2024.6.2/platform/emlib/src/em_usart.o: /home/martin/SimplicityStudio/SDKs/simplicity_sdk/platform/emlib/src/em_usart.c simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c18 '-DDEBUG_EFM=1' '-DEFM32PG22C200F512IM40=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD2503A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCMSIS_NVIC_VIRTUAL=1' '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' '-DSL_CODE_COMPONENT_CORE=core' '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/config" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen" -I"/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/Device/SiliconLabs/EFM32PG22/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/board/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/button/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/clock_manager/src" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/CMSIS/Core/Include" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/device_init/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/common/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emlib/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/emdrv/gpiointerrupt/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/interrupt_manager/inc/arm" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/driver/leddrv/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/memory_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/power_manager/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/common/toolchain/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/system/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/sleeptimer/inc" -I"/home/martin/SimplicityStudio/SDKs/simplicity_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"simplicity_sdk_2024.6.2/platform/emlib/src/em_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

