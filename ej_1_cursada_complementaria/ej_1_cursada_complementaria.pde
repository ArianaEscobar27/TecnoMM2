void setup() {
  size(300, 200);
}

void draw() {
  for (int i=0; i<6; i++) {
    for(int y=0; y<4;y++){
    if (mouseX>i*50 && mouseX<i*50+50 && mouseY>y*50 && mouseY<y*50+50) {
      fill (255,0,0);
    } else {
      fill(255);
    }
    rect(i*50, y*50, 50, 50);
  }
  }
}
