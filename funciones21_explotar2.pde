void explotar2() {
  image(explotar2, 0, 0, width, height);
  //boton creditos
  image(botones, 575, 550);
  textFont(texto);
  textSize(19);
  fill(255);
  text("CREDITOS", 670, 577);
}

void clickExplotar2() {
  if ((mouseX>575)&&(mouseX<575+196)&&(mouseY>550)&&(mouseY<550+40)) {
    pantalla="creditos";
  }
}
