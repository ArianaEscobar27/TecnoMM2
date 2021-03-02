void miedo() {
   pantalla(fondos[10], relato[10]);
  //boton siguiente
  dibujarBotones(550,450,196,40,"SIGUIENTE",650,475);
}

void clickMiedo() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="salida";
  }
}
