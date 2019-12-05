## MotorControllerShieldCPE-QC
This is a library for the L293D motor controller shield based on AFMotor.h library customized for the Robotics Workshop of the Computer Engineering Department of TIP-QC. 

This was made for a Robot that has 2 Brushed DC Motors, two IR Sensors, and an Ultrasonic Sensor(library will support this in a future release).

You can read here or go to the web page [roycechua.me/MotorControllerShieldCPE-QC/](http://roycechua.me/MotorControllerShieldCPE-QC/) 

### Instructions

To use this library you must 

1\. Download AFMotor.h library from Adafruit wbich you can conveniently download on the Arduino IDE by clicking **Sketch** then **Include Libaries** 

![Going to Arduino Libaries](https://i.ibb.co/nM2VfKL/Finding-AFMotor-h.png)

2\. Then download the **Adafruit Motor Shield V1**

![Downloading Adafruit Motor Shield V1](https://i.ibb.co/jJgRYrJ/Downloading-Adafruit-Motor-Shield-library-V1.png)

3\. Clone this repository or Download as ZIP, if you cloned this repository make sure to move it to the Arduino library location (ex. _C:\Users\<Username>\Documents\Arduino\libraries_ for Windows) OR if you downloaded this repository as a ZIP file, extract it then move it to the Arduino library location.

The two libraries should be present in the Arduino library folder like the one below.

![Example of installed libraries](https://i.ibb.co/X4w1SsT/Example-of-installed-libraries-in-Arduino.png)

4\. MotorControllerShieldCPE-QC library's example should now be present in the Arduino IDE through File -> Examples -> MotorControllerShieldCPE-QC. You should be able to see 3 examples.

![Example of MotorControllerShieldCPE-QC library](https://i.ibb.co/8jxxn6F/Arduino-Example-of-Motor-Controller-Shield-CPE-QC-library-in-Examples.png)

Example of the Robot Navigation codes

![](https://i.ibb.co/jGzY0PF/Robot-Navigation-Code-Example.png)

![](https://i.ibb.co/kGdGtRJ/Robot-Navigation-Code-Example-2.png)

Remember to create an instance of Controller.
```C++
Controller bot = Controller();
```

For robot navigation, these are the functions available
```C
bot.moveForward(speedmotorA, speedMotorB) // from 0-255
bot.moveBackward(speedmotorA, speedMotorB) // from 0-255
bot.moveLeft(speedmotorA, speedMotorB) // from 0-255
bot.moveRight(speedmotorA, speedMotorB) // from 0-255
```
To read data from the IR sensor
``` C
  bot.ReadSensorVal1() 
  bot.ReadSensorVal2()
```

### Support or Contact

Having trouble with the library? Just send an email to **royce236@gmail.com** and we’ll help you sort it out.
