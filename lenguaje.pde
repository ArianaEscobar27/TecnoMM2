PImage ruta;
Principal p;

void setup(){
  size(600,900);
  ruta = loadImage( "ruta.jpg" );
  image( ruta, 0, 0,600,900);
   p = new Principal();
}

void draw(){
  image( ruta, 0, 0,600,900);
    p.display();
  p.colision();

}
