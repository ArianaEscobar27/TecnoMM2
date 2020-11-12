void casa() {
   pantalla(fondos[14], relato[14]);
  //boton creditos
  miBotonCreditos.actualizar();
}

void clickCasa() {
  if (clickEnBoton(porcentajePosXboton(300),porcentajePosYboton(350),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
