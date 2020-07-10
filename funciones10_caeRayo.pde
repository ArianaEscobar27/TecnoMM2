void caeRayo() {
  image(caeRayo, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Pero a Beto le cae un rayo y se \n convierte en un crepeer electrico. \n Todos se asustan y huyen.", width/2, 535);
  //boton siguiente
  image(botones, 550, 450);
  textFont(texto);
  textSize(17);
  fill(255);
  text("SIGUIENTE", 650, 475);
}

void clickCaeRayo() {
  if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="soloSolinSolito";
  }
}
