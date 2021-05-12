//MohamedKMohamed midterm
class Ball {
  float x, y;
  float xSpeed, ySpeed;
  boolean clicked = false;

  Ball() {
    x = random(width);
    y = random(height);
    xSpeed = random(-2, 2);
    ySpeed = random(-2, 2);
  }

  void draw() {
    if (!clicked) {
      if (isHover()) {
        fill(0, 255, 0);
      } else {
        fill(0);
      }
      circle(x, y, 15);
    }
  }

  void move() {
    x += xSpeed;
    y += ySpeed;

    if (x< 0 || x > width) {
      xSpeed *= -1;
    }
    if (y< 0 || y > height) {
      ySpeed *= -1;
    }
  }

  boolean isHover() {
    float d = dist(x, y, mouseX, mouseY);
    return d <= 25/2;
  }
}
