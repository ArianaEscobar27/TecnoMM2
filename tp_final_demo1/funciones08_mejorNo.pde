void mejorNo() {
   pantalla(fondos[5], relato[5]);
  //boton siguiente
    dibujarBotones(550,450,196,40,"SIGUIENTE", 650,475);
}



void clickMejorNo() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="salen";
  }
}
