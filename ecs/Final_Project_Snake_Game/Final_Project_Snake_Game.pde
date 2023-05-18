// Cole Christense | 25 April 2023 - 16 May 2023 | Snake Game
boolean play;
Apple a1;
Snake s1;
int score;
float snakeDist;

void setup() {
  size(700, 500);
  a1 = new Apple();
  s1 = new Snake();
  score = 0;
  play = false;
}

void draw() {
  snakeDist = dist(s1.x,s1.y,a1.x,a1.y);
  println(snakeDist);
  if (!play) {
    startScreen();
  } else {
    background(#07891B);
    drawBackground();
    infoPanel();
    a1.display();
    s1.display();

    if(snakeDist<25) {
      score = score +1;
      s1.x = int(random(50,700));
      s1.y = int(random(110,490));
    } 

    if (a1.y>490) {
      gameOver();
    } else if (a1.y<60) {
      gameOver();
    } else if (a1.x<25) {
      gameOver();
    } else if (a1.x>670) {
      gameOver();
    } 
    //you can change the win score from 30 to whatever you want
    else if (score == 30){
      gameOver2();
    }
  } 
}

void keyPressed() {
  if (key == 'w') {
    a1.move('w');
  } else if (key == 'a') {
    a1.move('a');
  } else if (key == 's') {
    a1.move('s');
  } else if (key == 'd') {
    a1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  fill(#32EA4F);
  rect(15, 60, 670, 430);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Snake Game", width/2, height/2);
  text("By Cole Christensen", width/2, height/2 +30);
  text("Press the space bar to start", width/2, height/2 +60);
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("Game Over", width/2, height/2);
  text("Score: " + score, width/2, height/2 +30);
  noLoop();
}

void infoPanel() {
  fill(#016411);
  rect(0, 0, width, 50);
  textSize(45);
  fill(#8BFA9C);
  text("Score: " + score, 100, 40);
}

void gameOver2() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(20);
  text("You Win", width/2, height/2);
  noLoop();
}
