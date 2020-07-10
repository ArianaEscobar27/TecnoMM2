void quienExplotaMas() {
  image(quienExplotaMas, 0, 0, width, height);
  textFont(texto);
  textSize(20);
  fill(255);
  text("Este grupo de Crepeers querian saber quien era el \n que podia destruir mas bloques al explotar.", width/2, 550);
  //botones
  textFont(texto);
  textSize(15);
  fill(255);
  image(botones, 550, 300);
  text("¿TAMBIEN EXPLOTO?", 650, 325);
  image(botones, 550, 400);
  text("MEJOR NO", 650, 425);
}

void clickQuienExplotaMas() {
  //boton tambien exploto
  if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>300)&&(mouseY<300+40)) {
    pantalla="tambienExploto";
    //boton mejor no
  } else if ((mouseX>550)&&(mouseX<550+196)&&(mouseY>400)&&(mouseY<400+40))
    pantalla="mejorNo";
}
