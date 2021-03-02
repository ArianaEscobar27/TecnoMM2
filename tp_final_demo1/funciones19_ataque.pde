void ataque() {
   pantalla(fondos[16], relato[16]);
  //boton siguiente
  dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"SIGUIENTE", porcentajePosXtext(650),porcentajePosYtext(475));
}

void clickAtaque() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="defensa";
  }
}
