void exploto1() {
  image(exploto1, 0, 0, width, height);
  textFont(texto);
  textSize(100);
  fill(30);
  text("GANO", width/2, height/2);
  //boton creditos
  image(botones, 575, 550);
  textFont(texto);
  textSize(19);
  fill(255);
  text("CREDITOS", 670, 577);
}

void clickExploto1() {
  if ((mouseX>575)&&(mouseX<575+196)&&(mouseY>550)&&(mouseY<550+40)) {
    pantalla="creditos";
  }
}
