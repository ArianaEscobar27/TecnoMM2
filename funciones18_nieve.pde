void nieve() {
   pantalla(fondos[15], relato[15]);
  //boton siguiente
 miBotonSiguiente.actualizar();
}

void clickNieve() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="ataque";
  }
}
