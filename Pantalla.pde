class Pantalla {
//--- Montón de variables, no todas se usan, algunas son fantasmas, una buena forma de darse cuenta cual está en uso seguir elk camino que hacen alrededor del programa -----
  int posXCelda, posYCir, randomFondo;
  int cantCeldas = 4;
  
  //--- Esto es lo que permite que cada área se mueva independientemente, más abajo muestro como fuinciona -----
  int cambPitch;
  //--------
  
  int posYCelda [] = new int[cantCeldas];
  int posLado [] = new int[cantCeldas];
  int change = 0;
  float valor;
  boolean cambCelda, pitchBajo;
  Celda [] celdas = new Celda[cantCeldas];
  
  //--- La Pantalla solo tiene un constructor -----
  Pantalla() {
//--- For principal, al estar dividido por celdas tome los valores del alto de la pantalla y lo dividí en 4 para tener 4 celdas es ese 126 -----
    for (int i=0; i < cantCeldas; i++) {
      randomFondo = round(random(1, 2));
      //posYCelda = 125 * i;
      posXCelda = 1;
      posYCelda [i] =  126 * i;  
 //--- Acá se suma 126 para así dar la forma del rectangulo y luego me permita sacar el área -----
      posLado [i] =  126 + (126 * i);
//--- La variable del Pitch enpieza en 2 porque para sacar el area necesito sacar al menos un punto,
//--- e ir variandolo de área en área así el programa sabe en que área está,
//--- es como si tuvieras el cursos constantemente en un punto -----
      cambPitch = 2;

      this.celdas[i] = new Celda(posXCelda, posYCelda [i], randomFondo, random(100));
    }
  }
  
  void dibujar(boolean pitchBajo_,float valor_) {
    pitchBajo = pitchBajo_;
    valor = valor_;
    for (int i=0; i < cantCeldas; i++) {
      this.celdas[i].dibujar(pitchBajo,valor);
    }
  }

  void interactividad() {   
//--- Las Celdas tienen asignado un booleano que les dice si su zona es true o false, depende del booleano llamado "areaCelda()", que se encuentra más abajo
    for (int i=0; i < cantCeldas; i++) {
      if (areaCelda(i)) { 
        this.celdas[i].zona = true;
        
        // cambCelda = false;
      }
//--- El símbolo ! significa que no se cumpla la condición
      if (!areaCelda(i)) {
        this.celdas[i].zona = false;
      }
    }
  }
//--- Está función la llama el tp1, cuando encuentra un pitch alto
//--- La mejor forma de entenderlo es que un punto que se encuentra en la primer celda se mueve a la siguiente,
//--- así hasta una celda que no se muestra pero permite que la obra se pare, 
//--- nuevamente si se da un pitch alto volves a la primer celda
  void changeCelda() {   
    cambPitch = cambPitch + 128;
    cambPitch = cambPitch >= 128 * 5 ? cambPitch = 2 : cambPitch;


  }


//---  Esta es la condición el arreglo PosYCelda son los posY de las celdas guardados individualmente, así no se pisan los unos a los otros
  boolean areaCelda(int i) {     
    return cambPitch > posYCelda [i] && cambPitch  < posLado [i];
  }
  
  

 }
  
  
  
