class Principal{
  Circulo f;
  Circulo m;
  Obstaculos o1;
  Obstaculos o2;
  Obstaculos o3;
  Obstaculos o4;
  Obstaculos o5;
  Obstaculos o6;
  int velocidad = 5;
  
  Principal(){
    f = new Circulo( #F57CEF, 150, height-100 );
    m = new Circulo( #7C8CF5, width-150, height-100 );
    o1 = new Obstaculos(0,700,200,50);
    o2 = new Obstaculos(100,550,175,50);
    o3 = new Obstaculos(40,440,50,50 );
    o4 = new Obstaculos(0,350,110,50);
    o5 = new Obstaculos(190,350,85,50 );
    o6 = new Obstaculos(110,240,50,50 );
  }
  
  void display(){
    //Personaje Femenino
    f.display();
    f.mover( velocidad );
    f.limites();
    //Personaje Masculino
    m.display();
    m.moverMasculino();
    //Obstaculos
    o1.display();
    o2.display();
    o3.display();
    o4.display();
    o5.display();
    o6.display();
    
    println( velocidad );
  }
  
 void colision(){
    
   if( (f.posX()> o1.x) &&  (f.posX()<o1.x+o1.ancho) && (f.posY()>o1.y) &&  (f.posY()<o1.y+o1.alto) )  {
      background(0);
      f.y = f.y +10;
    } 
    
     if( (f.posX()>o2.x) &&  (f.posX()<o2.x+o2.ancho) && (f.posY()>o2.y) &&  (f.posY()<o2.y+o2.alto) ){
      background(0);
      f.y = f.y +10;
      velocidad = velocidad-1;
    } if( velocidad <= 0 ){ velocidad = 1; }
    
     if( (f.posX()>o3.x) &&  (f.posX()<o3.x+o3.ancho) && (f.posY()>o3.y) &&  (f.posY()<o3.y+o3.alto) ){
      background(0);
      f.y = f.y +10;
    
    }
    
     if( (f.posX()>o4.x) &&  (f.posX()<o4.x+o4.ancho) && (f.posY()>o4.y) &&  (f.posY()<o4.y+o4.alto) ){
      background(0);
      f.y = f.y +10;
      velocidad = velocidad-1;
    }if( velocidad <= 0 ){ velocidad = 1; }
    
      if( (f.posX()>o5.x) &&  (f.posX()<o5.x+o5.ancho) && (f.posY()>o5.y) &&  (f.posY()<o5.y+o5.alto) ){
      background(0);
      f.y = f.y +10;
     
    }
    
    if( (f.posX()>o6.x) &&  (f.posX()<o6.x+o6.ancho) && (f.posY()>o6.y) &&  (f.posY()<o6.y+o6.alto) ){
      background(0);
      f.y = f.y +10;
      velocidad = velocidad-1;
    }if( velocidad <= 0 ){ velocidad = 1; }
    
  }
  
  


}
