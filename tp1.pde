import oscP5.*;

float umbralDeRuidoAmp = 40;
float umbralDeRuidoPitch = 30;
float umbralDeRuidoBrillo = 0.6;
float umbralDeRuido = 30;

float velMaxCir = 15;
float f = 0.9;




//--- Más cosas copiadas o que vimos en clase -----

Pantalla pantalla;

OscP5 osc; 
float amp = 0.0;
float pitch = 0.0;
float ruido = 0.0;
float brillo = 0.0;
float movimientoCir, opacidadCir;
boolean cambCelda;
GestorSenial gestorAmp, gestorPitch, gestorRuido, gestorBrillo;

//--- Estado del Pitch -----
boolean hayPitch = false;
boolean antesHabiaPitch = false;
boolean empezoElPitch = false;
boolean terminoElPitch = false;
boolean hayPitchBajo, antesHabiaPitchBajo, empezoElPitchBajo, terminoElPitchBajo,hayBrillo,antesHabiaBrillo,empezoElBrillo,terminoElBrillo;

void setup() {

  //---Todo copia de lo que hicieron los profes -----

  size(500, 500);
  pantalla = new Pantalla();
  osc = new OscP5(this, 12345);
  gestorAmp = new GestorSenial( umbralDeRuidoAmp, 100, f );
  gestorPitch = new GestorSenial( umbralDeRuidoPitch, 100, f );
  gestorRuido = new GestorSenial( umbralDeRuido, 100, f );
  gestorBrillo = new GestorSenial( umbralDeRuidoBrillo, 100, f );
}

void draw() {
  //--- Esto es una copia de lo que hicieron los Profes -----
  gestorAmp.actualizar( amp ); 
  gestorPitch.actualizar( pitch ); 
  gestorRuido.actualizar( ruido );
  gestorBrillo.actualizar( brillo );
  
  background(200);
  //--- Por acá viaja la variable del amperaje al movimiento  
  pantalla.dibujar(empezoElPitchBajo,movimientoCir);

  //--- Analisis del amperaje, mientras mas amperaje haya más se mueven los circulos -----
  movimientoCir = map(gestorAmp.filtradoNorm(), 0, 1, 0, velMaxCir);
  
  //--- Aún no se implementó la opacidad ----- 
  opacidadCir = map(gestorPitch.filtradoNorm(), 0, 0.5, 1, width + 50);
  //if(gestorAmp.filtradoNorm() > 0.4){}

  //--- Analisis Pitch Bajo -----
  hayPitchBajo = gestorPitch.filtradoNorm() < 0.35;
  empezoElPitchBajo = !antesHabiaPitchBajo && hayPitchBajo; 
  terminoElPitchBajo = antesHabiaPitchBajo && !hayPitchBajo;
       // println(gestorPitch.filtradoNorm());

  //--- Analisis brillo -----
  hayBrillo = gestorBrillo.filtradoNorm() < 0.35;
  empezoElBrillo = !antesHabiaBrillo && hayBrillo; 
  terminoElBrillo = antesHabiaBrillo && !hayBrillo;

  //--- Analisis Pitch Alto -----
  hayPitch = gestorPitch.filtradoNorm() > 0.6;
  empezoElPitch = !antesHabiaPitch && hayPitch; 
  terminoElPitch = antesHabiaPitch && !hayPitch;

  if (empezoElPitch) {
    pitch = 1;
    pantalla.changeCelda();
  }

  //-----------------------------

  //--- Pantalla de interactividad, ahí es donde debería de ir las interactividades que respectan a la voz, no sus datos, solo la acción o el evento -----

  pantalla.interactividad();

  //--- Lo que permite darle un cierre a los datos de la altura, ya que al estar en el draw constantemente está entrando info -----
  antesHabiaPitch = hayPitch;
  antesHabiaPitchBajo = hayPitchBajo;
}


void oscEvent( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println("amp: " + amp);
  }

  if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
    //println("pitch: " + pitch);
  }

  if (m.addrPattern().equals("/ruido")) {
    ruido = m.get(0).floatValue();
   // println("ruido: " + ruido);
  }

  if (m.addrPattern().equals("/brillo")) {
    brillo = m.get(0).floatValue();
    //println("pitch: " + pitch);
  }
}

void mousePressed(){
  //this.pantalla.mousePresionado();
}
