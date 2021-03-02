void persecucion() {
   pantalla(fondos[13], relato[13]);
  //boton siguiente
  dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE", porcentajePosXtext(650),porcentajePosYtext(475));
}

void clickPersecucion() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="casa";
  }
}
