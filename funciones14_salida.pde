void salida() {
   pantalla(fondos[11], relato[11]);
  //botones
  //boton golem de hierro
    miBotonGolemHierro.actualizar();
  //boton golem de nieve
  miBotonGolemNieve.actualizar();
}
void clickSalida() {
  //boton camino 1
  if (clickEnBoton(porcentajePosXboton(100),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="hierro";
    //boton camino 2
  } else if (clickEnBoton(porcentajePosXboton(490),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="nieve";
}
