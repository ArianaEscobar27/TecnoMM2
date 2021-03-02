void soloSolinSolito() {
   pantalla(fondos[8], relato[8]);
  //boton creditos
  dibujarBotones(575,550,196,40,"CREDITOS",670,577);

}



void clickSoloSolinSolito() {
  if (clickEnBoton(575,550,196,40)) {
    pantalla="creditos";
  }
}
