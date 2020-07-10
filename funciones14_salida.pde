void salida() {
  image(salida, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Despues de caminar un rato logra salir y encuentra...", width/2, 535);
  //botones
  //boton golem de hierro
  textSize(17);
  fill(255);
  image(botones, 100, 450);
  text("GOLEM DE HIERRO", 200, 475);
  //boton golem de nieve
  image(botones, 490, 450);
  text("GOLEM DE NIEVE", 588, 475);
}
void clickSalida() {

  //boton camino 1
  if ((mouseX>100)&&(mouseX<100+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="hierro";
    //boton camino 2
  } else if ((mouseX>490)&&(mouseX<490+196)&&(mouseY>450)&&(mouseY<450+40))
    pantalla="nieve";
}
