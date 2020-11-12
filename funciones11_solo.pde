void soloSolinSolito() {
   pantalla(fondos[8], relato[8]);
  //boton creditos
 miBotonCreditos.actualizar();

}



void clickSoloSolinSolito() {
  if (clickEnBoton(porcentajePosXboton(300),porcentajePosYboton(350),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
