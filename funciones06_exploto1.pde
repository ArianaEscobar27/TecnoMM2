void exploto1() {
   pantalla(fondos[4], relato[4]);
  //boton creditos
  dibujarBotones(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CREDITOS", porcentajePosXtext(670),porcentajePosYtext(577));
}

 

void clickExploto1() {
  if (clickEnBoton(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
