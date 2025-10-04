################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/address.c \
../src/fips202.c \
../src/fors.c \
../src/hash_shake.c \
../src/main.c \
../src/merkle.c \
../src/platform.c \
../src/randombytes.c \
../src/sign.c \
../src/thash_shake_robust.c \
../src/utils.c \
../src/utilsx1.c \
../src/wots.c \
../src/wotsx1.c 

OBJS += \
./src/address.o \
./src/fips202.o \
./src/fors.o \
./src/hash_shake.o \
./src/main.o \
./src/merkle.o \
./src/platform.o \
./src/randombytes.o \
./src/sign.o \
./src/thash_shake_robust.o \
./src/utils.o \
./src/utilsx1.o \
./src/wots.o \
./src/wotsx1.o 

C_DEPS += \
./src/address.d \
./src/fips202.d \
./src/fors.d \
./src/hash_shake.d \
./src/main.d \
./src/merkle.d \
./src/platform.d \
./src/randombytes.d \
./src/sign.d \
./src/thash_shake_robust.d \
./src/utils.d \
./src/utilsx1.d \
./src/wots.d \
./src/wotsx1.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -ID:/fpga/Embedded_Vitis/ps_pl_bram/vitis/system_wrapper/export/system_wrapper/sw/system_wrapper/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


