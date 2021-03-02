void creditos() {
  image(presentacion, 0, 0, width, height);
  //boton volver al inicio
  dibujarBotones(300,450,196,40,"VOLVER AL INICIO",400,474);



  //info creditos
  pushStyle();
  textFont(tipografia[0]);
  textSize(18);
  text(creditos[0],230,100);
  text(creditos[1], 600,180);
  text(creditos[2],400,400);
  text(creditos[3],400,550);
  popStyle();
  
}

void clickCreditos() {
  if (clickEnBoton(300,450,196,40)) {
    pantalla="presentacion";
  }
}
