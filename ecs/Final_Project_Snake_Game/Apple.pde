class Apple{
  int x,y;
  PImage Apple;
  
  Apple() {
    x = width/2;
    y = height/2 + 44;
    Apple = loadImage("Apple.gif");
  }
  
  void display() {
    imageMode(CENTER);
    Apple.resize(60,60);
    image(Apple,x,y);
  }
  
  void move(char dir) { 
    if(dir == 'w') {
      y = y - 20;
    } else if(dir == 'a') {
      x = x - 20;
    } else if(dir == 's') {
      y = y + 20;
    } else if(dir == 'd') {
      x = x + 20;
    } 
  }
}
