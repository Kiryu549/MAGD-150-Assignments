boolean dank = false;

class Ravioli {
  int y;
  PImage ravioli;

  Ravioli() {
    y = 0;
  }
  void display() {
    ravioli = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832453/e5cb21e8-a37d-11e5-9eb1-86f07dbb9cb6.jpg");
    image(ravioli, 0, 0);
  }
}

class Pocketoli {
  int y;
  PImage pocketoli;
  
  Pocketoli() {
    y = 0;
  }
  void display() {
    pocketoli = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832485/3df23780-a37e-11e5-9487-8a9f4eeb5af0.jpg");
    image(pocketoli,0,0);
  }
  
}

Ravioli myRavioli;
Pocketoli myPocketoli;
void setup() {
  size(960, 960);
  myRavioli = new Ravioli();
  myPocketoli = new Pocketoli();
}

void draw() {
  if (dank == false) {
  myRavioli.display();
  }
  if (dank == true) {
    myPocketoli.display();
  }
}
void keyPressed(){
  dank = true;
  background(255);
  fill(0);
  textSize(65);
  text("What's in the pocketoli?", 10, 800);
}
