class Circulo {
  Paleta miPaleta, miPaleta2;
  int  posY, lado, dir, camb, select, dist;
  float opacidad, negro, blanco, randOpacidad, valor, posX;
  int cantRandom = 4;
  float [] random = new float [cantRandom];
  int colores, colores2;
  boolean pitchBajo,superposicion;
  PImage vall, vallInvertido, vallArrastrado;
  Circulo(int posX_, int posY_) {
    miPaleta = new Paleta( "imagen1.png" );
    miPaleta2 = new Paleta( "imagen1.png" );
    vall = loadImage( "vallw.png" );
    vallInvertido = loadImage( "vall-invertido.png" );
    vallArrastrado = loadImage( "vall-arrastrado.png" );//cargar imagen de ball arrastrado
    lado = 125;
    posX = posX_;
    posY = posY_;
    negro = 0;
    blanco = 255;
    select = 1;
    dist = round(random(-2, 2));
    dir = round(random(1, 2));
    dir = dir == 2? dir = (-1): dir;
    randOpacidad = random(1, 10);
    camb = 1;
    for (int i=0; i < cantRandom; i++) {  
      random[i] = random(0, 255);
    }
    colores = miPaleta.darUnColor();
    colores2 = miPaleta2.darUnColor();
  }


//--- Acá están las acciones de que se veían en celda, la selección que está habilitada es la que se muestra en pantalla 
  void dibujar() {
    if (select == 1) {
      tint(colores, opacidad);

      if (random[3] > 200) {
        noFill();
      }
      if(superposicion == true){
        fill(colores2, opacidad);
      } else {
        superposicion = false;
        noFill();
      }
    } else if (select == 2) {
      tint(negro, opacidad);
    } else if (select == 3) {
      tint(blanco, opacidad);
    } else if (select == 4) {
      tint(blanco, opacidad);
    }
    //stroke(255);
    //---Acá está lo que le explique al profe con las ellipses y imagenes, son en sí lo mismo los dos hacer circulos
    //---Pero lo interasante está que para colorear uno, uno se utiliza fill() y el otro tint(), por lo que tengo funciones que hacen lo mismo pero especificas para cada uno
    push();
    ellipse(posX, posY, lado, lado);
    image(vall,posX - 62 , posY -62);
    pop();
  }
  
  void dibujarcirculoArrastrado(){
    push();
    image(vallArrastrado,posX - 62 , posY -62);
    pop();
  }

//--- Esto permite que los circulos queden encapsulados en las celdas y no se vayan
  void movimiento(boolean pitchBajo_,float valor_) {
    valor = valor_;
    pitchBajo = pitchBajo_;
    //println(pitchBajo);
    posX = ( posX>width +200? (  130 + width - posX) : posX );
    posX = ( posX<0 -200 ? (260 + width + posX ): posX );
    
//--- Hay valores que para que los circulos no vayan siempre en la misma dirección varían, la variable valor es la que entra como sonido
    
    //posX = valor > 10? -1 *( valor +  dist) + posX : dir * dist + posX;
    //posX = valor > 5? 1 *( valor +  dist) + posX: dir * dist + posX;
    posX = dir * (( valor +  dist)) + posX;
  }

//--- La opacidad tiene como variable la velocidad en la que sube, por eso a cada circulo se le agrega un valor random que hace que aparezca más rápido o más lento
//--- Se puede cambiar por cualquier tipo de variable, si es que se quiera usar la voz
  void opacidad() {
    opacidad = opacidad + randOpacidad;
  }
  
  void superponerElipses(){
    superposicion = true;
  }
  
}
