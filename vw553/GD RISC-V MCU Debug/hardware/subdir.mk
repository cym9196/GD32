################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# 将这些工具调用的输入和输出添加到构建变量 
C_SRCS += \
../hardware/OLED.c \
../hardware/OLED_Data.c \
../hardware/img.c 

C_DEPS += \
./hardware/OLED.d \
./hardware/OLED_Data.d \
./hardware/img.d 

OBJS += \
./hardware/OLED.o \
./hardware/OLED_Data.o \
./hardware/img.o 


# 每个子目录必须为构建它所贡献的源提供规则
hardware/%.o: ../hardware/%.c hardware/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -DGD_ECLIPSE_GCC -DUSE_STDPERIPH_DRIVER -I"../Firmware/GD32VW55x_standard_peripheral/" -I"../Firmware/GD32VW55x_standard_peripheral/Include/" -I"../Firmware/RISCV/drivers/" -I"../Firmware/RISCV/stubs/" -I"../inc/" -I"C:\Users\cymr9000p\Desktop\GD32\vw553\hardware" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -Wa,-adhlns=$@.lst   -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


clean: clean-hardware

clean-hardware:
	-$(RM) ./hardware/OLED.d ./hardware/OLED.o ./hardware/OLED_Data.d ./hardware/OLED_Data.o ./hardware/img.d ./hardware/img.o

.PHONY: clean-hardware

