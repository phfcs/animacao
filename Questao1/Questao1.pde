//definir as variaveis
  int t;
  float x, y, aMax;
  boolean ida, up;
  
void setup() {
  x = 30;
  y = 570;
  t = 0;
  aMax = 470;
  ida = true;
  up = true;
  
  size(800,600);
}

void draw() {
  background(128,128,128);
  circle(x, y, 60); 
  if ((x <= 770) && (ida)) {
    x = x + 800/120;
  }
  else {
    ida = false;
    x = x - 800/120;
    if (x <= 30) {
      ida = true; 
    }
  }
  
  if (y >= 570) {
      t = 1;
      up = true; 
  }
  if ((y >= aMax) && (up)) {
    y = 570 - 10*t + (0.5*t*t)/2 ;
  }
  else {
    up = false;
    y = 570 + 10*t + (0.5*t*t)/2 ;
  }
  t++ ;
}
