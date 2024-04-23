//castañeda micaela 93566/6
//TP1 comision 2
 
 //variable
PImage mipaisaje;

void setup(){
  size(800,400);
  background(249,147,72);
  mipaisaje=loadImage("paisaje1.jpg");
  image(mipaisaje,400,0);
}

void draw(){
  
  fill(118,50,12);
 rect(0,350,400,100); //piso
 
 fill(6,5,9);
 triangle(0,350,250,310,400,350); //montaña1
 triangle(0,350,0,255,100,350); //montaña2
 
 //sol 
 
 fill(255,240,164);
 circle(250,310,40);
 fill(255,232,110);
  circle(250,310,25); 
  
  //palmeras
  
  fill(6,5,9);
 rect(50,0,10,380); //palmera1
 rect(160,50,10,395); //palmera2
 
 //hojas palmera 1
 triangle(175,50,160,50,230,180); 
 triangle(175,50,160,50,200,220); 
 triangle(175,50,160,50,250,150);
 triangle(175,50,160,50,290,150);
 triangle(175,50,160,50,290,150);
 triangle(175,50,160,50,290,100);
 triangle(175,50,160,50,120,180);
 triangle(175,50,160,50,80,140);
 triangle(175,50,160,50,65,115);
 triangle(175,50,160,50,40,90);
 triangle(175,50,80,55,160,40);
 triangle(175,50,165,55,150,1);
 triangle(175,50,170,60,300,20);
 triangle(170,50,180,55,230,10);
 triangle(165,55,180,55,175,1);
 
 ///hojas palmera 2

 triangle(60,35,60,0,180,60);
 triangle(60,45,60,0,150,150);
 triangle(0,60,50,40,50,0);
 triangle(0,120,50,40,50,0);
 
 //mar
  
  noStroke();
 fill(255,115,45);
 triangle(400,400,400,350,200,370);
 fill(241,151,32);
 triangle(400,390,400,360,250,370);
 
 //cabañas
 
 fill(24,20,33);
 rect(0,360,30,30);
 fill(63,59,73);
 triangle(0,360,0,330,40,360);
 
 
}
