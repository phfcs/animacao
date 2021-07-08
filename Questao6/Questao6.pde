float x1;
float y1;
float rc=25;

float r1=37+12.5;
float v1=0;

float x2;
float y2;

float xz=x2=0;
float yz=10;

float vz=PI/2;

float r2=12.5;
float v2=0;


void setup() {
  size(800, 600,P3D);
}

void draw() {
  
  background(155);
translate(width/2,height/2);
scale(2,2);
fill(155
);

rotateX(PI/3);
rotateZ(PI/2);

stroke(255,255,255);
line(-51,-51,0,width,-51,0);
line(-51,-51,0,-51,height,0);
line(-51,-51,0,-51,-51,height);

stroke(0,0,0);

rotateX(PI/3);

line(-51,-51,0,51,-51,0);
line(-51,-51,0,-51,51,0);
line(-51,51,0,51,51,0);
line(51,51,0,51,-51,0);

   stroke(255,0,0);
circle(0,0,100);


x1=r1*cos(v1);
  y1=r1*sin(v1);
  v1=v1-PI/(2*frameRate);

circle(x1,y1,25);


translate(x1,y1,12.5);
   stroke(255,255,0);
  rotateX(PI/2);
  rotateY(v1+PI/2);
  rotateZ(PI/2);
  circle(0,0,25);
  
  x2=r2*cos(v2);
  y2=r2*sin(v2);
  
  v2=v2+4*PI/2*(frameRate);

  xz=r2*cos(vz);
  yz=r2*sin(vz);
  vz=vz-2*PI/(frameRate);

  stroke(0,255,255);
  circle(-xz,yz,5);
  circle(12.5,0,5);

}
