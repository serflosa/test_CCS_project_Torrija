################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
apps/rest-coap/coap-common.obj: ../apps/rest-coap/coap-common.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.3/bin/cl430" -vmspx --abi=eabi --data_model=restricted -O2 --use_hw_mpy=F5 --include_path="C:/ti/ccsv6/ccs_base/msp430/include" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/core" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/coap-app" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-coap" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-common" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-rfid" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-usb" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/rfid" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/torrija" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_api" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_msp" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.3/include" --advice:power="all" --define=__MSP430F5519__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --printf_support=minimal --preproc_with_compile --preproc_dependency="apps/rest-coap/coap-common.pp" --obj_directory="apps/rest-coap" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

apps/rest-coap/coap-server.obj: ../apps/rest-coap/coap-server.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.3/bin/cl430" -vmspx --abi=eabi --data_model=restricted -O2 --use_hw_mpy=F5 --include_path="C:/ti/ccsv6/ccs_base/msp430/include" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/core" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/coap-app" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-coap" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/rest-common" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-rfid" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/apps/application-usb" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/rfid" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/torrija" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_api" --include_path="C:/Users/eserflo/workspace_v6_1/test_CCS_project_Torrija/platform/usb_msp" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.3/include" --advice:power="all" --define=__MSP430F5519__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --printf_support=minimal --preproc_with_compile --preproc_dependency="apps/rest-coap/coap-server.pp" --obj_directory="apps/rest-coap" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


