#include <Controller.h>

// Robot Navigation
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
  bot.moveForward(100,100) 
  delay(500);
  bot.moveBackward(100,100);
  delay(1000); 
  bot.moveLeft(170,150);
  delay(1000);
  bot.moveRight(150,175); 
}

