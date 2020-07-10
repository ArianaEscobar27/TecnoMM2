void spawneoDeCrepeer() {
  image(spawneo, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Un creeper spawnea en una cueva con dos caminos.", width/2, 550);

  //botones de camino 1 o 2
  //boton camino 1 crepeers
  image(botones, 75, 305);
  textFont(texto);
  textSize(17);
  fill(255);
  text("CAMINO 1", 170, 330);
  //boton camino 2 gatos
  image(botones, 500, 273);
  textFont(texto);
  textSize(17);
  fill(255);
  text("CAMINO 2", 600, 300);
}

void clickSpawneoDeCrepeers() {

  //boton camino 1
  if ((mouseX>75)&&(mouseX<75+196)&&(mouseY>305)&&(mouseY<305+40)) {
    pantalla="masCrepeers";
    //boton camino 2
  } else if ((mouseX>500)&&(mouseX<500+196)&&(mouseY>273)&&(mouseY<273+40))
    pantalla="gatos";
}
