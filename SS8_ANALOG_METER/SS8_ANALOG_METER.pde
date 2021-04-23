//MohamedKMohamed_SS8-analogmeter

import processing.serial.*;
Serial myPort;
int val;

int value;
int padding = 100;
float mo;

void setup() {
  size(1440, 900);
  myPort = new Serial(this, Serial.list()[0], 9600);
  smooth();
  strokeWeight(3);
  stroke(100);
}

void draw() {
  background(#FFFFF0);
  if (myPort.available() > 0) {
    value = myPort.read();
    println(value); 
    mo= map(value, 255, 0, padding, width-padding);
  } 
  line(padding, height/2, width-padding, height/2);
  noStroke();
  fill(#FFDE14);
  ellipse(mo, height/2, 150, 150); 
  stroke(100);
}
