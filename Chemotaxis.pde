Bacterium[] bacteria;
int nob = 100; 
Food aFood;

void setup () {
  size(400, 600);
  bacteria = new Bacterium[nob];
  aFood = new Food(mouseX, mouseY);
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i] = new Bacterium(width/2, height/2);
  }
}
void draw() {
  background(255);
  aFood.show();
  for (int i = 0; i< bacteria.length; i++) {
    bacteria[i].show();
    bacteria[i].move();
  }
}
void mouseClicked() {
  aFood = new Food(mouseX, mouseY);
}
