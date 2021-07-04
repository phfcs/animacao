float a, b, c, d, e, f,g,h,i,j;

float w1 = PI;
float w2 = 0;
float w3 = PI;
float w4 = 0;
float w5 = PI;
float w6 = 0;


void setup(){
size(800,600);
frameRate(120);


}

void sisC(){ //sistema de coordenadas
translate(400,300);
scale(1,-1);
stroke(0,0,255);
strokeWeight(1);
line(-400,0,400,0); 
stroke(0,255,0);
strokeWeight(1);
line(0,-300, 0, 300);
}




void espiral(){
strokeWeight(8);
stroke(255,0,0);
//ponto1
a = 20*cos(w1);
b = 20*sin(w1);
point(a,b);

if(w1<6.2){
w1+=0.01;
}
//ponto2
translate(-20,0);

if(w1>=6.2 && w2<3.2){

c = 40*cos(w2);
d = 40*sin(w2);
point(c,d);


w2+=0.01;
}
//ponto3
translate(40,0);

if(w2>=3.2 && w3<6.3){

strokeWeight(8);
stroke(255,0,0);
e = 80*cos(w3);
f = 80*sin(w3);
point(e,f);

w3+=0.01;
}
//ponto4
translate(-80,0);
if(w3>=6.3 && w4<3.15){

strokeWeight(8);
stroke(255,0,0);
g = 160*cos(w4);
h = 160*sin(w4);
point(g,h);

w4+=0.01;
}
//ponto5
translate(160,0);
if(w4>=3.15 && w5<6.3){

strokeWeight(8);
stroke(255,0,0);
i = 320*cos(w5);
j = 320*sin(w5);
point(i,j);
w5+=0.01;

}

}



void draw(){
sisC();

espiral();

}