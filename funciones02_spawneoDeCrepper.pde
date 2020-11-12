void spawneoDeCrepeer() {
  pantalla(fondos[0], relato[0]);
  //botones de camino 1 o 2
  //boton camino 1 crepeers
  miBotonCamino1.actualizar();
  //boton camino 2 gatos
  miBotonCamino2.actualizar();
}


  

void clickSpawneoDeCrepeers() {

  //boton camino 1
  if (clickEnBoton(porcentajePosXboton(75), porcentajePosYboton(305),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="masCrepeers";
    //boton camino 2
  } else if (clickEnBoton(porcentajePosXboton(500), porcentajePosYboton(273),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="gatos";
}
