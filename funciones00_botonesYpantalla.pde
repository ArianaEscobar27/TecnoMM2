class Boton{
float x,y,ancho,alto;
String texto;
float xTexto, yTexto;

Boton(float posXboton, float posYboton, float anchoBoton, float altoBoton, String tamText,float posXtext , float posYtext ){
x=posXboton;
y=posYboton;
ancho=anchoBoton;
alto=altoBoton;
texto=tamText;
xTexto=posXtext;
yTexto=posYtext;

}

void actualizar(){
 dibujar();
 texto();
 
 }
void dibujar(){
fill(100);
rect(x,y,ancho,alto);

}

void texto(){
  textAlign(CENTER);
   textFont(tipografia[0]);
  textSize( porcentajeTamText(17) );
fill(255);
text(texto,xTexto,yTexto);
}

}


boolean clickEnBoton(float x,float y, float ancho, float alto){
if (mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto){
return true;
}else {
return false;
}
}

void pantalla(PImage fondo, String relato){
image(fondo, 0, 0, width, height);
  textFont(tipografia[0]);
  textSize(porcentajeTamText(20));
  fill(255);
  text(relato, porcentajePosXtext(400),porcentajePosYtext(550));

}
