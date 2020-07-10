void masCrepeers() {
  image(masCrepeers, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Beto se encuentra con otro grupo de Crepeers \n y quiere hacer amigos.", width/2, 550);
  //boton siguiente
  image(botones, 550, 450);
  textFont(texto);
  textSize(17);
  fill(255);
  text("SIGUIENTE", 650, 475);
}

void clickMasCrepeers() {
  if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="quienExplotaMas";
  }
}
