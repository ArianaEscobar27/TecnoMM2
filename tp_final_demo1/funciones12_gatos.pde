void gatos() {
   pantalla(fondos[9], relato[9]);
  //boton siguiente
  dibujarBotones(550,450,196,40,"SIGUIENTE",650,475);
}

void clickGatos() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="miedo";
  }
}
