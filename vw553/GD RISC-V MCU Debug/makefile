################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# 此处定义了参与生成的所有源
-include sources.mk
-include src/subdir.mk
-include hardware/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/src/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/hardware/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/e/407/01-程序源码/OLED-V2.0/GB2312/01-OLED功能函数测试-4针脚I2C接口/Hardware/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/Firmware/RISCV/stubs/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/Firmware/RISCV/env_Eclipse/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/Firmware/GD32VW55x_standard_peripheral/Source/subdir.mk
-include build/GD_RISC-V_MCU_Debug/.obj/Firmware/GD32VW55x_standard_peripheral/subdir.mk
-include build/GD_RISC-V_MCU_Debug/subdir.mk
-include Firmware/RISCV/stubs/subdir.mk
-include Firmware/RISCV/env_Eclipse/subdir.mk
-include Firmware/GD32VW55x_standard_peripheral/Source/subdir.mk
-include Firmware/GD32VW55x_standard_peripheral/subdir.mk
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


BUILD_ARTIFACT_NAME := vw553
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# 将这些工具调用的输入和输出添加到构建变量 
SECONDARY_FLASH_BIN += \
vw553.bin \

SECONDARY_LIST += \
vw553.lst \

SECONDARY_SIZE += \
vw553.siz \


# 所有目标
all: main-build

# 主构建目标
main-build: vw553.elf secondary-outputs

# 工具调用
vw553.elf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在构建目标： $@'
	@echo '正在调用： GD RISC-V MCU C Linker'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -Wl,-Map,"vw553.map" -T GD32VW55X.lds -nostartfiles -Xlinker --gc-sections -L"../ldscripts/" --specs=nano.specs --specs=nosys.specs -o "vw553.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo '已结束构建目标： $@'
	@echo ' '

vw553.bin: vw553.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Flash Image(Bin)'
	riscv-nuclei-elf-objcopy -O binary  "vw553.elf"  "vw553.bin"
	@echo '已结束构建： $@'
	@echo ' '

vw553.lst: vw553.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Listing'
	riscv-nuclei-elf-objdump --source --all-headers --demangle --line-numbers --wide "vw553.elf" > "vw553.lst"
	@echo '已结束构建： $@'
	@echo ' '

vw553.siz: vw553.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Print Size'
	riscv-nuclei-elf-size --format=berkeley "vw553.elf"
	@echo '已结束构建： $@'
	@echo ' '

# 其他目标
clean:
	-$(RM) vw553.bin vw553.elf vw553.lst vw553.siz
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH_BIN) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
