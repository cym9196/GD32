################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# 将这些工具调用的输入和输出添加到构建变量 
C_SRCS += \
../Firmware/RISCV/env_Eclipse/handlers.c \
../Firmware/RISCV/env_Eclipse/init.c \
../Firmware/RISCV/env_Eclipse/your_printf.c 

S_UPPER_SRCS += \
../Firmware/RISCV/env_Eclipse/entry.S \
../Firmware/RISCV/env_Eclipse/start.S 

C_DEPS += \
./Firmware/RISCV/env_Eclipse/handlers.d \
./Firmware/RISCV/env_Eclipse/init.d \
./Firmware/RISCV/env_Eclipse/your_printf.d 

OBJS += \
./Firmware/RISCV/env_Eclipse/entry.o \
./Firmware/RISCV/env_Eclipse/handlers.o \
./Firmware/RISCV/env_Eclipse/init.o \
./Firmware/RISCV/env_Eclipse/start.o \
./Firmware/RISCV/env_Eclipse/your_printf.o 


# 每个子目录必须为构建它所贡献的源提供规则
Firmware/RISCV/env_Eclipse/%.o: ../Firmware/RISCV/env_Eclipse/%.S Firmware/RISCV/env_Eclipse/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU Assembler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -Wa,-adhlns=$@.lst   -x assembler-with-cpp -I"../Firmware/RISCV/drivers" -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '

Firmware/RISCV/env_Eclipse/%.o: ../Firmware/RISCV/env_Eclipse/%.c Firmware/RISCV/env_Eclipse/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -DGD_ECLIPSE_GCC -DUSE_STDPERIPH_DRIVER -I"../Firmware/GD32VW55x_standard_peripheral/" -I"../Firmware/GD32VW55x_standard_peripheral/Include/" -I"../Firmware/RISCV/drivers/" -I"../Firmware/RISCV/stubs/" -I"../inc/" -I"C:\Users\cymr9000p\Desktop\GD32\vw553\hardware" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -Wa,-adhlns=$@.lst   -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


clean: clean-Firmware-2f-RISCV-2f-env_Eclipse

clean-Firmware-2f-RISCV-2f-env_Eclipse:
	-$(RM) ./Firmware/RISCV/env_Eclipse/entry.o ./Firmware/RISCV/env_Eclipse/handlers.d ./Firmware/RISCV/env_Eclipse/handlers.o ./Firmware/RISCV/env_Eclipse/init.d ./Firmware/RISCV/env_Eclipse/init.o ./Firmware/RISCV/env_Eclipse/start.o ./Firmware/RISCV/env_Eclipse/your_printf.d ./Firmware/RISCV/env_Eclipse/your_printf.o

.PHONY: clean-Firmware-2f-RISCV-2f-env_Eclipse

