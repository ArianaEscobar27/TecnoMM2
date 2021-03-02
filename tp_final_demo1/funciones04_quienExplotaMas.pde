void quienExplotaMas() {
   pantalla(fondos[2], relato[2]);
  //botones
 dibujarBotones(550, 300,196,40,"¿TAMBIEN EXPLOTO?",650,32);
 dibujarBotones(550,400,196,4,"MEJOR NO",650,425);

}


void clickQuienExplotaMas() {
  //boton tambien exploto
  if (clickEnBoton(550, 300,196,40)) {
    pantalla="tambienExploto";
    //boton mejor no
  } else if (clickEnBoton(550,400,196,40))
    pantalla="mejorNo";
}
