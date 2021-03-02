AventuraGrafica miAventuraGrafica;


void setup(){
  size(800, 600);
  textAlign(CENTER);
  miAventuraGrafica= new AventuraGrafica();
  
}

void draw() {
 miAventuraGrafica.dibujarPantallas();
  
}

void mousePressed() {
  miAventuraGrafica.pasarPantallas();
}
