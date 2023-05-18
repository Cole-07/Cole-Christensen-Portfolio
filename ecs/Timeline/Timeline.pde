// Cole Christensen | April 6, 2023 | Timeline 

void setup() {
  size(950,400);
}

void draw() {
  background(#25CB95);
  drawRef();
    histEvent(120,200,"Jan 9, 1944",true, "Jimmy Page is born in Heston, England");
    histEvent(295,300,"Mar 3, 1957",false, "Jimmy page joins a small garage band \n on the BBC's all your own");
    histEvent(450,200,"Feb 5, 1963",true, "Jimmy Page becomes a session guitarist, \n featured on The Kinks, The Who, David Bowie and many more");
    histEvent(535,300,"May 6, 1965",false, "Jimmy page joins the Yardbirds along with Jeff Beck");
    histEvent(625,200,"Dec 31, 1968",true, "Jimmy Page forms Led Zeppelin");
    histEvent(700,300,"Jan 12, 1969",false, "Only 14 days after the band was formed, Led Zeppelin \n released their first album, Led Zeppelin 1. ");
    histEvent(725,200,"Oct 22, 1969",true, "Led Zeppelin 2 is released, one of the most influential albums of all time");
    histEvent(800,300,"Nov 8, 1971",false, "In the top 3 most influential albums of all time, Led Zeppelin 4 was released");

}

void drawRef() {
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("Timeline of Jimmy Page's Life and Impact On Music", width/2, 60);
    textSize(15);
    text("By - Cole Christensen", width/2, 80);
      strokeWeight(3);
      line(50, 250, 900, 250);
        strokeWeight(3);
        line(50, 245, 50, 255);
        line(180, 245, 180, 255);
        line(340, 245, 340, 255);
        line(750, 245, 750, 255);
        line(900, 245, 900, 255);
            textSize(10);
            text("1940", 50, 265);
            text("1950", 180, 265);
            text("1960", 340, 265);
            text("1970", 750, 265);
            text("1980", 900, 265);

}

void histEvent(int x , int y, String title, boolean top, String detail) {
  if(top == true) {
    strokeWeight(1);
   line(x,y,x-20,y+50);
  }  else {
    strokeWeight(1);
    line(x,y,x-20,y-50);
  }
    rectMode(CENTER);
     if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    fill(200);
     } else {
        fill(222);
     }
    strokeWeight(1);
    rect(x,y,100,30,7);
      fill(0);
      text(title,x,y+3);
 if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
  text(detail, width/2, 370);
 }
}
