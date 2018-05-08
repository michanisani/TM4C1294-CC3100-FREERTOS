################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
LEDtask.obj: ../LEDtask.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 -me --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/driverlib" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/include" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/portable/CCS/ARM_CM4F" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS" --include_path="d:/ti/TivaWare_C_Series-2.1.4.178" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/examples/common" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/include" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/source" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/platform/tiva-c-connected-launchpad" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=PART_TM4C1294NCPDT --define=TARGET_IS_BLIZZARD_RA1=1 --define=_USE_CLI_ --define=ccs -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="LEDtask.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

cc3100_simplelink.obj: ../cc3100_simplelink.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 -me --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/driverlib" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/include" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/portable/CCS/ARM_CM4F" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS" --include_path="d:/ti/TivaWare_C_Series-2.1.4.178" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/examples/common" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/include" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/source" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/platform/tiva-c-connected-launchpad" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=PART_TM4C1294NCPDT --define=TARGET_IS_BLIZZARD_RA1=1 --define=_USE_CLI_ --define=ccs -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="cc3100_simplelink.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 -me --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/driverlib" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/include" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/portable/CCS/ARM_CM4F" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS" --include_path="d:/ti/TivaWare_C_Series-2.1.4.178" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/examples/common" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/include" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/source" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/platform/tiva-c-connected-launchpad" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=PART_TM4C1294NCPDT --define=TARGET_IS_BLIZZARD_RA1=1 --define=_USE_CLI_ --define=ccs -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

tm4c1294ncpdt_startup_ccs.obj: ../tm4c1294ncpdt_startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 -me --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/driverlib" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/include" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS/portable/CCS/ARM_CM4F" --include_path="D:/download/Micha_Projects/Sensor Group/sensors/ccs_workspace/FreeRTOS_CC3100/FreeRTOS" --include_path="d:/ti/TivaWare_C_Series-2.1.4.178" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/examples/common" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/include" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/simplelink/source" --include_path="d:/ti/CC3100SDK_1.3.0/cc3100-sdk/platform/tiva-c-connected-launchpad" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=PART_TM4C1294NCPDT --define=TARGET_IS_BLIZZARD_RA1=1 --define=_USE_CLI_ --define=ccs -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="tm4c1294ncpdt_startup_ccs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


