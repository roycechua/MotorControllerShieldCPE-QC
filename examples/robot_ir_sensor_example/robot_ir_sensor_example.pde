#include <Controller.h>

// Robot IR Sensor 
// for Line Following

// by Royce Chua and Team CPE-TIPQC

// Controller for Robotics Outreach

// Created December 5, 2019

// Create a bot object/instance
Controller bot = Controller();
// this will allow you to control the robot

void setup()
{
  // codes placed here only run once to initialize values.
  // for this program we don't need to put anything here.
}

void loop()
{
  // these codes loop forever
  // To read data from the IR Sensor (either read black or white)
  // You can use these two functions
  // ReadSensorVal1() 
  // ReadSensorVal2()

  if(ReadSensorVal1()  >= 500 && ReadSensorVal2() <= 100){
    bot.moveRight(150,175);
  }
  else if(ReadSensorVal1()  <= 100 && ReadSensorVal2() >= 500){
    bot.moveLeft(170,150);
  }
  else if (ReadSensorVal1()  <= 100 && ReadSensorVal2() <= 100){
    bot.moveForward(100,100);
  }
  else if (ReadSensorVal1()  >= 500 && ReadSensorVal2() >= 500){
    bot.moveForward(100,100);
  }
}

