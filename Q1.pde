void setup(){
size(800,600);
frameRate(30);
}

void BG(){ //Background
translate(400,300);
scale(1,-1);
fill(255,0,0);
rect(-400,0,799,-300); //ponto inicial, tamanho
fill(153);
rect(-400,0,799,300);
}

float x = -370;
float y = 30;
float vx = 37/3;
float vy = 10; //velocidade vertical
float ay = -0.5; //gravidade

void draw(){
BG();
fill(0,0,255);
circle(x,y,60);
if((x >= 370.1) || (x <= -370.1)){
  vx = -vx;
}

if(y <= 30) {
  vy = 10;

}

x = x + vx;
y += vy;
vy += ay;

}