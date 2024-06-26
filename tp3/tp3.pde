//Castañeda Micaela 93566/6
//video  https://youtu.be/Gw7gtmE5kJc

PImage io;
int cantidad;
int diametro;
int circulogrande;
int circulitos;
int AUMENTO;
color fondo;
boolean clicked = false; // invertir los colores

void setup() {
  size(800, 400);
 cantidad = width / 13;
 circulogrande = width / 10;
 circulitos = width / 100;
 AUMENTO = 15;
 diametro = width / cantidad;
 fondo = color(255, 255, 255);
 io = loadImage("ilusionoptica.png");
  noStroke();}

void draw() {
  if (clicked) {
    background(invertColor(fondo)); 
    fill(invertColor(0));}  
  else {background(fondo);fill(0); } 
  image(io, 0, 0);
  io.resize(396, 400);
  circulitos(cantidad, diametro, width / 2, mouseY, AUMENTO); 
  circulos(circulogrande);}
// invertir colores
color invertColor(color c) {
  return color(255 - red(c), 255 - green(c), 255 - blue(c));}
  
//

void circulitos(int cantidad, int diametro, int initialX, int mouseY, int tamanioaumentado)
{ for (int x = 0; x < cantidad; x++) 
{ for (int y = 0; y < cantidad; y++)
{ if (esPar(x + y))
{ ellipse(initialX - (cantidad / 2) * diametro + x * diametro + diametro * 30, y * diametro + diametro * -1.5, diametro, diametro);
  if (dist(mouseX, mouseY, initialX - (cantidad / 2) * diametro + x * diametro + diametro * 30, y * diametro + diametro * 1.5) <= diametro * 2)
{ellipse(initialX - (cantidad / 2) * diametro + x * diametro + diametro * 30, y * diametro + diametro * -1.5, tamanioaumentado, tamanioaumentado);} 
  else { ellipse(initialX - (cantidad / 2) * diametro + x * diametro + diametro * 30, y * diametro + diametro * -1.5, diametro, diametro);}}}}}

void circulos(int cantidadcirculos) {
  for (int i = 0; i < cantidadcirculos; i++) {
    float tamañocX = map(i, 0, cantidadcirculos - 1, 0, width * 0.5);
    float tamañocY = map(i, 0, cantidadcirculos - 1, 0, width * 0.3);
    float opacidad = map(i, 0, cantidadcirculos - 1, 200, 0);
    fill(0, opacidad);
    ellipse(width * 3 / 4, height / 2, tamañocX, tamañocY); }}
    
  boolean esPar(int x) {
  return x % 2 == 0; }
    
    
void keyPressed() {
  if (key == 'a') 
  {fondo = color(2, 77, 234); } 
    else if (key == 'b') 
  {fondo = color(2, 2, 2); } else if (key == 'c') 
  { fondo = color(234, 208, 2);} 
  else if (key == 'd') {fondo = color(65, 139, 37);}
  if (key == 'r') {resetearVariables(); }}
  
  // reset
void resetearVariables() 
{ cantidad = width / 13;
  circulogrande = width / 20;
  circulitos = width / 50;
  AUMENTO = 10;
  diametro = width / cantidad;
  fondo = color(255, 255, 255);}

void mouseMoved() {
  if (dist(mouseX, mouseY, width * 3 / 4, height / 2) <= circulogrande / 2) { circulogrande += 1; }
}

void mousePressed() 
{clicked = !clicked;} // el false declarado
