PImage ayylmao;
int wordX;
int wordSpeed = 10;
int starX;
int starY;
int backgroundTrans;
int backgroundColor = 1;
boolean Trans = false;

void setup() {
  size(1200, 800);
  ayylmao = loadImage("https://cloud.githubusercontent.com/assets/16229366/11695278/fa89523a-9e73-11e5-8a71-0cb14e179e7f.jpg");
}

void draw() {
  
  if (backgroundColor == 1) {
    background(0);
  } else { 
    background(0, 0, 255);
  }
  image(ayylmao, 150, 0);

  
  wordX = wordX + wordSpeed;
  textSize(36);
  text("ayy lmao?", wordX, 100);
  if (wordX >= 1050) {
    wordSpeed = -10;
  } else if (wordX <= 0) {
    wordSpeed = 10;
  }
  
  
  stars();

  if(mousePressed){
    update();
  }
}

void stars() {
  starX = round(random(0, width));
  starY = round(random(0, height));
  for (int x=0; x < 100; x++) {
    stroke(255);
    strokeWeight(5);
    point(starX, starY);
  }
}

void update(){
  fill(0,0,255);
  rect(0,0,1200,800);
  fill(255);
  textSize(200);
  text("AYY LMAO!",70,400);

} 


void mousePressed() {
    update();
}
