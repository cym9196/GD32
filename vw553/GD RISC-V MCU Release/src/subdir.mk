################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# 将这些工具调用的输入和输出添加到构建变量 
C_SRCS += \
../src/gd32vw553h_eval.c \
../src/gd32vw55x_it.c \
../src/main.c \
../src/systick.c 

C_DEPS += \
./src/gd32vw553h_eval.d \
./src/gd32vw55x_it.d \
./src/main.d \
./src/systick.d 

OBJS += \
./src/gd32vw553h_eval.o \
./src/gd32vw55x_it.o \
./src/main.o \
./src/systick.o 


# 每个子目录必须为构建它所贡献的源提供规则
src/%.o: ../src/%.c src/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medlow -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -DGD_ECLIPSE_GCC -DUSE_STDPERIPH_DRIVER -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -Wa,-adhlns=$@.lst   -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


clean: clean-src

clean-src:
	-$(RM) ./src/gd32vw553h_eval.d ./src/gd32vw553h_eval.o ./src/gd32vw55x_it.d ./src/gd32vw55x_it.o ./src/main.d ./src/main.o ./src/systick.d ./src/systick.o

.PHONY: clean-src

