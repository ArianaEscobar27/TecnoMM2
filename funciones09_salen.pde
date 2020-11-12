void salen() {
   pantalla(fondos[6], relato[6]);
  //boton siguiente
   miBotonSiguiente.actualizar();
}



void clickSalen() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="caeRayo";
  }
}
