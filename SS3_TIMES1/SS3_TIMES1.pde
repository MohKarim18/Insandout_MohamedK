//MOHAMEDKMOHAMED SS3_TIMES1
PImage Times;  

void setup() {
  size(750, 450);
  Times= loadImage("times.jpg");





}
void draw() {
background(Times);
    textSize(35);
fill(0);
  textAlign(RIGHT);
  text("GO AWAY", 170, 45);
  
  noStroke();
  fill(255);
  circle(210, 130, 65);
  fill(255, 0, 0);

  rect(205, 165, 10, 108);
  fill(255);
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      fill(55);
    } else if (mouseButton == RIGHT) {
      fill(0, 255, 255);
    }
  } else {
    fill(126); // Gray
  }
  ellipse(180, 115, 20, 20);
  fill(205, 180, 90, 200);
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      fill(104, 196, 10, 108);
    } else if (mouseButton == RIGHT) {
      fill(0, 0, 255);
    }
  } else {
    fill(126); // Gray
  }
  ellipse(241, 115, 20, 20);
  fill(20, 20, 11, 200);
  if (mouseButton == LEFT) {
    fill(0, 0, 255, 190);
  }
  arc(210, 135, 50, 50, 0, PI/1.0);
  if (mouseButton == LEFT) {
    fill(255);
  } {
    rect(10, 90, 30, 90);
    fill(255, 0, 0);
  } {
    ellipse(25, 110, 20, 20);
    if (mouseButton == LEFT)
      fill(255, 255, 0);

  } {
    ellipse(25, 135, 20, 20);
    if (mouseButton == LEFT)
      fill(0, 255, 0);
  } {
    ellipse(25, 160, 20, 20);
    if (mouseButton == LEFT)
      fill(255, 0, 0);
  }
  arc(-210, 135, 50, 50, 0, PI/1.0);
  if (mouseButton == LEFT) 
  println("GO AWAY!");{
}
}
