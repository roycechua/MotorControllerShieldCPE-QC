/*
  Test.h - Test library for Wiring - implementation
  Copyright (c) 2006 John Doe.  All right reserved.
*/


// include this library's description file
#include "Controller.h"

// include description files for other libraries used (if any)
#include "HardwareSerial.h"

#include "AFMotor.h"
#include "Arduino.h"

// Constructor /////////////////////////////////////////////////////////////////
// Function that handles the creation and setup of instances

AF_DCMotor motor3(3, MOTOR12_64KHZ);
AF_DCMotor motor4(4, MOTOR12_64KHZ);

Controller::Controller(void)
{
  // initialize this instance's variables
  // value = givenValue;
  Sensor1 = A4; 
  Sensor2 = A2; 
  // do whatever is required to initialize the library
  pinMode(Sensor1, INPUT);
  pinMode(Sensor2, INPUT);
  Serial.begin(9600);
}

// Public Methods //////////////////////////////////////////////////////////////
// Functions available in Wiring sketches, this library, and other libraries

void Controller::moveForward(void)
{
  motor3.run(FORWARD);      // turn it on going forward
  motor4.run(FORWARD);      // turn it on going forward
  motor3.setSpeed(200);
  motor4.setSpeed(200);
}

void Controller::moveBackward(void)
{
  motor3.run(BACKWARD);     //turn it on going backward
  motor4.run(BACKWARD);
  motor3.setSpeed(255); 
  motor4.setSpeed(255);
}

void Controller::moveLeft(void)
{
  motor3.run(FORWARD);
  motor4.run(BACKWARD);
  motor3.setSpeed(200);
  motor4.setSpeed(150);

}

void Controller::moveRight(void)
{
  motor3.run(BACKWARD);
  motor4.run(FORWARD);
  motor3.setSpeed(150);
  motor4.setSpeed(255);
}

float Controller::ReadSensorVal1(void){
  sensorValue1 = analogRead(Sensor1);
  return sensorValue1;
}

float Controller::ReadSensorVal2(void){
  sensorValue2 = analogRead(Sensor2);
  return sensorValue2;
}

// Private Methods /////////////////////////////////////////////////////////////
// Functions only available to other functions in this library

// void Controller::doSomethingSecret(void)
// {
//   digitalWrite(13, HIGH);
//   delay(200);
//   digitalWrite(13, LOW);
//   delay(200);
// }

