void hierro() {
   pantalla(fondos[12], relato[12]);
  //boton siguiente
 miBotonSiguiente.actualizar();
}

void clickHierro() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="persecucion";
  }
}
