void casa() {
  image(casa, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Finalmente encontro una cueva donde quedarse.", width/2, 535);
  //boton creditos
  image(botones, 575, 550);
  textFont(texto);
  textSize(19);
  fill(255);
  text("CREDITOS", 670, 577);
}

void clickCasa() {
  if ((mouseX>575)&&(mouseX<575+196)&&(mouseY>550)&&(mouseY<550+40)) {
    pantalla="creditos";
  }
}
