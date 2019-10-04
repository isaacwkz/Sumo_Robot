# Sumo_Robot
Sumo Robot for SRG 2020

This README will be updated as I progress on this project.
Once, SRG is over, I will clean up the repo as necessary.

## ESC
ESC in used is a development board from ST Microelectronics, B-G431B-ESC1.
This is a small form factor ESC based on STM32G431.
ST Motor Control Workbench (henceforth referred to as 'MCWB') is used to generate the necessary code.

I will be using magnetic encoder, AS5047P, to sense the rotor position.
According to the [datasheet](https://www.st.com/content/ccc/resource/technical/document/user_manual/group1/86/3f/45/e0/12/18/47/85/DM00564746/files/DM00564746.pdf/jcr:content/translations/en.DM00564746.pdf), encoder pins are found on PB6 and PB7. Timer used is TIM4.
This has to be changed manually in MCWB under 'Digital I/O'

I will be compiling the code in STM32CubeIDE.

First off, multiple unneccesary files has to be excluded from the project.
1. Under 'Drivers/CMSIS' every folder except 'Device' has to be excluded.
These files are for modules that are no enabled in this project. Such as neural network, DSP algorithms etc.

2. Entire folder 'Drivers/CMSIS/Source/Templates' has to be excluded.

3. Under 'Noname/MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/Any/Src/' the files 'gap_gate_driver_ctrl.c' and 'pfc.c' has to be excluded.

4. File 'Noname/MCSDK_v5.4.1/MotorControl/MCSDK/MCLib/G4xx/Src/r3_3_g4xx_pwm_curr_fdbk.c' has to be excluded.
