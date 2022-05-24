PImage ruta;
Principal p;

void setup(){
  size(400,600);
  ruta = loadImage( "ruta.jpg" );
  image( ruta, 0, 0);
   p = new Principal();
}

void draw(){
  image( ruta, 0, 0,400,600);
    p.display();
  p.colision();

}
