void pantallaPresentacion() {
  image(presentacion, 0, 0, width, height);
  //titulo
  pushStyle();
  textFont(tipografia[1]);
  fill(93);
  textSize(porcentajeTamText(37));
  text("Las aventuras y \n desventuras de Beto", porcentajePosXtext(405), porcentajePosYtext(79));
  fill(200);
  text("Las aventuras y \n desventuras de Beto", porcentajePosXtext(403),porcentajePosYtext(77));
  fill(140);
  text("Las aventuras y \n desventuras de Beto", porcentajePosXtext(400),porcentajePosYtext(74));
  popStyle();
  //botones de comenzar y creditos
  miBotonComenzar.actualizar();
  miBotonCreditos.actualizar();
}


void clickPantallaPresentacion() {
  //boton comenzar
  if (clickEnBoton(porcentajePosXboton(300), porcentajePosYboton(250), porcentajeAnchoboton(196), porcentajeAltoboton(40))) {
    pantalla="spawneoDeCrepeer";
    //boton creditos
  } else if (clickEnBoton(porcentajePosXboton(300), porcentajePosYboton(350),porcentajeAnchoboton(196),porcentajeAltoboton(40))) {
    pantalla="creditos";
}
}
