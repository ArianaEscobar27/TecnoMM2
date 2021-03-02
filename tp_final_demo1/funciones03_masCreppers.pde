void masCrepeers() {
  pantalla(fondos[1], relato[1]);
  //boton siguiente
    dibujarBotones(550, 450,196,40,"SIGUIENTE",650,475);
}


void clickMasCrepeers() {
  if (clickEnBoton(550, 450,196,40)) {
    pantalla="quienExplotaMas";
  }
}
