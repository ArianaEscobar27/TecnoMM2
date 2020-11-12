void caeRayo() {
   pantalla(fondos[7], relato[7]);
  //boton siguiente
   miBotonSiguiente.actualizar();

}



void clickCaeRayo() {
  if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="soloSolinSolito";
  }
}
