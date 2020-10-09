void casa() {
   pantalla(fondos[14], relato[14]);
  //boton creditos
  dibujarBotones(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CREDITOS", porcentajePosXtext(670),porcentajePosYtext(577));
}

void clickCasa() {
  if (clickEnBoton(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
