/*
  Controller.h - Controller library for Wiring - description
  Copyright (c) 2019 Royce Chua.  All right reserved.
*/

// ensure this library description is only included once
#ifndef Controller_h
#define Controller_h

// library interface description
class Controller
{
  // user-accessible "public" interface
  public:
    int Sensor1; 
    int sensorValue1; 
    int Sensor2; 
    int sensorValue2;
    Controller();
    void moveForward(void);
    void moveBackward(void);
    void moveLeft(void);
    void moveRight(void);
    float ReadSensorVal1(void);
    float ReadSensorVal2(void);

  // library-accessible "private" interface
  // private:
  //   int value;
  //   void doSomethingSecret(void);
};

#endif

