void salen() {
   pantalla(fondos[6], relato[6]);
  //boton siguiente
   dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE", porcentajePosXtext(650),porcentajePosYtext(475));
}



void clickSalen() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="caeRayo";
  }
}
