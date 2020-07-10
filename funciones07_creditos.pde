void creditos() {
  image(presentacion, 0, 0, width, height);
  //boton volver al inicio
  image(botones, 300, 450);
  textFont(texto);
  textSize(15);
  fill(255);
  text("VOLVER AL INICIO", width/2, 474);
  //info creditos
  textSize(18);
  text("Personajes\n\nProtagonista-Beto\nGrupo de Crepeers-Los Explosivos\nAmigo-Toto\nSkeleto-Huesitos\nZombie-Bob\nGrupo de Gatos-Los Zarpas\nGrupo de Golem-Calabacines\nGolem de Hierro-Larry",230,100);
  text("Agradecimiento\n\nA los aldeanos de la\n aldea del Sur", 600,180);
  text("Ningun mob fue herido durante el rodaje de estas escenas",width/2,400);
  text("Realizado por Ariana Escobar",width/2,550);
  
  
}

void clickCreditos() {
  if ((mouseX>300)&&(mouseX<300+196)&&(mouseY>450)&&(mouseY<450+40)) {
    pantalla="presentacion";
  }
}
