void defensa() {
   pantalla(fondos[17], relato[17]);
  //boton siguiente
  dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE", porcentajePosXtext(650),porcentajePosYtext(475));
}

void clickDefensa() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="explotar2";
  }
}
