class Circulo {
  
  //Obstaculos o;
  float x, y, tam, vel;
  color c = color( #F57CEF );
  float xo = random( 0, width/2);
  float yo = 0;
  PImage trofeo;

  Circulo( color c_, float x_, float y_ ) {
   // o = new Obstaculos();
    trofeo = loadImage( "trofeo.png" );
    x = x_;
    y = y_;
    c = c_;
    tam = 50;
  }

  void display() {
    noStroke();
    fill( c );
    ellipse( x, y, tam, tam );
    
  }

  void mover( float vel_ ) {
    
    vel = vel_;
    
    if ( keyPressed ) {
      if ( keyCode == UP ) {
        y = y-vel;
      }
      if ( keyCode == DOWN ) {
        y = y+vel;
      }
      if ( keyCode == LEFT ) {
        x = x-vel;
      }
      if ( keyCode == RIGHT ) {
        x = x+vel;
      }
    }
    
  }

  void limites() {
    if ( x > width/2-20 ) {
      x = width/2-20;
    }
    if ( x < 20 ) {
      x = 20;
    }
    if ( y > height-20 ) {
      y = height-20;
    }
    if( y < 20 ){ y = 19; }
    if( y == 19 ){
     y += vel;
    }
  }

  void moverMasculino() {
    y=y-4;
    if ( y < 0-tam*2 ) {
      y = 0-tam*2;
    }  if( y < 20 ){ y = 19; }
    if( y == 19 ){
     y += vel;
    }if (y == 19){
    image( trofeo, width-155, y,60,60);
    textSize(43);
    text("Ganaste!", width/2+10 ,130);
    fill( #F57CEF);
    text("Perdiste!", 10 ,130);
    println( y );
    
    }
  }
  
  float posX(){
    return x;
  }
  
  float posY(){
    return y;
  }

}
