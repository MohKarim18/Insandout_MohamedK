//MohamedKMohamed SS4_SUN
//MousePress to Make the sun stay still an appear
 
 void setup() {
    
    size(1080, 720);
    smooth();
    background( 0 );
  }
 
 void draw() {
    noStroke();
    fill( 0, 0, 0, 50);
    rect(0, 0, width, height);  

    float radius = 50 + 30 * ( frameCount * 0.05f );
    if (mousePressed)  {
      stroke( 255, 255, 255 );
      fill( 0,0,0 );
      for (int i = 30; i < height; i = i+5) {
  for (int j = 0; j < width; j = j+5){
    line (i, j, height , width);
    fill ( 255, 200 , 10);
  }
}
    }
    else { 
      stroke( 0, 0, 0 );
      fill( 255, 155, 100 );
    }
 
    ellipse(mouseX, mouseY, radius, radius);
  }
