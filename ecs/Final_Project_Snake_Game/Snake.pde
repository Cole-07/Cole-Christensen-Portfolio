class Snake{
  int x,y;
  PImage Snake;
  
  Snake() {
    x = width/2 + 50;
    y = height/2;
    Snake = loadImage("Snake.gif");
  }
  
  void display() {
    imageMode(CENTER);
    Snake.resize(50,50);
    image(Snake,x,y);
  }
  
  void move() {
    random(height); 
    random(width);
  }
}
