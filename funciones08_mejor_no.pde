void mejorNo() {
  image(noQuiereExplotar, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Uno de los crepeers no quiere explotar.\n Entonces deciden buscar juntos la salida.", width/2, 550);
  //boton siguiente
  image(botones, 550, 450);
  textFont(texto);
  textSize(17);
  fill(255);
  text("SIGUIENTE", 650, 475);
}

void clickMejorNo() {
  if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="salen";
  }
}
