PImage fondo;
PFont info;

//1 titulo
PImage titulo;
float posyTitulo;
float posxTitulo;
float anchoT;
float altoT;

//2 creadores
String creadores;
float posxCreadores;

//3 programadores
String programadores;
float posxProgramadores;

//4 Compo y Artista
String compoArt;
float posxCompoArt;

//5 Distribuidores
String distribuidores;
float posxDistribuidores;

void setup(){
  size(800,600);
fondo= loadImage("fondo-tierra.png");
info= loadFont("Minecraft-48.vlw");
textFont (info);

//1 titulo
titulo= loadImage("minecraft.png");
posyTitulo=520.0;
posxTitulo=200.0;
anchoT=400.0;
altoT=250.0;

//2 creadores
posxCreadores=2000;
creadores="Creadores\n Markus Persson (Notch)\n Jens Bergensten (Jeb)\n Nathan Adams (Dinnerbone)";

//3 programadores
programadores= "Programadores\nMojang Studio\nXbox Game Studio\nTelltale Games\n4j studios\nOther Ocean Interactive\nDouble Eleven";
posxProgramadores=-1500;

//4 Compo y Artista
compoArt= ("Compositor\nDaniel Rosenfeld (c418)\nArtistas\nKristoffer Zetterstrand\nMarkus Toivonen (Junkboy)");
posxCompoArt=3000;

//5 Distribuidores
distribuidores= ("Distribuidores\nMojang\nXbox Game Studios\nSony Computer Entertainment\nNintendo eShop");
posxDistribuidores=-2400;
}

void draw(){
  //1 titulo
image(fondo,0,0,width,height);
image(titulo,posxTitulo,posyTitulo,anchoT,altoT);
posyTitulo=posyTitulo-2.5;
posxTitulo=posxTitulo-0.3;
anchoT=anchoT+0.6;
altoT=altoT+0.6;

//2 creadores
textSize(20);
textAlign(CENTER);
textLeading(30);
text(creadores,posxCreadores,200);
posxCreadores=posxCreadores-4;

//3 programadores
text(programadores,posxProgramadores,370);
posxProgramadores=posxProgramadores+4;

//4 Compo y Artista
text(compoArt,posxCompoArt,100);
posxCompoArt=posxCompoArt-4;

//5 Distribuidores
text(distribuidores,posxDistribuidores,350);
posxDistribuidores=posxDistribuidores+4;

}
