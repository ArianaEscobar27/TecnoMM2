
//--------------------------------------
// Gestor de seniales (con enie)
// Emiliano Causa 2011-2012
//--------------------------------------
/*

 Constructores:
 ==============
 
 - GestorSenial( ) 
 
 - GestorSenial( float minimo_, float maximo_ ) 
 
 - GestorSenial(
 float minimo_, float maximo_, //minimo y maximo del rango de entrada
 int tamanioMuestra_, //tamanio con el que visualiza la s      enial
 float factorAmortiguacion_, //factor con el que filtra 
 float amplitudMaxDerivada_, //rango en el que toma la derivada

 
 Miembros de devolucion:
 =======================
 - float valorIn 
 - float filtrado
 - float derivada

 
 Funciones de devolucion:
 ========================
 - float filtradoNorm()
 - float derivadaNorm()
 
 Ejecutar en cada ciclo:
 =======================
 void actualizar( float valorIn_ ) 
 
 */
class GestorSenial {

  float valorIn, filtrado;
  float minimo;
  float maximo;

  float derivada;

  int tamanioMuestra;
  float factorAmortiguacion;
  float amplitudMaxDerivada;


  GrafXvsTime grafica, graficaFilt, graficaDeriv;

  //-------------------------------------------

  GestorSenial( ) {
    this( 0, 100, 200, 0.1, 0.5);
  }
  //-------------------------------------------
  GestorSenial( float minimo_, float maximo_ ) {
    this( minimo_, maximo_, 200, 0.1, 0.5);
  }
  //-------------------------------------------
  GestorSenial( float minimo_, float maximo_, float factorAmortiguacion_  ) {
    this( minimo_, maximo_, 200, factorAmortiguacion_, 0.5);
  }
  //-------------------------------------------

  GestorSenial( 
  float minimo_, float maximo_, //minimo y maximo del rango de entrada
  int tamanioMuestra_, //tamanio con el que visualiza la senial
  float factorAmortiguacion_, //factor con el que filtra 
  float amplitudMaxDerivada_){//rango en el que toma la derivada


    factorAmortiguacion = factorAmortiguacion_;
    amplitudMaxDerivada = amplitudMaxDerivada_;
    minimo = minimo_;
    maximo = maximo_;
    tamanioMuestra = tamanioMuestra_;

    grafica = new GrafXvsTime( tamanioMuestra, minimo, maximo );
    graficaFilt = new GrafXvsTime( tamanioMuestra, minimo, maximo );
    graficaDeriv = new GrafXvsTime( tamanioMuestra, -amplitudMaxDerivada, amplitudMaxDerivada );
  }
  //-------------------------------------------

  float filtradoNorm() {
    return constrain( map( filtrado, minimo, maximo, 0, 1 ), 0, 1);
  }  
  //-------------------------------------------

  float derivadaNorm() {
    return constrain( map( derivada, -amplitudMaxDerivada, amplitudMaxDerivada, -1, 1 ), -1, 1);
  }  

  //-------------------------------------------

  void actualizar( float valorIn_ ) {

    valorIn = valorIn_;
    float anterior = filtrado;
    //filtrado = valorIn * factorAmortiguacion + filtrado * (1-factorAmortiguacion);
    filtrado = valorIn * (1-factorAmortiguacion) + filtrado * factorAmortiguacion;
    derivada = filtrado-anterior;

    grafica.agregar( valorIn ); 
    graficaFilt.agregar( filtrado ); 
    graficaDeriv.agregar( derivada );

  }
  //-------------------------------------------

  void imprimir( float left, float top ) {
    imprimir( left, top, 500, 100, true, false );
  }
  //-------------------------------------------

  void imprimir( float left, float top, float ancho, float alto ) {
    imprimir( left, top, ancho, alto, true, false );
  }
  //-------------------------------------------

  void imprimir( float left, float top, float ancho, float alto, 
  boolean mostrarFiltrado, boolean mostrarDerivada ) {

    pushStyle();
    fill( 0 );
    stroke( 255, 255, 255 );
    grafica.imprimir( left, top, ancho, alto, true );

    if ( mostrarFiltrado ) {
      stroke( 0, 255, 0 );
      graficaFilt.imprimir( left, top, ancho, alto, false );
    }

    if ( mostrarDerivada ) {
      stroke( 255, 255, 0 );
      graficaDeriv.imprimir( left, top, ancho, alto, false );
    }
    
    popStyle();

  }
}
// ------------------------------------------------------------------------------------------------------
// MARCA: Grafica X versus TIME - Grafica X versus TIME - Grafica X versus TIME - Grafica X versus TIME -
// ------------------------------------------------------------------------------------------------------
// Este objeto permite grafica evoluciones en el tiempo
// Emiliano Causa - Julio 2006
//
// GrafXvsTime(int cantPuntos_, float minimo_, float maximo_) - inicializa el objeto, definiendo la cantidad de puntos
//                                                              a monitorear, y los valores minimo y maximos
// void agregar( float dato ) - agrega puntos a la grÔøΩfica
// void ( float left, float top, float ancho, float alto ) - imprime los datos en pantalla en la posiciÔøΩn y las
//                                                                   dimensiones indicadas
//
class GrafXvsTime {
  float minimo;
  float maximo;

  int cantPuntos;
  int cont;

  float datos[];

  GrafXvsTime(int cantPuntos_, float minimo_, float maximo_) {
    minimo = minimo_;
    maximo = maximo_;
    cantPuntos = cantPuntos_;
    datos = new float[cantPuntos];
    cont = 0;
  }

  void agregar( float dato ) {
    datos[cont] = dato;
    cont = (cont+1) % cantPuntos;
  }

  void imprimir( float left, float top, float ancho, float alto, boolean conFondo ) {

    if ( conFondo ) {
      rectMode(CORNER);
      rect(left, top, ancho, alto);
    }
    float paso = ancho/cantPuntos;
    for (int i=1 ; i<cantPuntos ; i++) {
      if (i != cont) {
        float valor1 = map( constrain( datos[i-1], minimo, maximo ), minimo, maximo, top+alto, top );
        float valor2 = map( constrain( datos[i], minimo, maximo ), minimo, maximo, top+alto, top);
        line( left + paso * (i-1), valor1, left + paso * i, valor2 );
      }
    }
  }
}
