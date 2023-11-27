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
