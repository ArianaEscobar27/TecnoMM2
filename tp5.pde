import processing.sound.*;
SoundFile sonido;

//classes
Boton miBotonComenzar,miBotonCreditos,miBotonCamino1,miBotonCamino2,miBotonSiguiente,miBotonTambienExploto,miBotonMejorNo,miBotonVolverAlInicio,miBotonGolemHierro,miBotonGolemNieve;

//array tipografia y fondos
String pantalla;
PFont []tipografia=new PFont[2];
PImage presentacion;
PImage[]fondos=new PImage[19];
String[] relato=new String[18];
String[] creditos=new String[4];

//resizable de pantalla
float posXboton,posYboton;
float porcentajePosXboton(float valor){
return round(map(valor,0,800,0,width));
}
float porcentajePosYboton(float valor){
return round(map(valor,0,600,0,height));
}

float anchoBoton,altoBoton;
float porcentajeAnchoboton(float valor){
return round(map(valor,0,800,0,width));
}
float porcentajeAltoboton(float valor){
return round(map(valor,0,600,0,height));
}

float tamText;
float porcentajeTamText(float valor){
return round(map(valor,0,100,0,80));
}

float posXtext, posYtext;
float porcentajePosXtext(float valor){
return round(map(valor,0,800,0,width));
}
float porcentajePosYtext(float valor){
return round(map(valor,0,600,0,height));
}

void setup(){
  size(800, 600);
  surface.setResizable(true);
  
  sonido = new SoundFile(this,"Cat.wav");
   sonido.play();
   sonido.loop();
 
 //clases botones
  miBotonComenzar= new Boton(300,250,196,40,"COMENZAR",400,277);
  miBotonCreditos=new Boton(300,350,196,40,"CREDITOS",400,377);
  miBotonCamino1=new Boton(75,305,196,40,"CAMINO 1",170,330);
  miBotonCamino2=new Boton(500,273,196,40,"CAMINO 2",600,300);
  miBotonSiguiente=new Boton(550,450,196,40,"SIGUIENTE",650,475);
  miBotonTambienExploto=new Boton(550,300,196,40,"¿TAMBIEN EXPLOTO?",650,325);
  miBotonMejorNo=new Boton(550,400,196,40,"MEJOR NO",650,425);
  miBotonVolverAlInicio=new Boton(300,450,196,40,"VOLVER AL INICIO",400,474);
  miBotonGolemHierro=new Boton(100,450,196,40,"GOLEM DE HIERRO",200,475);
  miBotonGolemNieve=new Boton(490,450,196,40,"GOLEM DE NIEVE",588,475);
  
  
  
  textAlign(CENTER);
  
  posXboton=porcentajePosXboton(300);
  posYboton=porcentajePosYboton(250);
  anchoBoton=porcentajeAnchoboton(196);
  altoBoton=porcentajeAltoboton(40);
  
  tamText=porcentajeTamText(10);
  posXtext=porcentajePosXtext(width/2);
  posYtext=porcentajePosYtext(277);
  
  pantalla="presentacion";
  presentacion=loadImage("presentacion.png");
  
  //tipografias array
  tipografia[0]=loadFont("Minecraft-48.vlw");//texto
  tipografia[1]=loadFont("Minecraft-z2font-48.vlw");//titulo
  
  //img de fondo cargaen array
fondos[0]=loadImage("0.png");//spawneo
fondos[1]=loadImage("1.png");//masCrepeers
fondos[2]=loadImage("1a.png");//quienExplotaMas;
fondos[3]=loadImage("1a1.png");//tambienExploto;
fondos[4]=loadImage("1a2.png");//exploto1;
fondos[5]=loadImage("1b.png");//noQuiereExplotar;
fondos[6]=loadImage("1b1.png");//salen;
fondos[7]=loadImage("1b2.png");//caeRayo;
fondos[8]=loadImage("1b3.png");//solo;
fondos[9]=loadImage("2.png");//gatos;
fondos[10]=loadImage("2a.png");//miedo;
fondos[11]=loadImage("2b.png");//salida;
fondos[12]=loadImage("2b2.png");//hierro;
fondos[13]=loadImage("2b2a.png");//persecucion;
fondos[14]=loadImage("2b2b.png");//casa;
fondos[15]=loadImage("2b1.png");//nieve;
fondos[16]=loadImage("2b1a.png");//ataque;
fondos[17]=loadImage("2b1b.png");//defensa;
fondos[18]=loadImage("2b1c.png");//explotar2;

//relatos array
relato[0]="Un creeper spawnea en una cueva con dos caminos.";
relato[1]="Beto se encuentra con otro grupo de Crepeers \n y quiere hacer amigos.";
relato[2]="Este grupo de Crepeers querian saber quien era el \n que podia destruir mas bloques al explotar.";
relato[3]="Beto tambien queria jugar y...";
relato[4]="GANO";
relato[5]="Uno de los crepeers no quiere explotar.\n Entonces deciden buscar juntos la salida.";
relato[6]="Al salir de la cueva encuentran nuevos amigos.";
relato[7]="Pero a Beto le cae un rayo y se \n convierte en un crepeer electrico. \n Todos se asustan y huyen.";
relato[8]="Beto queda Solo Solin Solito";
relato[9]="Beto se encuentra con un grupo de gatos.";
relato[10]="Los gatos le dan miedo y sale huyendo.";
relato[11]="Despues de caminar un rato logra salir y encuentra...";
relato[12]="Una aldea con un Golem de hierro protector.";
relato[13]="El Golem comenzo a perseguirlo para atacarlo.";
relato[14]="Finalmente encontro una cueva donde quedarse.";
relato[15]="Con unos Golem de Nieve";
relato[16]="Que comienzan a atacarlo con bolas de nieve";
relato[17]="Para defenderse solo puede...";

//Creditos texto array
creditos[0]="Personajes\n\nProtagonista-Beto\nGrupo de Crepeers-Los Explosivos\nAmigo-Toto\nSkeleto-Huesitos\nZombie-Bob\nGrupo de Gatos-Los Zarpas\nGrupo de Golem-Calabacines\nGolem de Hierro-Larry";
creditos[1]="Agradecimiento\n\nA los aldeanos de la\n aldea del Sur";
creditos[2]="Ningun mob fue herido durante el rodaje de estas escenas";
creditos[3]="Realizado por Ariana Escobar";
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
  }else if (pantalla=="mejorNo") {
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
