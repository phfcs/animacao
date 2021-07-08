float a;
float b;
float w1 = 3*PI/2;

float c;
float d;
float w2 = 3*PI/2;


void setup(){
size(800,600);
frameRate(240);
}

void BG(){ //Background
translate(400,300);
scale(1,-1);
strokeWeight(1);
fill(0,128,255);
rect(-400,-300,800,600); //ponto inicial, tamanho
}

void ombro(){ //ombro preto imovel
stroke(255);
strokeWeight(8);
point(0,0); //centro preto ombro
}


void punho(){
stroke(255);
strokeWeight(8);

a = 65*cos(w1);
b = 65*sin(w1);
point(a,b);

if(w1<5.95){
w1 += 0.01;
}

}


void cotovelo(){
stroke(255);
strokeWeight(8);

c = 26*cos(w2);
d = 26*sin(w2);
point(c,d);

if(w1<5.95){
w2 += 0.01/2; //cotoveloduasvezes mais lento
}

}

void braco(){
stroke(0);
strokeWeight(4);
line(0,0,c,d);
}

void antebraco(){
stroke(0);
strokeWeight(4);
line(c,d,a,b);
}


void draw(){
BG();
braco();
antebraco();
ombro();
cotovelo();
punho();





}