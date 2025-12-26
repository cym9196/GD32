################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# 将这些工具调用的输入和输出添加到构建变量 
C_SRCS += \
../Firmware/RISCV/stubs/_exit.c \
../Firmware/RISCV/stubs/close.c \
../Firmware/RISCV/stubs/fstat.c \
../Firmware/RISCV/stubs/isatty.c \
../Firmware/RISCV/stubs/lseek.c \
../Firmware/RISCV/stubs/read.c \
../Firmware/RISCV/stubs/sbrk.c \
../Firmware/RISCV/stubs/write.c \
../Firmware/RISCV/stubs/write_hex.c 

C_DEPS += \
./Firmware/RISCV/stubs/_exit.d \
./Firmware/RISCV/stubs/close.d \
./Firmware/RISCV/stubs/fstat.d \
./Firmware/RISCV/stubs/isatty.d \
./Firmware/RISCV/stubs/lseek.d \
./Firmware/RISCV/stubs/read.d \
./Firmware/RISCV/stubs/sbrk.d \
./Firmware/RISCV/stubs/write.d \
./Firmware/RISCV/stubs/write_hex.d 

OBJS += \
./Firmware/RISCV/stubs/_exit.o \
./Firmware/RISCV/stubs/close.o \
./Firmware/RISCV/stubs/fstat.o \
./Firmware/RISCV/stubs/isatty.o \
./Firmware/RISCV/stubs/lseek.o \
./Firmware/RISCV/stubs/read.o \
./Firmware/RISCV/stubs/sbrk.o \
./Firmware/RISCV/stubs/write.o \
./Firmware/RISCV/stubs/write_hex.o 


# 每个子目录必须为构建它所贡献的源提供规则
Firmware/RISCV/stubs/%.o: ../Firmware/RISCV/stubs/%.c Firmware/RISCV/stubs/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -DGD_ECLIPSE_GCC -DUSE_STDPERIPH_DRIVER -I"../Firmware/GD32VW55x_standard_peripheral/" -I"../Firmware/GD32VW55x_standard_peripheral/Include/" -I"../Firmware/RISCV/drivers/" -I"../Firmware/RISCV/stubs/" -I"../inc/" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -Wa,-adhlns=$@.lst   -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


clean: clean-Firmware-2f-RISCV-2f-stubs

clean-Firmware-2f-RISCV-2f-stubs:
	-$(RM) ./Firmware/RISCV/stubs/_exit.d ./Firmware/RISCV/stubs/_exit.o ./Firmware/RISCV/stubs/close.d ./Firmware/RISCV/stubs/close.o ./Firmware/RISCV/stubs/fstat.d ./Firmware/RISCV/stubs/fstat.o ./Firmware/RISCV/stubs/isatty.d ./Firmware/RISCV/stubs/isatty.o ./Firmware/RISCV/stubs/lseek.d ./Firmware/RISCV/stubs/lseek.o ./Firmware/RISCV/stubs/read.d ./Firmware/RISCV/stubs/read.o ./Firmware/RISCV/stubs/sbrk.d ./Firmware/RISCV/stubs/sbrk.o ./Firmware/RISCV/stubs/write.d ./Firmware/RISCV/stubs/write.o ./Firmware/RISCV/stubs/write_hex.d ./Firmware/RISCV/stubs/write_hex.o

.PHONY: clean-Firmware-2f-RISCV-2f-stubs

