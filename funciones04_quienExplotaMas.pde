void quienExplotaMas() {
   pantalla(fondos[2], relato[2]);
  //botones
  //tambien exploto
 miBotonTambienExploto.actualizar();
 //mejor no
miBotonMejorNo.actualizar();

}


void clickQuienExplotaMas() {
  //boton tambien exploto
  if (clickEnBoton(porcentajePosXboton(550), porcentajePosYboton(300),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="tambienExploto";
    //boton mejor no
  } else if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(400),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="mejorNo";
}
