/*switch statement uses rosserial to communicate
This code needs to be loaded onto the arduino uno
in order to drive WALL-E around
*/

#include <BMSerial.h>
#include <RoboClaw.h>
#include <ros.h>
#include <std_msgs/Char.h>
#include <std_msgs/String.h>

//Roboclaw Address (128)
#define address 0x80

//Setup communcaitions with roboclaw. Use pins 5,6 with 10ms timeout
RoboClaw roboclaw(5,6,10000); //(rx,tx,timeout)

ros::NodeHandle nh; //init rosNode 

std_msgs::String str_msg; //create string msgs
ros::Publisher driveComms("driveComms", &str_msg); //declare publisher


int pos = 0;    // variable to store the servo position 
char inByte;    //init inByte
int ultrasonicsensorPin = A0;
int sensorValue = 0;

//init all the strings to be published in the state machine
//strings are not stored inside a message instance; instead an unsigned char is stored
//so when publishing, you must store the string data elsewhere and set the pointer
//this is what we're doing below.
char forwards[] = "forwards";
char waiting[]  = "waiting";
char left[]     = "left";
char right[]    = "right";
char stopped[]  = "stop";
char near[]   = "too close!!";

//ROS callback funct
void motor_cb(const std_msgs::Char& cmd_msg){ 
  sensorValue = analogRead(ultrasonicsensorPin); //init ultrasonic
  if (sensorValue >200){

        //state machine that responds to char recieved
      //single quotes tell controller to get ASCII value
      //eg. 'a'=97
    switch(cmd_msg.data){
    case 2: 
      str_msg.data = forwards;
      roboclaw.ForwardMixed(address,30);
      break;
    case 1: 
      str_msg.data = left;
      roboclaw.TurnRightMixed(address,23);
      break;
    case 3: 
      str_msg.data = right;
      roboclaw.TurnLeftMixed(address,23);
      break;
    case 5: 
      str_msg.data = stopped;
      roboclaw.ForwardMixed(address,0);
      delay(50);
      roboclaw.TurnRightMixed(address,0);
      delay(50);
      roboclaw.TurnLeftMixed(address,0);
      break;
    default:
      str_msg.data = waiting;
      // roboclaw.ForwardMixed(address,0);
      // delay(50);
      roboclaw.TurnRightMixed(address,0);
      roboclaw.TurnLeftMixed(address,0);
      roboclaw.ForwardMixed(address,15);
  }
}
else {
     str_msg.data = near;
  roboclaw.ForwardMixed(address,0);
  delay(50);
  roboclaw.TurnRightMixed(address,0);
  delay(50);
  roboclaw.TurnLeftMixed(address,0);
  }
}

ros::Subscriber<std_msgs::Char> sub("move", motor_cb);

void setup(){
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(driveComms);

  roboclaw.begin(2400);
  roboclaw.ForwardMixed(address,0);
  roboclaw.TurnLeftMixed(address,0);
  roboclaw.TurnRightMixed(address,0);

}

void loop(){
  nh.spinOnce();
  driveComms.publish(&str_msg);
  delay(1000);
  
}