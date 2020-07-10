void nieve() {
  image(nieve, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Con unos Golem de Nieve", width/2, 535);
  //boton siguiente
  image(botones, 550, 450);
  textFont(texto);
  textSize(17);
  fill(255);
  text("SIGUIENTE", 650, 475);
}

void clickNieve() {
  if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="ataque";
  }
}
