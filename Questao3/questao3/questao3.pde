  float x, y, w, alpha;
  
void setup() {
  size(800,600);
  background(128,128,128);
  frameRate(60);
  x = 100;
  y = 0;
  w = 0;
}

void initial() {
  translate(400, 300);
  scale(1, -1);
  strokeWeight(1);
  stroke(0);
  line(-400, 0, 400, 0);
  line(0, 300, 0, -300);
  alpha = PI / 240;
}


void draw() {
  initial();
  rotate(w);
  strokeWeight(2);
  stroke(255, 0, 0);
  point(x, y);
  
  if (x <= 200) {
    w += alpha;
    x += 100*alpha/PI;
  }
}
