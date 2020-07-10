String pantalla;
PFont texto, titulo;
PImage presentacion, botones;
PImage spawneo, masCrepeers, quienExplotaMas, tambienExploto, exploto1, noQuiereExplotar, salen, caeRayo, solo, gatos, miedo, salida, hierro, persecucion, casa, nieve, ataque, defensa, explotar2;
void setup() {

  size(800, 600);
  textAlign(CENTER);
  pantalla="presentacion";
  titulo= loadFont("Minecraft-z2font-48.vlw");
  texto= loadFont("Minecraft-48.vlw");
  presentacion=loadImage("presentacion.png");
  botones= loadImage("botones.png");
  spawneo= loadImage("0.png");
  masCrepeers=loadImage("1.png");
  quienExplotaMas=loadImage("1a.png");
  tambienExploto=loadImage("1a1.png");
  exploto1=loadImage("1a2.png");
  noQuiereExplotar=loadImage("1b.png");
  salen=loadImage("1b1.png");
  caeRayo=loadImage("1b2.png");
  solo=loadImage("1b3.png");
  gatos=loadImage("2.png");
  miedo=loadImage("2a.png");
  salida=loadImage("2b.png");
  hierro=loadImage("2b2.png");
  persecucion=loadImage("2b2a.png");
  casa=loadImage("2b2b.png");
  nieve=loadImage("2b1.png");
  ataque=loadImage("2b1a.png");
  defensa=loadImage("2b1b.png");
  explotar2=loadImage("2b1c.png");
}


void draw() {
  if (pantalla=="presentacion") {
    pantallaPresentacion();
  } else if (pantalla=="spawneoDeCrepeer") {
    spawneoDeCrepeer();
  } else if (pantalla=="masCrepeers") {
    masCrepeers();
  } else if (pantalla=="quienExplotaMas") {
    quienExplotaMas();
  } else if (pantalla=="tambienExploto") {
    tambienExploto();
  } else if (pantalla=="exploto1") {
    exploto1();
  } else if (pantalla=="creditos") {
    creditos();
  } else if (pantalla=="mejorNo") {
    mejorNo();
  } else if (pantalla=="salen") {
    salen();
  } else if (pantalla=="caeRayo") {
    caeRayo();
  } else if (pantalla=="soloSolinSolito") {
    soloSolinSolito();
  } else if (pantalla=="gatos") {
    gatos();
  } else if (pantalla=="miedo") {
    miedo();
  } else if (pantalla=="salida") {
    salida();
  } else if (pantalla=="hierro") {
    hierro();
  } else if (pantalla=="persecucion") {
    persecucion();
  } else if (pantalla=="casa") {
    casa();
  } else if (pantalla=="nieve") {
    nieve();
  } else if (pantalla=="ataque") {
    ataque();
  } else if (pantalla=="defensa") {
    defensa();
  } else if (pantalla=="explotar2") {
    explotar2();
  }
}

void mousePressed() {
  if (pantalla=="presentacion") {
    clickPantallaPresentacion();
  } else if (pantalla=="spawneoDeCrepeer") {
    clickSpawneoDeCrepeers();
  } else if (pantalla=="masCrepeers") {
    clickMasCrepeers();
  } else if (pantalla=="quienExplotaMas") {
    clickQuienExplotaMas();
  } else if (pantalla=="tambienExploto") {
    clickTambienExploto();
  } else if (pantalla=="exploto1") {
    clickExploto1();
  } else if (pantalla=="creditos") {
    clickCreditos();
  } else if (pantalla=="mejorNo") {
    clickMejorNo();
  } else if (pantalla=="salen") {
    clickSalen();
  } else if (pantalla=="caeRayo") {
    clickCaeRayo();
  } else if (pantalla=="soloSolinSolito") {
    clickSoloSolinSolito();
  } else if (pantalla=="gatos") {
    clickGatos();
  } else if (pantalla=="miedo") {
    clickMiedo();
  } else if (pantalla=="salida") {
    clickSalida();
  } else if (pantalla=="hierro") {
    clickHierro();
  } else if (pantalla=="persecucion") {
    clickPersecucion();
  } else if (pantalla=="casa") {
    clickCasa();
  } else if (pantalla=="nieve") {
    clickNieve();
  } else if (pantalla=="ataque") {
    clickAtaque();
  } else if (pantalla=="defensa") {
    clickDefensa();
  } else if (pantalla=="explotar2") {
    clickExplotar2();
  }
}
