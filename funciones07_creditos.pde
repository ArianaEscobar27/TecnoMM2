void creditos() {
  image(presentacion, 0, 0, width, height);
  //boton volver al inicio
  dibujarBotones(porcentajePosXboton(300),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"VOLVER AL INICIO", porcentajePosXtext(400),porcentajePosYtext(474));



  //info creditos
  pushStyle();
  textFont(tipografia[0]);
  textSize(porcentajeTamText(18));
  text(creditos[0],porcentajePosXtext(230),porcentajePosYtext(100));
  text(creditos[1], porcentajePosXtext(600),porcentajePosYtext(180));
  text(creditos[2],porcentajePosXtext(400),porcentajePosYtext(400));
  text(creditos[3],porcentajePosXtext(400),porcentajePosYtext(550));
  popStyle();
  
}

void clickCreditos() {
  if (clickEnBoton(porcentajePosXboton(300),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="presentacion";
  }
}
