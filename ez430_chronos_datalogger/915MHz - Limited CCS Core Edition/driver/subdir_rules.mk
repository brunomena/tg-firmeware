################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
driver/as.obj: ../driver/as.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/as.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/bmp_as.obj: ../driver/bmp_as.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/bmp_as.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/bmp_ps.obj: ../driver/bmp_ps.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/bmp_ps.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/cma_as.obj: ../driver/cma_as.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/cma_as.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/cma_ps.obj: ../driver/cma_ps.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/cma_ps.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/ports.obj: ../driver/ports.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/ports.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/ps.obj: ../driver/ps.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/ps.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/radio.obj: ../driver/radio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/radio.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

driver/rf1a.obj: ../driver/rf1a.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv5/tools/compiler/msp430_4.2.1/bin/cl430" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\smpl_nwk_config.dat" --cmd_file="C:\Users\Bruno\workspace original\ez430_chronos_datalogger\simpliciti\Applications\configuration\End Device\smpl_config.dat"  -vmspx --abi=coffabi -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv5/ccs_base/msp430/include" --include_path="C:/ti/ccsv5/tools/compiler/msp430_4.2.1/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/driver" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/include" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/logic" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/bluerobin" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Applications/application/End Device" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/boards/CC430EM/bsp_external" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/drivers/code" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/bsp/mcus" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/radios/family5" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/mrfi/smartrf" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk" --include_path="C:/Users/Bruno/workspace original/ez430_chronos_datalogger/simpliciti/Components/nwk_applications" -g --define=__CC430F6137__ --define=ISM_US --define=MRFI_CC430 --define=__CCE__ --diag_warning=225 --display_error_number --diag_wrap=off --silicon_errata=CPU18 --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --call_assumptions=0 --gen_opt_info=2 --printf_support=minimal --preproc_with_compile --preproc_dependency="driver/rf1a.pp" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


