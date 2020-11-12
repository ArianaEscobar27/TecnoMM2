void explotar2() {
  image(fondos[18], 0, 0, width, height);
  //boton creditos
  miBotonCreditos.actualizar();
}

void clickExplotar2() {
  if (clickEnBoton(porcentajePosXboton(300),porcentajePosYboton(350),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
