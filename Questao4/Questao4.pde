void setup(){
  size(800,600);
  frameRate(120);
} 

void setupBG(){
  translate(400,300);
  scale(1,1);
  stroke(0,0,255);
  strokeWeight(1);
  line(-400,0,400,0);
  stroke(0,255,0);
  strokeWeight(1);
  line(0,-300,0,300);
}

float x, y;
float angulo = 0;
float raio = 20;
float yAnterior;
float centroCirculo = 0;
float PASSO_FRAME = PI/240;

void draw(){
  setupBG();
  noStroke();
  
  float x = -raio * cos(angulo);
  float y = -raio * sin(angulo);
  
  translate(centroCirculo, 0);
  circle(x, y, 5);
  angulo -= PASSO_FRAME;
  
  boolean cruzandoEixoX = (yAnterior < 0 && y > 0) || (yAnterior > 0 && y < 0);
  if (cruzandoEixoX){
    if (centroCirculo >= 0) {
      centroCirculo -= raio;
    } else {
      centroCirculo += raio;
    }
    raio = raio * 2;
  }
  
  yAnterior = y;
}
