void exploto1() {
   pantalla(fondos[4], relato[4]);
  //boton creditos
 miBotonCreditos.actualizar();
}

 

void clickExploto1() {
  if (clickEnBoton(porcentajePosXboton(300),porcentajePosYboton(350),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
  }
}
