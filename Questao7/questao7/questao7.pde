int mov = 1;
float inclinacao = 0;

// coordenadas da esfera
float y = 100;

// coordenadas dos pontos
float Ax = 400, Ay = 100, Az = 0;
float Bx = -100, By = 50/3, Bz = 500;
float Dx = 100, Dy = -50/3, Dz = 500;

//velocidade angular
float w = 0;
// velocidade linear
float v = 0;

void setSpeed(int num){
  if(num == 1 || num == 3){
    w = PI/360;
    v = 0.46296;
  }else if(num == 2){
    w = PI/120;
    v = 0.27778;
  }
}


void InitialSetup(){
  background(200);
  translate(500, 600, 0);
  rotateZ(-PI/2);
  rotateY(-PI/2);
  scale(1,1,-1);
  //rotateZ(-PI/2 );
  
  strokeWeight(2);
  stroke(255, 0, 0); 
  line(0, 0, 0, 500, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 500, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 500);
}

void setup(){
  size(1100,1000, P3D);
  frameRate(60);
}

void esfera(float x, float y, float z){
  stroke(0);
  strokeWeight(40);
  point(x, y, z);
}

void draw(){
   InitialSetup();
   setSpeed(mov);

   if(mov == 1){
      mov1();
   }else if(mov == 2){
     mov2();
   }else if(mov == 3){
     mov3();
   }
}

void mov1(){
  translate(400, y, 500);
  rotateY(inclinacao);
  translate(-400, -y, -500);
  esfera(Ax, y, Az);
  
  if(inclinacao <  PI/2){
    inclinacao += w;
    y -= v;
  }else{
   mov = 2;
   inclinacao = w;
  }
}

void mov2(){
  translate(0, y, 500);
  rotateY(inclinacao);
  translate(0, -y,-500);
  esfera(Bx, y, Bz);
  
  if(inclinacao <  PI){
    inclinacao += w;
    y -= v;
  }else{
   mov = 3;
   inclinacao = w;
  }
}

void mov3(){
  translate(-400, -y, 500);
  rotateY(inclinacao);
  translate(400, y,-500);
  esfera(Dx, y, Dz);
    
  if(inclinacao <  PI/2){
    inclinacao += w;
    y -= v;
  }else{
   mov = 0;
  }
}
