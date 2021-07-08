float cx =0, cy = 75;//ponto de rotação de x e y
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
  //coloracao do circulo
  fill(155);
  //raio da circuferencia maior
  circle(0, 0, 200);

}

void draw(){
  startSetup();
  rotate(alpha);
  strokeWeight(1);
  //posição do eixo x e y da circuferencia menor e raio
  circle(cx, cy, 50);


  translate(cx, cy);
  //rotação da bolinha que esta inscrita no circulo menor
  rotate(-4*alpha);
  strokeWeight(4);
  //cor da bolinha
  stroke(255, 0, 0);
  point(0, 25);
  alpha += w;
}
