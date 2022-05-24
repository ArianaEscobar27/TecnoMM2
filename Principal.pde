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
    f = new Circulo( #F57CEF, width-300, height-50 );
    m = new Circulo( #7C8CF5, width-100, height-50 );
    o1 = new Obstaculos(0,450,150,50);
    o2 = new Obstaculos(70,350,130,50);
    o3 = new Obstaculos(40,250,50,50 );
    o4 = new Obstaculos(0,150,100,50);
    o5 = new Obstaculos(150,150,50,50 );
    
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
    
  
  }
  
  


}
