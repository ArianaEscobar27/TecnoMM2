void spawneoDeCrepeer() {
  pantalla(fondos[0], relato[0]);
  //botones de camino 1 o 2
  //boton camino 1 crepeers
   dibujarBotones(porcentajePosXboton(75), porcentajePosYboton(305),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CAMINO 1",porcentajePosXtext(170),porcentajePosYtext(330));
  //boton camino 2 gatos
  dibujarBotones(porcentajePosXboton(500), porcentajePosYboton(273),porcentajeAnchoboton(196),porcentajeAltoboton(40),"CAMINO 2",porcentajePosXtext(600),porcentajePosYtext(300));
}


  

void clickSpawneoDeCrepeers() {

  //boton camino 1
  if (clickEnBoton(porcentajePosXboton(75), porcentajePosYboton(305),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="masCrepeers";
    //boton camino 2
  } else if (clickEnBoton(porcentajePosXboton(500), porcentajePosYboton(273),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="gatos";
}
