void tambienExploto() {
   pantalla(fondos[3], relato[3]);
  //boton siguiente
    miBotonSiguiente.actualizar();
}



void clickTambienExploto() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="exploto1";
  }
}
