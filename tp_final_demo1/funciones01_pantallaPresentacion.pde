void pantallaPresentacion() {
  image(presentacion, 0, 0, width, height);
  //titulo
  pushStyle();
  textFont(tipografia[1]);
  fill(93);
  textSize(37);
  text("Las aventuras y \n desventuras de Beto", 405, 79);
  fill(200);
  text("Las aventuras y \n desventuras de Beto", 403,77);
  fill(140);
  text("Las aventuras y \n desventuras de Beto", 400,74);
  popStyle();
  //botones de comenzar y creditos
  dibujarBotones(300, 250,196, 40,"COMENZAR",400,277);
  dibujarBotones(300, 350,196,40,"CREDITOS",400,377);
}


void clickPantallaPresentacion() {
  //boton comenzar
  if (clickEnBoton(300, 250, 196, 40)) {
    pantalla="spawneoDeCrepeer";
    //boton creditos
  } else if (clickEnBoton(300, 350,196,40)) {
    pantalla="creditos";
}
}
