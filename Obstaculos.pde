class Obstaculos {
  
  float x, y,ancho,alto;

  Obstaculos(float x_, float y_, float ancho_, float alto_) {
    x = x_;
    y = y_ ;
    ancho= ancho_;
    alto= alto_;
  
  }

  void display() {
    fill( 0 );
    rect( x, y,ancho, alto );
  }

  
  float posX(){
    return x;
  }
  
  float posY(){
    return y;
  }
  
}
