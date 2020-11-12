void masCrepeers() {
  pantalla(fondos[1], relato[1]);
  //boton siguiente
   miBotonSiguiente.actualizar();
}


void clickMasCrepeers() {
  if (clickEnBoton(porcentajePosXboton(550),  porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="quienExplotaMas";
  }
}
