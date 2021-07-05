float cx =0, cy = 75;
float alpha = 0, w = PI/120;


void setup(){
   size(500,500);
   frameRate(60);
}

void startSetup(){
  background(155,155,155);
  translate(250, 250);
  scale(-1, 1);
  stroke(0, 0,0 );
  strokeWeight(2);
  fill(155);
  circle(0, 0, 200);

}

void draw(){
  startSetup();
  rotate(alpha);
  strokeWeight(1);
  circle(cx, cy, 50);


  translate(cx, cy);
  rotate(-4*alpha);
  strokeWeight(4);
  stroke(255, 0, 0);
  point(0, 25);
  alpha += w;
}
