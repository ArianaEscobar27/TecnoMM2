void exploto1() {
   pantalla(fondos[4], relato[4]);
  //boton creditos
  dibujarBotones(575,550,196,40,"CREDITOS",670,577);
}

 

void clickExploto1() {
  if (clickEnBoton(575,550,196,40)) {
    pantalla="creditos";
  }
}
