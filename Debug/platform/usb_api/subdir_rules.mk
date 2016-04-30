################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
platform/usb_api/%.o: ../platform/usb_api/%.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/bin/msp430-elf-gcc.exe" -c -mmcu=msp430f5519 -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/msp430-elf/include" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/lib" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/lib/gcc/msp430-elf/4.9.1/include" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/lib/gcc/msp430-elf/4.9.1/include-fixed" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/msp430-elf/include/sys" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/msp430-elf/include/machine" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/lib/gcc/msp430-elf/4.9.1" -I"C:/ti/ccsv6/ccs_base/msp430/include_gcc" -I"C:/ti/ccsv6/utils/bin" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/Debug" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/core" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-rfid" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-usb" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/coap-app" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-coap" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-common" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/rfid" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/torrija" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_api" -I"C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_msp" -O3 -Os -ffunction-sections -fdata-sections -fsingle-precision-constant -g -gdwarf-3 -gstrict-dwarf -Wall -minrt -msmall -mcode-region=none -mdata-region=none -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


