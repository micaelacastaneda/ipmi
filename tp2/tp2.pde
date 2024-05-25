///Castañeda Micaela 93566/6
///Comision 2
///juego elegido: ajedrez

int pantalla= 0;
int x =150;
int y =10;
int ancho=450;
int largo=250;
int cambio = 0;
int MovX= 0;
int MovY=-800; 
int negativo;
PImage I1, I2, I3, I4, I5, I6 ;


// imagenes 
void setup(){
size(640,480);
I1= loadImage("I1.jpg");
I2= loadImage("I2.jpg");
I3= loadImage("I3.jpg");
I4= loadImage("I4.jpg");
I5= loadImage("I5.jpg");
I6= loadImage("i6.png");
frameRate(60);
}

void draw() {
  background(0);
println(frameRate);

//inicio

if(pantalla==0){
  
  frameRate(60);
  fill(219, 86, 86);
  ellipse(mouseX,mouseY,15,15);
  fill(250);
  textSize(30);
  text("Click en la imagen \n para comenzar",210,350);
  image(I1, 100, 50, ancho, largo);
} 

// primer obra (1)


 else if(pantalla==1){ 
  image(I2, MovX++*1/2, y, ancho, largo);
  textSize(20);text("Ajedrez\n La leyenda dice que fue creado en el 200 A.C \n por el comandante Han Xin quien lo invento\n para representar una batalla particular", MovX++,340);
cambio= cambio+1;
if (cambio>=650){ pantalla = pantalla+1;
cambio=0; MovX=0;}
  
}
else if(pantalla==2){
  negativo= 670-MovX++;
 image(I3, x, MovY++*3/2, ancho, largo);
textSize(25);text("¿Como jugar? \nSolo se necesitan dos personas  \ncada jugador debe elegir un color de figuras",MovY++,200);
cambio= cambio+1;
if (cambio>=1200){ pantalla = pantalla+1; MovX=0;
cambio=0;}
}

else if (pantalla==3){
negativo= 690-MovX++;
image(I4,negativo, y, ancho, largo);
  textSize(25);text("Hay 6 tipos de piezas y cada \n una tiene su forma de moverse \n solo deben moverse por las casillas \n del color elegido",MovX++-600,340);
cambio= cambio+1;
if (cambio>=660){ pantalla = pantalla+1;  
cambio=0;}
}
else if(pantalla==4){
  cambio=0;
  image(I5, 150, 50, 350, 300);
  image(I6,380,120,150,150);
  fill(255,255,255);textSize(20);text("Jaque mate\n el objetivo es dar jaque mate al rey adversario\n ocurre cuando rey esta en jaque y\n no puede salir de esta situacion", 150,400);
    if (mouseX > 380 && mouseX < 530 && mouseY > 120 && mouseY < 270 && mousePressed) {
  pantalla = 0;  
frameRate(60); }
  
} 
}
// click para el inicio y pantallas
void mousePressed() {
  if (pantalla == 0 && mouseX > 170 && mouseX < 475 && mouseY > 115 && mouseY < 365) {
    pantalla = 1;
    cambio = 0;
    MovX = 0; // reiniciar MovX
  } else if (pantalla == 1 && mouseX > 80 && mouseX < 240 && mouseY > 100 && mouseY < 200) {
    pantalla = 2;
    cambio = 0;
    MovX = 0; // reiniciar MovX
  } else if (pantalla == 2 && frameCount >= 2000 ) {
    pantalla = 3;
    cambio = 0;
    MovX = 0; // reiniciar MovX
  } else if (pantalla == 3 && frameCount >= 600) {
    pantalla = 4;
    cambio = 0;
  } else if (pantalla == 4 && mouseX > 380 && mouseX < 530 && mouseY > 120 && mouseY < 270 && mousePressed) {
    pantalla = 0;
    cambio = 0;
    MovX = 0;
    MovY = -800;
  } else if (pantalla == 2 && mouseX > 540 && mouseX < 620 && mouseY > 20 && mouseY < 80 && mousePressed) {
    pantalla = 0;
    cambio = 0;
    MovX = 0;
    MovY = -800;
  }
}
