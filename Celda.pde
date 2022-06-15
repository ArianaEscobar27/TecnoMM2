class Celda {
  //--- Aqui está la celda, nuevamente no todas las variables están en uso
  int posX, posY, posYCirculo, posXCirculo, alto, posYCir, cantSelect, randomFondo, reacomodar;
  float ra;

  //--- Esta son la cantidad de circulos que en cada celda, los fui variando para saber en que punto se acerca más a la obra
  int cantCirculos = 10;
  int masCirculos = 10;
  //---

  int cantBlocks = 2;
  boolean zona, pitchBajo;
  //--- Esto es un arreglo que me permite bloquear cualquier tipo de if, por ahí les puede servir en algún caso
  boolean block [] = new boolean [cantBlocks];

  //--- Ahora todo los circulos son un arraylist, que tiene de diferente con un arreglo normal, es que sete es maleable le puede agregar modificar todo en el momento

  ArrayList<Circulo> balls, balls1;

  float valor;
  Celda(int posX_, int posY_, int randomFondo_, float Ra) {
    //alto = 125;
    //posYCirculo = posYCirculo_;
    Ra=(random(100));
    cantSelect = 5;
    posX = posX_;
    posY = posY_;
    posYCir = posY_;
    randomFondo = randomFondo_;

    //--- Se inicializa como cualquier otro arreglo pero sin el for, ya que eso se hace con una función llamada tu-objeto.add(acá se agrega el constructor del objeto)
    balls = new ArrayList<Circulo>(cantCirculos);
    balls1 = new ArrayList<Circulo>(cantCirculos);


    //--- Está forma reacomoda la posición inicial de los circulos, porque sino quedan todos spawnean juntos   
    for (int i=0; i < cantCirculos; i++) {

      if (reacomodar < 10) {
        posXCirculo = 125 * reacomodar + 65 ;
      } else if (reacomodar > 11) {
        reacomodar = 0 ;
      }
      reacomodar++;
      // this.circulos[i] = new Circulo(posXCirculo, posYCir  +64);

      //--- Acá está el forr con el add

      balls.add(new Circulo(posXCirculo, posYCir  +64));
      if (round(random(cantCirculos)) == i) {
        superposicionCirculos(i);
      }
    }
  }


  void dibujar(boolean pitchBajo_, float valor_) { 

    valor = valor_;
    pitchBajo = pitchBajo_;
    if (randomFondo == 1) {
      fill(0);
    }
    if (randomFondo == 2) {
      fill(255);
    }  
    //--- Cuando la zona es true es donde se habilitan todas las desiciones por celda, por eso zona false no tiene nada, ya que las celdas no hacen nada si no es su turno

    //--- para llamarlo se deja de usar el nombre-objeto [i].dibujar y pasa a ser Circulo ball = balls.get(i); que endefinitiva es mas o menos lo mismo
    if (zona == true ) {
      for (int i=0; i < cantCirculos; i++) { 
        Circulo ball = balls.get(i);
        ball.movimiento(pitchBajo, valor);
        ball.opacidad();

        // this.circulos[i].movimiento(pitchBajo, valor);
        // this.circulos[i].opacidad();
      }
      //--- el Bloequeo permite que únicamente se habilite por una vez, pueden cambiarlo fue mi solución a que no todos los crculos se vuelvan negros o blancos
      //--- la lógica es simple tenés números limitados de selecciones que podes hacer(cantSelect) y siempre la última selección está reservada para desirle al bloqueo
      //--- que se habilite, es la condición cantselect - 1 == i
      //--- Lo que hay que cambiar es que ya no se haga con el mouse sino con la voz, ahora agrego el brightness para que tengan más variables que usar
      if (block[0] == false) {
        for (int i=0; i < cantSelect; i++) {
          if (mouseX > 450 &&  mouseY > posY && mouseY < (alto +125) - 105 ) {
            //this.circulos[round(random(2))].select = 2;
            block [0]= (cantSelect - 1 == i? true: false);
          } else  if (mouseX < 50 &&  mouseY > posY && mouseY > (alto +125) - 15 ) {
            // this.circulos[round(random(2))].select = 3;              
            block [0]= (cantSelect - 1 == i? true: false);
          }
        }
      }
    } else if (zona == false ) {
    }

    stroke(0);
    stroke(225);
    strokeWeight(2);
    rect(posX, posY, width - 2, alto + 125);

    //--- el bloqueo [1] y el bloqueo [2] esta en desuso, pero pueden usarlos
    if (block [1] == false ) {
      if (zona == false) {
        noStroke();
      } else if ( zona == true) {
        block [1] = true;
      }
    }

    for (int i=0; i < cantCirculos; i++) { 
      Circulo ball = balls.get(i);
      // this.circulos[i].dibujar(); 
      ball.dibujar();
    }
    
    
    for (int i=0; i < 10; i+=10) { 
     if(ra < 10){ //probabilidad de que un numero tirado alazar entre 0 y 100 sea menor de 30, tiene una posibilidad del 30%
      Circulo ball = balls.get(i);
      // this.circulos[i].dibujar(); 
      ball.dibujarcirculoArrastrado();
     }
      
    }
  }

  //--- para hacer los circulos partidos al medio, utilice una máscara que es una imagen de un circulo con las mismas dimensiones, q las elipses,
  //--- pero de una mitad blanco y la otra transparente, entonces lo que hago es que se elija un color y uno lo paso como fill y el otro como tint 
  void superposicionCirculos(int i) {   
    Circulo ball = balls.get(i);
    ball.vall.mask(ball.vallInvertido);
    ball.superponerElipses();
  }
}
