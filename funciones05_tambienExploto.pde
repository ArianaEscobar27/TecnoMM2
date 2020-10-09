void tambienExploto() {
   pantalla(fondos[3], relato[3]);
  //boton siguiente
  dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE",  porcentajePosXtext(650),porcentajePosYtext(475));
}



void clickTambienExploto() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="exploto1";
  }
}
