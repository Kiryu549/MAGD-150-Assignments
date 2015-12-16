int posX = 500;
int posY = height/2;
int movementSize = 5;

float gravity = 0.7;


void setup(){
  size(1150,720);
}

void draw(){
  background(0,50,0);
  println(posX);
  
  updateBall();
  
  noFill();
  stroke(255);
  rect(50,50,1050,625);
  fill(0,50,0);
  ellipse(575,360,150,150);
  
  line(575,50,575,675);
  
   ellipse(125,380,150,150);
  
  ellipse(1025,380,150,150);
  
  rect(50,225,100,300);
  
  rect(1000,225,100,300);
  
  rect(50,300,50,150);
  
  rect(1050,300,50,150);
  
  
  
}

void updateBall(){
  fill(255);
  if(posX+25 >= width){
    movementSize = movementSize * -1;
  } else if (posX-25 <= 0){
    movementSize = movementSize * -1;
  }
  posX = posX + movementSize;
  ellipse(posX, posY, 50, 50);
}
  
  
  void keyPressed(){
    fill(255);
    textSize(48);
    text("GOAL",300,50);
  }
