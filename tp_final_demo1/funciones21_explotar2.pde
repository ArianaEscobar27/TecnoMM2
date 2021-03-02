void explotar2() {
  image(fondos[18], 0, 0, width, height);
  //boton creditos
  dibujarBotones(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CREDITOS", porcentajePosXtext(670),porcentajePosYtext(577));
}

void clickExplotar2() {
  if (clickEnBoton(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
