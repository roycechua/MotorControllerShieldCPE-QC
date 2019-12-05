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
  // bot.moveForward(speedmotorA, speedmotorB) is used to move the bot forward.
  bot.moveForward(100,100); // bot.moveForward() can also be run, default speedMotorA and speedMotorB is 150

  delay(500); // delay(milliseconds), is a function used to pause the program for a certain amount of time in milliseconds.

  // bot.moveBackward(speedmotorA, speedmotorB) is used to move the bot backward.
  bot.moveBackward(100,100); // bot.moveBackward() can also be run, default speedMotorA and speedMotorB is 150

  delay(1000); 

  // bot.moveLeft(speedmotorA, speedmotorB) is used to make the bot turn left.
  bot.moveLeft(170,150); // bot.moveLeft() can also be run, default speedMotorA is 200 and speedMotorB is 150
  
  delay(1000);

  // bot.moveRight(speedmotorA, speedmotorB) is used to make the bot turn left.
  bot.moveRight(150,175); // bot.moveLeft() can also be run, default speedMotorA is 150 and speedMotorB is 200

}

