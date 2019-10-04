# Sumo_Robot
Sumo Robot for SRG 2020

This README will be updated as I progress on this project.
Once, SRG is over, I will clean up the repo as necessary.

## ESC
ESC in used is a development board from ST Microelectronics, B-G431B-ESC1.
This is a small form factor ESC based on STM32G431.
ST Motor Control Workbench (henceforth referred to as 'MCWB') is used to generate the necessary code.

I will be using magnetic encoder, [AS5047P](https://ams.com/documents/20143/36005/AS5047P_DS000324_2-00.pdf), to sense the rotor position. According to the [datasheet](https://www.st.com/content/ccc/resource/technical/document/user_manual/group1/86/3f/45/e0/12/18/47/85/DM00564746/files/DM00564746.pdf/jcr:content/translations/en.DM00564746.pdf), encoder pins are found on PB6 and PB7. Timer used is TIM4.
This has to be changed manually in MCWB under 'Digital I/O'

I will be compiling the code in STM32CubeIDE. According to this [errata](https://www.st.com/st-mc-suite/home/assets/pdf/release-notes/Release%20Notes%20for%20X-Cube-MCSDK.pdf) there are problems generating the code for STM32CubeIDE, skip to section 'Working with STM32CubeIDE for Motor Control projects' for more details.

Following that guide you should be able to compile the code without any problems.

### ESC Configurations
Configurations changed:
1. Motor paramters (refer to the bottom of this section for an example)
2. Speed Sensing
  - Changed to Quadrature Encoder
3. Digital I/O
  - Changed quadrature encoder timer and pinout used (TIM4 and PB6/PB7 respectively)
4. Fimrware Management 
  - PWM Frequency was changed to 24'000Hz
  - Current Feed Forward was turned on
  - Undervoltage sensing was changed to 14V to accomadate 4s LiPo
  - FreeRTOS was turned on
  
#### Motor Parameters: (generated from Motor Profiler)
Pole Pairs: 7
Max Speed: 10'000
Nominal Current: 30A
Nominal DC Voltage: 16.4V
Rs: 0.1R
Ls: 0.013mH
B-emf constant: 0.9V/krpm
##### Sensors:
Quadrature Sensors
Pulse per mechanical revolution: 1000
> Note that it is pulse per rev and not counts per rev

This should bring you up and running quickly.
However, the torque output is very low.
