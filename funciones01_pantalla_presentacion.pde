void pantallaPresentacion() {
  image(presentacion, 0, 0, width, height);
  //titulo
  pushStyle();
  textFont(titulo);
  fill(93);
  textSize(37);
  text("Las aventuras y \n desventuras de Beto", width/2+5, 79);
  fill(200);
  text("Las aventuras y \n desventuras de Beto", width/2+3, 77);
  fill(140);
  text("Las aventuras y \n desventuras de Beto", width/2, 74);
  popStyle();
  //botones de comenzar y creditos
  textFont(texto);
  textSize(17);
  fill(255);
  image(botones, 300, 250);
  text("COMENZAR", width/2, 277);
  image(botones, 300, 350);
  text("CREDITOS", width/2, 377);
}

void clickPantallaPresentacion() {
  //boton comenzar
  if ((mouseX>300)&&(mouseX<300+196)&&(mouseY>250)&&(mouseY<250+40)) {
    pantalla="spawneoDeCrepeer";
    //boton creditos
  } else if ((mouseX>300)&&(mouseX<300+196)&&(mouseY>350)&&(mouseY<350+40))
    pantalla="creditos";
}
