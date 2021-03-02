void caeRayo() {
   pantalla(fondos[7], relato[7]);
  //boton siguiente
   dibujarBotones(550,450,196,40,"SIGUIENTE",650,475);

}



void clickCaeRayo() {
  if (clickEnBoton(550,450,196,40)) {
    pantalla="soloSolinSolito";
  }
}
