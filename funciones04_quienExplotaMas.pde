void quienExplotaMas() {
   pantalla(fondos[2], relato[2]);
  //botones
 dibujarBotones(porcentajePosXboton(550), porcentajePosYboton(300),porcentajeAnchoboton(196),porcentajeAltoboton(40),"¿TAMBIEN EXPLOTO?",  porcentajePosXtext(650),porcentajePosYtext(325));
 dibujarBotones(porcentajePosXboton(550),porcentajePosYboton(400),porcentajeAnchoboton(196),porcentajeAltoboton(40),"MEJOR NO",  porcentajePosXtext(650),porcentajePosYtext(425));

}


void clickQuienExplotaMas() {
  //boton tambien exploto
  if (clickEnBoton(porcentajePosXboton(550), porcentajePosYboton(300),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="tambienExploto";
    //boton mejor no
  } else if (clickEnBoton(porcentajePosXboton(550),porcentajePosYboton(400),porcentajeAnchoboton(196),porcentajeAltoboton(40)))
    pantalla="mejorNo";
}
