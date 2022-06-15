class Paleta{
  
  PImage imagen;
  String nombre;
  
  //-----------------------------
  
  Paleta( String nombre_ ){
    nombre = nombre_;
    imagen = loadImage( nombre );
  }
  //-----------------------------
  
  color darUnColor(){
    int posX = int( random( imagen.width ));
    int posY = int( random( imagen.height ));
    return imagen.get( posX , posY );
  }
  //-----------------------------
  
  color darUnColor( float alfa ){
    int posX = int( random( imagen.width ));
    int posY = int( random( imagen.height ));
    color este = imagen.get( posX , posY ); 
    return color( red(este) , green(este) , blue(este) , alfa );
  }
  //-----------------------------
  
  color colorPorCoord( float x , float y ){ //x e y entre 0 y 1
    int xx = int( constrain( map( x , 0 , 1 , 0 , imagen.width ) , 0 , imagen.width-1 ));
    int yy = int( constrain( map( y , 0 , 1 , 0 , imagen.height ) , 0 , imagen.height-1 ));    
    return imagen.get( xx , yy );
  }
  //-----------------------------
  
  color colorPorCoord( float x , float y , float alfa ){ //x e y entre 0 y 1
    int xx = int( constrain( map( x , 0 , 1 , 0 , imagen.width ) , 0 , imagen.width-1 ));
    int yy = int( constrain( map( y , 0 , 1 , 0 , imagen.height ) , 0 , imagen.height-1 ));  
    color este = imagen.get( xx , yy ); 
    return color( red(este) , green(este) , blue(este) , alfa );
  }
  //-----------------------------
}
