void tambienExploto() {
   pantalla(fondos[3], relato[3]);
  //boton siguiente
  dibujarBotones(550,450,196,40,"SIGUIENTE", 650,475);
}



void clickTambienExploto() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="exploto1";
  }
}
