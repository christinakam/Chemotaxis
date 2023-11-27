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

class Bacterium {
  int x, y;
  int r, g, b;
  Bacterium(int meow, int woof) {
    x = meow;
    y = woof;
    r= (int)(Math.random()*256);
    g= (int)(Math.random()*256);
    b= (int)(Math.random()*256);
  }
  void move() {
    
    int incX, incY;
    incX = aFood.x - x;
    incY = aFood.y - y;
    if (aFood.x - x > 0) {
      incX = 2;
    } 
    else {
      incX = -2;
    }
    if (aFood.y - y >0) {
      incY = 2;
    }
    else {
      incY = -2;
    }
      
    x += incX * ((int)(Math.random()*4)-1);
    y += incY * ((int)(Math.random()*4)-1);
  }
  void show() {
    fill(r, g, b, 150);
    ellipse(x, y, 10, 10);
  }
}
