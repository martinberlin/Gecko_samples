################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include simplicity_sdk_2024.6.2/platform/service/udelay/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/system/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/sleeptimer/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/power_manager/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/memory_manager/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/interrupt_manager/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/device_manager/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/device_manager/devices/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/device_manager/clocks/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/device_init/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/service/clock_manager/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/emlib/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/emdrv/gpiointerrupt/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/driver/leddrv/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/driver/button/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/common/src/subdir.mk
-include simplicity_sdk_2024.6.2/platform/Device/SiliconLabs/EFM32PG22/Source/subdir.mk
-include simplicity_sdk_2024.6.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/subdir.mk
-include simplicity_sdk_2024.6.2/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := ADCtest
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: ADCtest.axf

# Tool invocations
ADCtest.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "/home/martin/SimplicityStudio/v5_workspace/Gecko_samples/ADCtest/autogen/linkerfile.ld" -Wl,--no-warn-rwx-segments -Xlinker --gc-sections -Xlinker -Map="ADCtest.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o ADCtest.axf -Wl,--start-group "./app.o" "./arduino.o" "./main.o" "./simple_button_baremetal.o" "./autogen/sl_board_default_init.o" "./autogen/sl_event_handler.o" "./autogen/sl_power_manager_handler.o" "./autogen/sl_simple_button_instances.o" "./autogen/sl_simple_led_instances.o" "./simplicity_sdk_2024.6.2/hardware/board/src/sl_board_control_gpio.o" "./simplicity_sdk_2024.6.2/hardware/board/src/sl_board_init.o" "./simplicity_sdk_2024.6.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o" "./simplicity_sdk_2024.6.2/platform/Device/SiliconLabs/EFM32PG22/Source/startup_efm32pg22.o" "./simplicity_sdk_2024.6.2/platform/Device/SiliconLabs/EFM32PG22/Source/system_efm32pg22.o" "./simplicity_sdk_2024.6.2/platform/common/src/sl_assert.o" "./simplicity_sdk_2024.6.2/platform/common/src/sl_core_cortexm.o" "./simplicity_sdk_2024.6.2/platform/common/src/sl_slist.o" "./simplicity_sdk_2024.6.2/platform/common/src/sl_syscalls.o" "./simplicity_sdk_2024.6.2/platform/driver/button/src/sl_button.o" "./simplicity_sdk_2024.6.2/platform/driver/button/src/sl_simple_button.o" "./simplicity_sdk_2024.6.2/platform/driver/leddrv/src/sl_led.o" "./simplicity_sdk_2024.6.2/platform/driver/leddrv/src/sl_simple_led.o" "./simplicity_sdk_2024.6.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_burtc.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_cmu.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_core.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_emu.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_gpio.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_iadc.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_msc.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_rtcc.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_system.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_timer.o" "./simplicity_sdk_2024.6.2/platform/emlib/src/em_usart.o" "./simplicity_sdk_2024.6.2/platform/service/clock_manager/src/sl_clock_manager.o" "./simplicity_sdk_2024.6.2/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o" "./simplicity_sdk_2024.6.2/platform/service/clock_manager/src/sl_clock_manager_init.o" "./simplicity_sdk_2024.6.2/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o" "./simplicity_sdk_2024.6.2/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./simplicity_sdk_2024.6.2/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.o" "./simplicity_sdk_2024.6.2/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.o" "./simplicity_sdk_2024.6.2/platform/service/device_manager/src/sl_device_clock.o" "./simplicity_sdk_2024.6.2/platform/service/device_manager/src/sl_device_peripheral.o" "./simplicity_sdk_2024.6.2/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o" "./simplicity_sdk_2024.6.2/platform/service/memory_manager/src/sl_memory_manager_region.o" "./simplicity_sdk_2024.6.2/platform/service/power_manager/src/sl_power_manager.o" "./simplicity_sdk_2024.6.2/platform/service/power_manager/src/sl_power_manager_debug.o" "./simplicity_sdk_2024.6.2/platform/service/power_manager/src/sl_power_manager_hal_s2.o" "./simplicity_sdk_2024.6.2/platform/service/sleeptimer/src/sl_sleeptimer.o" "./simplicity_sdk_2024.6.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o" "./simplicity_sdk_2024.6.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" "./simplicity_sdk_2024.6.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o" "./simplicity_sdk_2024.6.2/platform/service/system/src/sl_system_init.o" "./simplicity_sdk_2024.6.2/platform/service/system/src/sl_system_process_action.o" "./simplicity_sdk_2024.6.2/platform/service/udelay/src/sl_udelay.o" "./simplicity_sdk_2024.6.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: ADCtest.out'
	arm-none-eabi-objcopy "ADCtest.axf" "ADCtest.out"
	@echo ' '

	@echo 'Building hex file: ADCtest.hex'
	arm-none-eabi-objcopy -O ihex "ADCtest.axf" "ADCtest.hex"
	@echo ' '

	@echo 'Building bin file: ADCtest.bin'
	arm-none-eabi-objcopy -O binary "ADCtest.axf" "ADCtest.bin"
	@echo ' '

	@echo 'Building s37 file: ADCtest.s37'
	arm-none-eabi-objcopy -O srec "ADCtest.axf" "ADCtest.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "ADCtest.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) ADCtest.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
