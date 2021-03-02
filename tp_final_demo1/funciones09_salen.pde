void salen() {
   pantalla(fondos[6], relato[6]);
  //boton siguiente
   dibujarBotones(550,450,196,40,"SIGUIENTE", 650,475);
}



void clickSalen() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="caeRayo";
  }
}
