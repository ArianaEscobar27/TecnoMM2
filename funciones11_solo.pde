void soloSolinSolito() {
   pantalla(fondos[8], relato[8]);
  //boton creditos
  dibujarBotones(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CREDITOS", porcentajePosXtext(670),porcentajePosYtext(577));

}



void clickSoloSolinSolito() {
  if (clickEnBoton(porcentajePosXboton(575),porcentajePosYboton(550),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
