# Sumo Robot
Sumo Robot for Singapore Robot Games (SRG) 2020

You may find the writeup (in progress) over at the [Wiki](https://github.com/isaacwkz/Sumo_Robot/wiki).

## Background
Singapore Robot Games has been going for many years where the main participants were poly students and SEA universities (notably Indonesian universities)
As time and technology moved forward, we noticed the electronics mostly stayed the same.

I participated with 2 friends (forming 2 seperate teams) with the intention to revamp the electronics.

The following is a rundown of the parts used.

## Electronics
### Drivetrain
Robot is powered from 2 beefy [brushless motors](https://hobbyking.com/en_us/d2826-10-1400kv-brushless-motor.html) intended for RC hobby.
A 32-bit ESC, 
[B-G431B-ESC1](https://www.st.com/en/evaluation-tools/b-g431b-esc1.html), running FOC algorithm was used.
Motor 
Motor is sensored, [AS5047P](https://ams.com/as5047p). This allows very fine control of the motor movements.

### Brain
At the heart of the robot is a [STM32G474RE](https://www.st.com/en/microcontrollers-microprocessors/stm32g474re.html).
This particular MCU has a FPU for floating point operations and a wide variety of analog peripherals.
The control board includes an IMU, [MPU-6050](https://www.invensense.com/products/motion-tracking/6-axis/mpu-6050/).

### RC Link
A FrSky Taranis QX7 paired with a XM+ recevier was used.

### Traction
A vacuum was used to generate negative pressure on the bottom of the robot. This provides extra traction greater than weight of the robot.

### Power
Drivetrain power is supplied from 2x [3s LiPo](https://hobbyking.com/en_us/turnigy-2200mah-3s-25c-lipo-pack.html) while power for control board is supplied from a [2s LiPo](https://hobbyking.com/en_us/turnigy-1000mah-2s-20c-lipo-pack.html)

## Mechanics
### Body
The body is 3D fully 3D printed at 0.6mm nozzle, 0.35mm layer height, 3 shells.

### Gearbox
A [Neverest 40 Classic Gearbox](https://www.andymark.com/products/neverest-classic-40-gearbox-no-motor) of ratio 40:1 was used.

### Wheels
[BaneBot T81 wheels](http://www.banebots.com/product/T81P-293BG.html) was used
