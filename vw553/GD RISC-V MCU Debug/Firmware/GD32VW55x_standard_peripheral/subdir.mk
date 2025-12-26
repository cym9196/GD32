################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# 将这些工具调用的输入和输出添加到构建变量 
C_SRCS += \
../Firmware/GD32VW55x_standard_peripheral/system_gd32vw55x.c 

C_DEPS += \
./Firmware/GD32VW55x_standard_peripheral/system_gd32vw55x.d 

OBJS += \
./Firmware/GD32VW55x_standard_peripheral/system_gd32vw55x.o 


# 每个子目录必须为构建它所贡献的源提供规则
Firmware/GD32VW55x_standard_peripheral/%.o: ../Firmware/GD32VW55x_standard_peripheral/%.c Firmware/GD32VW55x_standard_peripheral/subdir.mk
	@echo '正在构建文件： $<'
	@echo '正在调用： GD RISC-V MCU C Compiler'
	riscv-nuclei-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mdiv -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -DGD_ECLIPSE_GCC -DUSE_STDPERIPH_DRIVER -I"../Firmware/GD32VW55x_standard_peripheral/" -I"../Firmware/GD32VW55x_standard_peripheral/Include/" -I"../Firmware/RISCV/drivers/" -I"../Firmware/RISCV/stubs/" -I"../inc/" -I"C:\Users\cymr9000p\Desktop\GD32\vw553\hardware" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -Wa,-adhlns=$@.lst   -c -o "$@" "$<"
	@echo '已结束构建： $<'
	@echo ' '


clean: clean-Firmware-2f-GD32VW55x_standard_peripheral

clean-Firmware-2f-GD32VW55x_standard_peripheral:
	-$(RM) ./Firmware/GD32VW55x_standard_peripheral/system_gd32vw55x.d ./Firmware/GD32VW55x_standard_peripheral/system_gd32vw55x.o

.PHONY: clean-Firmware-2f-GD32VW55x_standard_peripheral

