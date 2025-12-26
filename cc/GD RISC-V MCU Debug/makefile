################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# 此处定义了参与生成的所有源
-include sources.mk
-include src/subdir.mk
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


BUILD_ARTIFACT_NAME := cc
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# 将这些工具调用的输入和输出添加到构建变量 
SECONDARY_FLASH_BIN += \
cc.bin \

SECONDARY_LIST += \
cc.lst \

SECONDARY_SIZE += \
cc.siz \


# 所有目标
all: main-build

# 主构建目标
main-build: cc.elf secondary-outputs

# 工具调用
cc.elf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在构建目标： $@'
	@echo '正在调用： GD RISC-V MCU C Linker'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -Wl,-Map,"cc.map" -T GD32VW55X.lds -nostartfiles -Xlinker --gc-sections -L"../ldscripts/" --specs=nano.specs --specs=nosys.specs -o "cc.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo '已结束构建目标： $@'
	@echo ' '

cc.bin: cc.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Flash Image(Bin)'
	riscv-nuclei-elf-objcopy -O binary  "cc.elf"  "cc.bin"
	@echo '已结束构建： $@'
	@echo ' '

cc.lst: cc.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Listing'
	riscv-nuclei-elf-objdump --source --all-headers --demangle --line-numbers --wide "cc.elf" > "cc.lst"
	@echo '已结束构建： $@'
	@echo ' '

cc.siz: cc.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo '正在调用： GD RISC-V MCU Print Size'
	riscv-nuclei-elf-size --format=berkeley "cc.elf"
	@echo '已结束构建： $@'
	@echo ' '

# 其他目标
clean:
	-$(RM) cc.bin cc.elf cc.lst cc.siz
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH_BIN) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
