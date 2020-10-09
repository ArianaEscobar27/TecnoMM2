void salida() {
   pantalla(fondos[11], relato[11]);
  //botones
  //boton golem de hierro
    dibujarBotones(porcentajePosXboton(100),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"GOLEM DE HIERRO", porcentajePosXtext(200),porcentajePosYtext(475));
  //boton golem de nieve
  dibujarBotones(porcentajePosXboton(490),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40),"GOLEM DE NIEVE", porcentajePosXtext(588),porcentajePosYtext(475));
}
void clickSalida() {
  //boton camino 1
  if (clickEnBoton(porcentajePosXboton(100),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="hierro";
    //boton camino 2
  } else if (clickEnBoton(porcentajePosXboton(490),porcentajePosYboton(450),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="nieve";
}
