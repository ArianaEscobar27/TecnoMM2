void dibujarBotones(float x, float y, float ancho, float alto, String accion,float xAccion , float yAccion){
  pushStyle();
  textFont(tipografia[0]);
  textSize( 17 );
  fill(100);
  rect( x , y,ancho,alto);
  fill(255);
  text(accion, xAccion,yAccion);
  popStyle();
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
  textSize(20);
  fill(255);
  text(relato, 400,550);

}
