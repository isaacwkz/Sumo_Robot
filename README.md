# Sumo_Robot
Sumo Robot for SRG 2020

This README will be updated as I progress on this project.
Once, SRG is over, I will clean up the repo as necessary.

## ESC
ESC in used is a development board from ST Microelectronics, B-G431B-ESC1.
This is a small form factor ESC based on STM32G431.
ST Motor Control Workbench (henceforth referred to as 'MCWB') is used to generate the necessary code.

I will be using magnetic encoder, AS5047P, to sense the rotor position. According to the [datasheet](https://www.st.com/content/ccc/resource/technical/document/user_manual/group1/86/3f/45/e0/12/18/47/85/DM00564746/files/DM00564746.pdf/jcr:content/translations/en.DM00564746.pdf), encoder pins are found on PB6 and PB7. Timer used is TIM4.
This has to be changed manually in MCWB under 'Digital I/O'

I will be compiling the code in STM32CubeIDE. According to this [errata](https://www.st.com/st-mc-suite/home/assets/pdf/release-notes/Release%20Notes%20for%20X-Cube-MCSDK.pdf) there are problems generating the code for STM32CubeIDE, skip to section 'Working with STM32CubeIDE for Motor Control projects' for more details.

Following that guide the code should compile without any hiccups.

