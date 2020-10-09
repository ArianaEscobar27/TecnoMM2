void miedo() {
   pantalla(fondos[10], relato[10]);
  //boton siguiente
  dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE", porcentajePosXtext(650),porcentajePosYtext(475));
}

void clickMiedo() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="salida";
  }
}
