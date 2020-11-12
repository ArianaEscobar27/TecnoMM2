void mejorNo() {
   pantalla(fondos[5], relato[5]);
  //boton siguiente
     miBotonSiguiente.actualizar();
}



void clickMejorNo() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="salen";
  }
}
