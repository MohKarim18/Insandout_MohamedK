//Press "m" while moving your mouse or point your mouse and press "m"
int presses = 0;
int xPos[]=new int [400] ;
int yPos[]=new int [400];
void setup() {
  size (1080, 720);
}

void draw() {
  background (0);

  for (int i = 0; i<400 && i<presses; i++) {
    fill( 100, 200 ,1500);
    fill( random(100),random(240),random(120));
    ellipse(xPos[i], yPos[i], 50, 50);

    if (i>0){
      stroke(255);
      line(xPos[i-1], yPos[i-1], xPos[i], yPos[i]);
    }
  }
}

void keyPressed() {
  if(key=='m'){
  xPos[presses]=mouseX;
  yPos[presses]=mouseY;
  presses++;
  }
  
}
    
 
