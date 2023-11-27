class Food {
  int x, y;
  int r, g, b;
  int mySize;
  Food(int x_, int y_) {
    x = x_;
    y = y_;
    r= (int)(Math.random()*256);
    g= (int)(Math.random()*256);
    b= (int)(Math.random()*256);
  }
  void move() {
    x= 0;
    y= 0;
  }
  void show() {
    mySize = 10;
    fill(r, g, b, 150);
    rect(x, y, mySize, mySize);
  }
}
