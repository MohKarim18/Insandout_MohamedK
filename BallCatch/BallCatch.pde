//MohamedKMohamed midterm
//Click on balls in order to catch them
int points = 0; 
int ballCount = 10;
Ball[] balls = new Ball[ballCount];
boolean gamePlay = true;

int startTime = 0;
int passedTime = 0;

void setup() {
  size(500, 500);
  noCursor();

  initiateGame();
}

void draw() {
  background(255);
  fill(255, 0, 0);
  triangle(mouseX, mouseY-6, mouseX, mouseY+6, mouseX+10, mouseY); 

  if (gamePlay) {
    passedTime = millis() - startTime;

    for (Ball ball : balls) {
      ball.draw();
      ball.move();

      fill(200);
      textSize(20);
      text((ballCount-points)+" ball(s) remaining. "+passedTime+"ms", 20, 40);
    }
  } else {
    fill(0);
    textAlign(CENTER);
    text("You took "+passedTime+"ms to catch "+ballCount+" balls!\nPress SPACE to restart.", width/2, height/2);
  }
}

void initiateGame() {
  textAlign(LEFT);
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }

  startTime = millis();
  points = 0;
}

void mousePressed() {
  for (Ball ball : balls) {
    if (!ball.clicked && ball.isHover()) {
      ball.clicked = true;
      points = points + 1;
      if (points == ballCount) {
        gamePlay = false;
      }
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    initiateGame();
    gamePlay = true;
  }
}
