void spawneoDeCrepeer() {
  pantalla(fondos[0], relato[0]);
  //botones de camino 1 o 2
  //boton camino 1 crepeers
   dibujarBotones(75, 305,196,40,"CAMINO 1",170,330);
  //boton camino 2 gatos
  dibujarBotones(500, 273,196,40,"CAMINO 2",600,300);
}


  

void clickSpawneoDeCrepeers() {

  //boton camino 1
  if (clickEnBoton(75, 305,196,40)) {
    pantalla="masCrepeers";
    //boton camino 2
  } else if (clickEnBoton(500,273,196,40))
    pantalla="gatos";
}
